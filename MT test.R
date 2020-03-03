library(mice)
library(lavaan)
library(semTools)

#source("functions_missing_afis.R")
#---------------------------------------------------------------------------------------#
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'

load("simuDatawithMiss.RData") #this is N=1,000,000
data1 <-simuDatawithMiss[1:100,] #N=1000
n <- nrow(data1)


#save(simuCompleteData_WM, file="simuCompleteData_WM.RData") 
#uncomment it if you want to save the file







num.of.imp <- 2
imputeData.all <- mice(data=data1, m=num.of.imp, seed=123, method="norm")


rmsea.vector <- rep(NA,num.of.imp)
cfi.vector <- rep(NA, num.of.imp)
fmin.vector <- rep(NA, num.of.imp)
fminB.vector <- rep(NA, num.of.imp)
is.converged.vector <- rep(NA, num.of.imp)
is.null.vcov.vector <- rep(NA, num.of.imp)

for(i in 1:num.of.imp){
  imputeData <- complete(imputeData.all,i)
  fit <- cfa(model=fitted.mod, data=imputeData, mimic="EQS")
  rmsea.vector[i] <- lavInspect(fit, "fit")[c("rmsea")]
  cfi.vector[i] <- lavInspect(fit, "fit")[c("cfi")]
  fmin.vector[i] <- lavInspect(fit, "fit")[c("fmin")]*2
  fminB.vector[i] <- lavInspect(fit, "fit")[c("baseline.chisq")]/nrow(imputeData)
  is.converged.vector[i] <- lavInspect(fit, "converged")
  is.null.vcov.vector[i] <- is.null(vcov(fit))
}
rmsea <- mean(rmsea.vector)
cfi <- mean(cfi.vector)
fmin <-mean(fmin.vector)
fminB <- mean(fminB.vector)
is.converged <- mean(is.converged.vector)
is.null.vcov <- mean(is.null.vcov.vector)
dfh <- lavInspect(fit,"fit")["df"] 
dfB <- lavInspect(fit,"fit")["baseline.df"] 
fit.indices.vector <-round(c(rmsea, cfi, fmin, fminB, 
                             is.converged, is.null.vcov,
                             dfh, dfB),8)
names(fit.indices.vector) <- c("rmsea", "cfi", "fmin","fminB",
                               "is.converged", "is.null.vcov", 
                               "dfh", "dfB")
fit.indices.vector



all.fit.mi(fitted.mod , data1, num.of.imp1 = 2)

20695.892/(nrow(data1))
