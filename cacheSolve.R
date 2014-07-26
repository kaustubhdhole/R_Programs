# This function calculates the inverse of the special "matrix" created with the "makeCacheMatrix" function. 
# It first checks to see if the inverse has already been calculated.
# If so, it gets the inverse from the cache and skips the computation. 
# Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the set_inverse function.


cacheSolve <- function(mat) {
        
		# Check whether the inverse of the matrix exists in the Cache Memory
		mat_inverse <- mat$get_inverse()
        if(!is.null(mat_inverse)) {
				# If the inverse exists in the Cache Memory, return it
                message("Getting Matrix from Cache Memory.")
                return(mat_inverse)
        }
		
		# If the inverse doesn't exist, compute the inverse
		# and store it in mat_inverse
        data <- mat$get()
        mat_inverse <- solve(data)
		
		# Update the Cache with the computed inverse of the matrix 'mat'
        mat$set_inverse(mat_inverse)
		
		# Return the inverse of the matrix 'mat' to the user
        mat_inverse
}
