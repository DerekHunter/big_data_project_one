data = loadData("./test.csv")

x<-data[-80]
y<-data[80]

#summary(x)
#library(dplyr)
#X<- as.matrix(select(data, -SalePrice))
#Y<- as.matrix(select(data, SalePrice))

#install.packages("glmnet")

#library(glmnet)

#LASSO

#nax<-na.omit(X)
#nay<-na.omit(Y)

#dim(nax) 

#lfit<- cv.glmnet( X, Y)

#lfit<- cv.glmnet( nax, nay, alpha = 1)
#nax<-na.omit(x)
#plot(lfit)
#lfit$lambda.min

#coef(lfit, s="lambda.min")

#Another Method for Lasso
#install.packages(lars)
#library(lars)
#model = lars(x, y)
#coef(model)
#Stepwise Regression
full<-lm(y$SalePrice~ ., data = x )
coef.back<-step(full, direction = "backward", trace = FALSE)
coef.for<-step(full, direction = "forward", trace = FALSE)
coef.both <- step(full, direction="both", trace = FALSE)
#Omitting NA values Stepwise
#full_omit<-lm(y$SalePrice~ ., data = na.omit(x) )
#step(full_omit, direction = "backward", steps= 5)

#library(foreign)
#write.dta(data, "./mydata.dta")

summary(coef.back)
summary(coef.for)
summary(coef.both)
