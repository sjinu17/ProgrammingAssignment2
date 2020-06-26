## The code for make inverse of matrix written by jinendra sontakke


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {   ## create an makecaachematrix function
  inv <- NULL                                 ## define inv function
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {   ## Create an cachesolve function
        inv <- x$getInverse()      ## define inverse of matrix
        if(!is.null(inv)){      
          message("getting cached data")  ## print message when i if works
          return(inv)
        }
        mat <- x$get()            
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
