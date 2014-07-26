
## Below is a function that is used to create a special object that stores a matrix and cache's its inverse matrix.
## It creates a special "matrix", which is really a list containing a function to

    ## set and get the values of the matrix
    ## set and get the values of the inverse of the matrix

makeCacheMatrix <- function( mat = matrix()){
	
	mat_inverse <- NULL;
	
	# A function to set the matrix with user input 
	# from a different environment.
	set <- function(y){
		mat <<- y
		mat_inverse <<- NULL
	}
	
	get <- function() mat
	
	# Similarly, another function to set the matrix inverse
	# from the user (from a different environment).
	set_inverse <- function(inverse) mat_inverse <<- inverse
	
	get_inverse <- function() mat_inverse
	
	list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}
