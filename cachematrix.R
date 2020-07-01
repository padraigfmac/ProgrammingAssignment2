#***************************************************************************
# Author:   Padraig Mac Donnchadha
# Date:     30/06/2020
#
# Description:
# A set of functions for caching the inverse of a matrix
# and then retrieving the cached inverse of a matrix
#
# Change History
#***************************************************************************

# This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    # This function takes in a matrix, x
    # This function returns a matrix object which holds
    # a matrix called "x"
    # a cached inverse matrix called mat_inv and
    # four functions set, get, set_inv and get_inv
    
    # initialise the object mat_inv which will store the matrix inverse
    mat_inv <- NULL

    # set the value of the matrix
    set <- function(y) {
        x <<- y
        mat_inv <<- NULL
    }
    
    # get the value of the matrix
    get <- function() x
    
    # set the value of the inverse matrix
    set_inv <- function(inv) mat_inv <<- inv
    
    # get the value of the inverse matrix
    get_inv <- function() mat_inv
        
    
    # return the list of functions
    list(set = set,          # gives the name 'set' to the set() function defined above
         get = get,          # gives the name 'get' to the get() function defined above
         set_inv = set_inv,  # gives the name 'set_inv' to the set_inv() function defined above
         get_inv = get_inv)  # gives the name 'get_inv' to the get_inv() function defined above
}

# This function computes the inverse of the special "matrix"
# returned by the function makeCacheMatrix.
# If the inverse has already been calculated (and the matrix has not changed),
# then the cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    # This function takes a input argument x of type makeCacheMatrix
    # This function returns a matrix which is the inverse of the matrix x.
    
    # Get the cached inverse matrix
    # Return the cached inverse matrix if it is not null
    mat_inv <- x$get_inv()
    
    #print the value of mat_inv
    #print("The value of mat_inv")
    #print(mat_inv)
    
    if(!is.null(mat_inv)) {
        message("getting cached data")
        return(mat_inv)
    }
    
    # Get the matrix
    data <- x$get()
    
    # Calculate the inverse matrix
    mat_inv <- solve(data, ...)
    
    # Cache the inverse matrix
    x$set_inv(mat_inv)
    
    # Return a matrix that is the inverse of 'x'
    mat_inv
}

