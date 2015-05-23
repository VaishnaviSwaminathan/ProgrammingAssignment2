##Setting the values of a matrix and getting the cached data of the inverse matrix
##Getting the value of matrix
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}
##Getting the cached matrix
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    ##Inverse of matrix
    datos<-x$get()
    m<-solve(datos, ...)
    x$setmatrix(m)
    m
}
