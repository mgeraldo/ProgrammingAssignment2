## Prorgamming Assignment 2: inverting a matrix or capturing the value calculated previously. 

## This is just an example of an invertible matrix
x <- matrix(c(2,rep(0,4),2,rep(0,4),1,rep(0,4),1),4,4)

# makeCacheMatrix cleans the inverted matrix in case that x is redefined
# to start this function must be called as follows:  
# > makeCacheMatrix(x)
# or
# > x <- makeCacheMatrix(x)

makeCacheMatrix <- function(x = matrix()) {
mat <<- x
inv <<- NULL
invisible(x)
}


## cacheSolve check whether the inverse martix has been calculated and either brings the 
## value stored in cache, or inverts the matrix updating the cache.

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    inv <<- solve(x)
    inv
}
