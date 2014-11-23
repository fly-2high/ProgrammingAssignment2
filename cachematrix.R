# Create functions to get the inverse of a materix 


## Create makeCacheMatri function to creates a "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
            m<-null
            set<-function(y){
                  x<<-y
                  m<<-null
            }
            
            get<-function() x
            
            setinverse<function(solve)  m<<- solve
            
            getinverse<-function()m
  
            list(set=set,get=get, setinverse= setinverse,
                 getinverse= getinverse)


}


## cashSolve is a new function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix function

cacheSolve <- function(x, ...) {
            m<-x$getinverse()
  
            if(!is.null(m)){
                  message("getting cashed inverse matrix")
                  return(m)
            }

}

