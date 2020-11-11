library(lavaan)
setwd("/Volumes/SP PHD U3/missing-data-project-2")
source("functions.R")
source("Models_WM.R") 




data <- simulateData(pop.mod9 , sample.nobs=100, seed=111)

simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                       x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                       x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])

cutoff<- qnorm(0.5, lower.tail = F)

simuData[simuData[,1] > cutoff, 7:12] <- NA

simuData


comp.fit <- cfa(fitted.mod, data=data)
lavInspect(comp.fit, "coef")$lambda


incomp.fit <- cfa(fitted.mod, data=simuData, missing="fiml", mimic="EQS")
lavInspect(incomp.fit, "coef")$lambda
