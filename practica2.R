install.packages("ggplot2")
require(ggplot2)
a<-c(.4,.42,.48,.51,.57,.6,.7,.75,.75,.78,.84,.95,.99,1.03,1.12,1.15,1.2,1.25,1.25,1.28,1.3,1.34,1.37,1.4,1.43,1.46,1.49,1.55,1.58,1.6)
b<-c(1.02,1.21,.88,.98,1.52,1.83,1.5,1.8,1.74,1.63,2,2.8,2.48,2.47,3.05,3.18,3.76,3.68,3.82,3.21,4.27,3.12,3.99,3.75,4.1,4.18,3.77,4.34,4.21,4.92)
summary(a)
summary(b) #obtenemos las medidas de dispersion de las ordenadas que son los puntos que nos importan
benchsup=1.755-1.5*IQR(b)
benchinf<-3.808+1.5*IQR(b)# benchmark para verificar que intervalos deben de cumplir los datos y que no sean outliers
#ningun dato sobrepasa los intervalos propuestos.
boxplot(b~a) #graficas de caja brazos para identificar los outliers de forma grafica, no se identifica ningun outlier.
cor(a,b) #Obtenemos la correlacion entre las variables
plot(a,b)
regre<-lm(b~a) #calculamos la recta de regresion
abline(lsfit(a,b))#trazamos la recta de regresion

