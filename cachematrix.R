## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  y <- NULL
  get <- function() x
  setinverse <- function(i) y <<- i
  getinverse <- function() y
  list(get = get,setinverse=setinverse
       ,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  n <- x$get()
  i <- solve(n)
  x$setinverse(i)
  i
}
