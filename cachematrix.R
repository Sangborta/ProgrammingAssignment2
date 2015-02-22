# Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly.
# The following two functions are a part of the R-Programming assignment in Coursera in order to cache the inverse of a matrix.

## makeCacheMatrix creates a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        minv <- NULL # Intializing the value of the variable which will store the inverse 
# Using a set function to set the matrix to the object created by the makeCacheMatrix function        
	set <- function(y) {
                x <<- y
                minv <<- NULL # Again initializing
        }
# Using a function get, to get the input matrix
        get <- function() x 
        setinv <- function(inv) minv <<- inv # setting the inverse matrix
        getinv <- function() minv # returning the inverse matrix
# creating a list of these functions
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}

# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

# This function assumes that the matrix is always invertible.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
minv <- x$getinv() # getting the inverse matrix
        if(!is.null(minv)) {  # Checking if Step 1 is fulfilled or not.
                message("Retrieving from the cached data") # if Step 1 is fulfilled
                return(minv) # gets the cached data
        } # if Step 1 is not fulfilled
        data <- x$get() # getting the matrix in data
        minv <- solve(data) # Using solve function, we invert the matrix
        x$setinv(minv) # set the value to minv
        minv # return the value of minv
}
