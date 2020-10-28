## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##esta función crea una "matriz" cuadrada que pueda almacenar el caché su inverso
# lo cual es:
# - establecer el valor de la  matriz
# - obtener el valor de la matriz
# - establecer el valor de la inversa
# - obtener el valor de la inversa

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  
  setmatrix<-function(solve) m<<-solve
  getmatrix<-function()m
  list(set=set, 
       get=get, 
       setmatrix=setmatrix, 
       getmatrix=getmatrix)
}


## Write a short comment describing this function

## esta función calcula la inversa de la matriz devuelta por la función makeCacheMatrix y la almacena en caché
##primero verifica si la inversa ya se ha calculado. 
#Si es así, obtiene la inversa de la caché y omite el cálculo. 
#De lo contrario, calcula la inversa de los datos y establece el valor de la inversa en la caché mediante la función setsolve.

cacheSolve <- function(x, ...) {
  
  m<-x$getsolve
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setsolve(m)
  m
  
        
}
