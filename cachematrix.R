## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                inv <- NULL
       # set <- function(y) {
        #        x <<- y
           #     m <<- NULL
        #}
        get <- function() x
        setsolve <- function(invs) inv <- invs
        getsolve <- function() inv
        list( get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         inv <- x$getsolve()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setsolve(inv)
        inv
        ## Return a matrix that is the inverse of 'x'
}
