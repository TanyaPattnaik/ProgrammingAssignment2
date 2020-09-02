## make object and store inverse of matrix to retrieve
## makes matrix to store the inverse of input matrix

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y) {
x <<- y
i <<- NULL
}
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set = set,
get = get,
setinverse = setinverse,
getinverse = getinverse)
}

## computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
i <- x$getinverse()
if (!is.null(i)) {
return(i)
}
data <- x$get()
i <- solve(data, ...)
x$setinverse(i)
i
}
