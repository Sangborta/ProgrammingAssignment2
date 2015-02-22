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
