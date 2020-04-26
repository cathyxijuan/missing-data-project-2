
library(lavaan)
library(matrixcalc)
library(mice)

#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

#load("simuDatawithMiss2.RData") # slighly misspecified 
dataset<-simuDatawithMiss[1:500, ] 
n <- nrow(data1)

fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'


fit1<-cfa(model=fitted.mod,data=dataset,estimator="ML",missing="FIML") #normal data

fiml.fit<-lavInspect(fit1,"fit")[c("rmsea","cfi")]  
num.of.imp1 <- 5
imputeData.all <- mice(data=dataset, m=num.of.imp1, method="norm", printFlag=F)

rmsea.vector <- rep(NA,num.of.imp1)
cfi.vector <- rep(NA, num.of.imp1)
is.converged.vector <- rep(NA, num.of.imp1)
is.null.vcov.vector <- rep(NA, num.of.imp1)

for(i in 1:num.of.imp1){
  imputeData <- complete(imputeData.all,i)
  fit <- cfa(model=fitted.mod, data=imputeData)
  fit.ind <- lavInspect(fit, "fit")[c("rmsea", "cfi")]
  rmsea.vector[i] <- fit.ind[c("rmsea")]
  cfi.vector[i] <- fit.ind[c("cfi")]
  is.converged.vector[i] <- lavInspect(fit, "converged")
  is.null.vcov.vector[i] <- is.null(vcov(fit))
}
rmsea <- mean(rmsea.vector, na.rm=T)
cfi <- mean(cfi.vector, na.rm=T)
is.converged <- mean(is.converged.vector)
is.null.vcov <- mean(is.null.vcov.vector)
fit.indices.vector <-round(c(rmsea, cfi, fiml.fit, 
                             is.converged, is.null.vcov),8)
