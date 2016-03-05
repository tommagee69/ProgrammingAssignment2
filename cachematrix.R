## This is the first part of the assignment, to create a special matrix or object
## The function works to cache its inverse
## it then returns: a list containing functions to, set the matrix, get the matrix, set the inverse and get the inverse
## all of this then feeds the cachesolve function

makeCacheMatrix <- function(x = matrix()) {
        inv = NULL
        set = function(y) {
        x <<- y
        inv <<- NULL
}
get=function() x
setinv = function (inverse) inv <<- inverse
getinv = function() inv
list(set=set, get=get, setinv=setinv, getin=getinv)
}
## This is the second part of the assignment where the cachesolve function sits, 
## This function computes the inverse of the special matrix above
cacheSolve <- function(x, ...) {
        inv = x$getinv()
        if (!is.null(inv)){
## get it from the cache and skips the computation. 
        message("getting cached data")
        return(inv)
}
        mat.data = x$get()
        inv = solve(mat.data, ...)
        x$setinv(inv)
        return(inv)
}
