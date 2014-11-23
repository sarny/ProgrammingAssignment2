## makeCacheMatrix function

makeCacheMatrix <- function(x = matrix()) {
  
## setting the matrix value

  m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
}

## get the matrix value
get <- function() x

## set the inverse matrix
setmatrix <- function(solve) m <<- solve
getmatrix <- function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
## getting the inverse matrix
    m <- x$getmatrix()

## check if it already is copmuted
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }

## if not, get the inverse matrix
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
}
