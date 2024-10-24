#X <- numero de llamadas en 1h
  #X-> Pois(lambda)
##########################################################################################################################
# P(X=30) = f(30) -> dpois(x,lambda)= dpois(30,25)
dpois(30,25)
exp(-25)*(25^30)/factorial(30)

x<-0:40
plot(x,dpois(x,23),type="h",col="red")

#P(X menor o igual a 30)=F(30) -> ppois(30,25)
ppois(30,25)
plot(x,ppois(x,25),type="s",col="red")

#Prob de 30 llamadas en 2h
  #1h ->lambda =25
  #2h ->lambda = 2*25
    #Y->Pois(2*lambda)
#P(20 menor o igual que X mayor o igual que 24) -> F(24)-F(19)

ppois(24,25)-ppois(19,25)
##################################################################################################################################
#Ejercicio 1---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#1. Prob. de que pase 0.033h entre 2 llamadas ->P (T=0.033h) -> T ->EXP(lambda) ->VAC
  #f(t)=lambda*exp(-lambda*t) -> dexp(t,lambda)  [densidad de probabilidad]
0
#2. Prob.de que pase un tiempo de al menos 0.052h entre 2 llamadas -> P(T>=0.052h) = 1-P(T<=0.052)
#############################################
t<-seq(0,2,0.01)
t
plot(t,dexp(t,25),type="l",col="red") #f(t)
plot(t,pexp(t,25),type="l",col="red") #F(t)

################################################
1-pexp(0.052,25) #0.2725318

#3. Un experimento se define como contabilizar el T entre llamadas. Si simulamos 500000 experimentos, la media de tiempo entre 2 llamadas:
  #dexp = f(x)
  #pexp=F(x)
  #rexp=simulacion
mean(rexp(500000, 25))
#en otras palabras, pregunta por E[X] = 1/lambda
1/25
