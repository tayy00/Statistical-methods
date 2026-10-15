#install packages
library(visreg)
library(car)

#define the data

X=c(6, 9, 6, 7, 8, 7, 7, 7, 9, 9)
Y=c(8, 6, 7, 7, 8, 7, 7, 9, 9, 9)

#create a dataframe
data.ex=data.frame(X,Y)

#plot the data

plot(X,Y,pch=16)

model=lm(Y~X,data=dat.ex)
summary(model)    #Regression equation and R-square

#mean standard error
MSE=summary(model)$sigma^2
MSE
#predict value
x0=data.frame(X=11)
predict(model,x0)
visreg(model)

## Residual Analysis
qqnorm(model$residuals,col="red")
qqline(model$residuals,col="blue")
#hist(model$residuals,col="blue")
shapiro.test(model$residuals)