## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL ## inverse matrix
	print(x)
	set <- function(newX) {
		x <<- newX
		inv <<- NULL
		print("set new")
	}

	get <- function() x
	setInv <- function(i) inv <<- i
	getInv <- function() inv

	list(set=set, 
	     get=get,
	     setInv=setInv,
	     getInv=getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inv <- x$getInv()
	if (is.null(inv)) {
		m <- x$get()
		inv <- solve(m, ...)
	}
	x$setInv(inv)
	inv
}
