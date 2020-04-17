library("ISLR") #IMPORTANDO BASES DE DATOS.
library("MASS") #IMPORTANDO BASES DE DATOS.
library("readr")
library("fmsb")
library("normtest")
library("nortest")
library("moments")
library("readxl")   
library("ggplot2")
library("stats")
library("forecast")
library("astsa")
library("plotly")
library("rgl")
library("scatterplot3d")
library("gganimate")
setwd("C:/Users/Alonso/Desktop/ITSL")
View(Wage)
#DIAGRAMA DE DISPERSIÓN : EDAD VS SALARIO
ggplot(Wage, aes(x=age, y=wage)) + geom_point(size=1,color="red")+geom_smooth(method=loess,level=0.95,fill="green")
ggsave("age vs wage.png")
#DIAGRAMA DE DISPERSIÓN: AÑO EN QUE EL SALARIO FUE GANADO VS SALARIO
ggplot(Wage, aes(x=year, y=wage)) + geom_point(size=1,color="black")+geom_smooth(method=lm,level=0.95,fill="green")
ggsave("year vs wage.png")
#BOX-PLOT: NIVEL EDUCACIONAL VS SALARIO
ggplot(Wage, aes(x=education, y=wage,fill=education))+geom_boxplot(outlier.colour="red", outlier.shape=8, outlier.size=2)+labs(x="Nivel de estudio", y="Salario") +theme(text=element_text(family="serif", size=14,face="bold"))
ggsave("box_plot education_level vs wage.png")

View(Smarket)
#BOXPLOT: DIGRAMAS DEL INDICADOR EN LOS QUE SUBIÓ Y BAJÓ CONSIDERANDO UNO, DOS Y TRES DIAS EN EL PASADO.
ggplot(Smarket, aes(x=Direction, y=Lag1,fill=Direction))+geom_boxplot(outlier.colour="red", outlier.shape=8, outlier.size=2)+labs(x="Movimiento del indicador hoy", y="Cambio porcentual en el indicador S&P(%) ")+ggtitle("Desfase de 1 día")
ggplot(Smarket, aes(x=Direction, y=Lag2,fill=Direction))+geom_boxplot(outlier.colour="red", outlier.shape=8, outlier.size=2)+labs(x="Movimiento del indicador hoy", y="Cambio porcentual en el indicador S&P(%) ")+ggtitle("Desfase de 2 días")
ggplot(Smarket, aes(x=Direction, y=Lag3,fill=Direction))+geom_boxplot(outlier.colour="red", outlier.shape=8, outlier.size=2)+labs(x="Movimiento del indicador hoy", y="Cambio porcentual en el indicador S&P(%) ")+ggtitle("Desfase de 3 días")

getwd()

