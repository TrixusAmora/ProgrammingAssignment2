## Put comments here that give an overall description of what your
## functions do

## Creates a special matrix that stores its Inverse in a cache

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y){

x<<-y
inv<<-NULL
   
   }

get<-function() x
setinverse<-function(inverse) inv<<-inverse
getinverse<-function() inv

list(set=set, get=get, getinverse=getinverse, setinverse=setinverse)

}


## The function checks if the inverse  of the matrix is already computed and returns the cache value if its done already
##Otherwise computes and sets the cache inverse value as the inverse of the matrix

cacheSolve <- function(x, ...) {

inv=x$getinverse
if(!is.na(inv)){
    message("getting cached data")
    return(inv)
     ## Return a matrix that is the inverse of 'x' from the cache
    }
 data <- x$get()
 inv <- solve(data, ...)
 x$setmean(inv)
 inv
        ## Return a matrix that is the inverse of 'x'
}
