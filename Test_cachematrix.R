## Put comments here that give an overall description of what your
## functions do



# A function to test the get function within the function makeCacheSolve
# Test Cases:
# Test_makeCacheSovle_get(x = matrix(1:4, nrow = 2, ncol = 2), expected_result = matrix(1:4, nrow = 2, ncol = 2) )
#
Test_makeCacheSovle_get <- function(x, expected_result){
    # This function takes in the matrix x
    # and
    # the expected result for the get function within makeCacheSolve
    #
    # If the actual result matches the expected results, it returns True,
    # while if the actual result does not match the expected result or
    # the actual results is NUll, it returns False.
    
    # Print the expected result
    print("expected_result is:")
    print(expected_result)
    
    # Create an object of type makeCacheMatrix
    Special_Mat <- makeCacheMatrix(x)
    
    # Print the new object of type makeCacheMatrix
    print("...")
    print("The new object is:")
    print(Special_Mat)
    
    # assigning the return value to the variable actual_results
    actual_result <- Special_Mat$get()
    
    #Print the actual result
    print("actual_result is:")
    print(actual_result)
    
    # Compare the results, checking for a null value
    comparison_bool <- if(is.null(actual_result)) {FALSE}
    else {identical(actual_result, expected_result)}
    
    # Return the comparison boolean value
    return(comparison_bool)    
}



# A function to test the function CacheSolve
# Test Cases:
# Test_cacheSolve(x = matrix(1:4, nrow = 2, ncol = 2), expected_result = matrix(c(-2, 1, 1.5, -0.5), nrow = 2, ncol = 2) )
# Test_cacheSolve(x = matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2), expected_result = matrix(c(6, 2, 8, 4), nrow = 2, ncol = 2) )
# Test_cacheSolve(x = matrix(c(5/8, -1/8, -7/8, 3/8), nrow = 2, ncol = 2), expected_result = matrix(c(3, 1, 7, 5), nrow = 2, ncol = 2) )
#
Test_cacheSolve <- function(x, expected_result) {
    # This function takes in the matrix x
    # and
    # the expected result for matrix x
    #
    # If the actual result matches the expected results, it returns True,
    # while if the actual result does not match the expected result or
    # the actual results is NUll, it returns False.
    
    # Print the expected result
    print("expected_result is:")
    print(expected_result)
    
    # Create an object of type makeCacheMatrix
    Special_Mat <- makeCacheMatrix(x)
    
    # Print the new object of type makeCacheMatrix
    #print("...")
    #print("The new object is:")
    #print(Special_Mat)
    
    # assigning the return value to the variable actual_results
    actual_result <- cacheSolve(Special_Mat)
    
    #Print the actual result
    print("actual_result is:")
    print(actual_result)
    
    # Compare the results, checking for a null value
    comparison_bool <- if(is.null(actual_result)) {FALSE}
    else {identical(actual_result, expected_result)}
    
    # Return the comparison boolean value
    return(comparison_bool)
}