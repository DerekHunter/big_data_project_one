data = loadData("./test.csv")
#summary(data)

#Changing Base 10 variables so they are representative of change from the average
data$OverallQual= (data$OverallQual - 5)
data$OverallCond= (data$OverallCond - 5)

#Changing the base of  year variables so they are based off of distance from 2000
data$YearBuilt= data$YearBuilt - 2000
data$YearRemodAdd= data$YearRemodAdd - 2000
data$GarageYrBlt= data$GarageYrBlt - 2000
data$YrSold = data$YrSold -2000

data$CentralAir<-data$CentralAir == "Y"

data$HasBsmt <- data$BsmtCond != "None"

data$Has2ndFlr<-data$X2ndFlrSF != 0 

#We want Fireplaces as a factor instead of an integer
data$Fireplaces <- factor(data$Fireplaces)

data$HasGarage <- data$GarageCond != "None"

data$HasPool <- data$PoolQC != "None"

data$HasFence <- data$Fence != "None"

data$SalePrice<- log(data$SalePrice)

data$GarageCars<- factor(data$GarageCars)

data$KitchenAbvGr <- factor(data$KitchenAbvGr)

data$HasWoodDeck <- data$WoodDeckSF != 0
data$HasOpenPorch<- data$OpenPorchSF != 0
data$HasEnclosedPorch<- data$EnclosedPorch != 0
data$Has3SsnPorch <- data$X3SsnPorch != 0


x<-data[-80]
y<-data[80]
