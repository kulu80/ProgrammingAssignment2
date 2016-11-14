## This function computes the inverse of a matix and save it for later use .

makeCacheMatrix <- function(x = matrix()) {

}


## This function solve the actually matrix inversion

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv

}
