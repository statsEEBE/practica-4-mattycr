#Ejercicio 2

#El tiempo de duracion sigue una dist. exponencial con media 10000 horas
    #Modelo: T->EXP(lambda)

lambda<- 1/10000 #lo sacamos de E(X) =1/lambda
lambda
  #1. Prob de que dure al menos 13000h?
1-pexp(13000, lambda)
  #2. Duracion que superan las componentes con una Prob. de 0.2
qexp(0.8,lambda)

#Realiza 100 simulaciones de X (usa semilla 85)
set.seed(85)
simulaciones<-rexp(100,lambda)
  #1. Cual es el valor de la media de los resultados
mean(simulaciones) #11428.46
  #2.Mediana
median(simulaciones) #8620.087
  #3.varianza
var(simulaciones) #115739574
