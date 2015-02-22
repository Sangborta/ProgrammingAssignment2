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
