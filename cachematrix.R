## script for R programming assignment 2
## njekin@gmail.com 6-4-2016

## create the special matrix.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(i) m <<- i
  getinverse <- function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Return a matrix that is the inverse of 'x', and store the calculated value.
cacheSolve <- function(x, ...) {
  
  m <- x$getinverse()
  if(!is.null(m)) {
      message("getting cached matrix inverse")
      return(m)
  } 
   
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
  
}

