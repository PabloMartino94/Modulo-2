> library(microbenchmark)
> # Tomo una muestra de 10 números ente 1 y 100
> x<-sample(1:100,10)
> # Creo una funci?n para ordenar
> burbuja <- function(x){
+     n<-length(x)
+     for(j in 1:(n-1)){
+         for(i in 1:(n-j)){
+             if(x[i]>x[i+1]){
+                 temp<-x[i]
+                 x[i]<-x[i+1]
+                 x[i+1]<-temp
+             }
+         }
+     }
+     return(x)
+ }
> res<-burbuja(x)
> mbm<-microbenchmark(res)
Aviso:
In microbenchmark(res) :
  Could not measure a positive execution time for 31 evaluations.
> endtime<-Sys.time()
> mbm