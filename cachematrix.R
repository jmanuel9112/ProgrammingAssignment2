## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m  <- NULL
    set <- function(y, row = 2, col = 2) {                  #creates a 2x2 matrix by default
        x <<- matrix(y, nrow = row, ncol = col)
    }
    get <- function() x                                     #if called prints the new matrix
    setinverse <- function(solve) m <<- solve           
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



## Write a short comment describing this function
## Computes the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
    m <- x$getinverse()  
    # if the inverse has been calculated the
    # following code will be executed
    if(!is.null(m)) {                                      
        message("getting cached data")
        return(m)
    }
    # the following code will calculate the matrix inverse
    # and return it
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
