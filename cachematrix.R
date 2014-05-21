## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    set <- function(y, row = 2, col = 2) {                  #creates a 2x2 matrix by default
        x <<-matrix(y, nrow = row, ncol = col)
    }
    get <- function() x
    inverse  <- function() solve(x)
    list(set = set, get = get,
         inverse = inverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
