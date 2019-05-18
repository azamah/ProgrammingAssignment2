## Danilo Nader

## Create a special Matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(y) solve(y)
  getsolve <- function() m
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

## Caching the Inverse of a Matrix
cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached matrix")
    return(m)
  }
  m <- x$get()
  x$setsolve(m)
  m
}
