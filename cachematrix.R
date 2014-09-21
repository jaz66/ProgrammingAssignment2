## To Cache the inverse of a matrix


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  i<-NULL
  
  ##to set the matrix
  
  set<-function(matrix){
    m<<-matrix
    i<<-NULL
  }
##how to get a matrix
get<-function(){
  ##matrix will be returned
  m
}
##inverse the matrix

setInverse<-function(inverse){
  
  i<<-inverse
}

##to get the inverse of a matrix

getInverse<-function(){
  i
}


}


##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ##Return the inverse matrix of x      
  m<-x$getInverse()
        ##Returns Inverse if its already set
        if(!is.null(m)){
          return(m)
        }
##retreive the matrix 
data<-x$get()

##Calculate inverse 

m<-solve(data) %*% data

x$setInverse(m)

m


}


