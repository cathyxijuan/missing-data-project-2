
library(lavaan)
library(matrixcalc)

load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

data1<-simuDatawithMiss[1:1000,] 
n <- nrow(data1)

fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1'

fitted.mod <- '
x1~1
x2~1
x3~1
x4~1
x5~1
x6~1
x7~1
x8~1
x9~1
x10~1
x11~1
x12~1
x1~~x1
x1~~x2
x1~~x3
x1~~x4
x1~~x5
x1~~x6
x1~~x7
x1~~x8
x1~~x9
x1~~x10
x1~~x11
x1~~x12
x2~~x2
x2~~x3
x2~~x4
x2~~x5
x2~~x6
x2~~x7
x2~~x8
x2~~x9
x2~~x10
x2~~x11
x2~~x12
x3~~x3
x3~~x4
x3~~x5
x3~~x6
x3~~x7
x3~~x8
x3~~x9
x3~~x10
x3~~x11
x3~~x12
x4~~x4
x4~~x5
x4~~x6
x4~~x7
x4~~x8
x4~~x9
x4~~x10
x4~~x11
x4~~x12
x5~~x5
x5~~x6
x5~~x7
x5~~x8
x5~~x9
x5~~x10
x5~~x11
x5~~x12
x6~~x6
x6~~x7
x6~~x8
x6~~x9
x6~~x10
x6~~x11
x6~~x12
x7~~x7
x7~~x8
x7~~x9
x7~~x10
x7~~x11
x7~~x12
x8~~x8
x8~~x9
x8~~x10
x8~~x11
x8~~x12
x9~~x9
x9~~x10
x9~~x11
x9~~x12
x10~~x10
x10~~x11
x10~~x12
x11~~x11
x11~~x12
x12~~x12
'


#####hypothesized model#####
#stage 1
fit1<-cfa(fitted.mod,data=data1,estimator="ML",missing="FIML")
fit1.sat <- lavaan:::lav_object_unrestricted(fit1, se=T) 
#checking if fit1 and fit1.sat is the same 
round(lavInspect(fit1.sat, "coef")$theta,3)==round(lavInspect(fit1, "coef")$theta,3)
Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure
lavInspect(fit1.sat,"information.observed")


#stage 2 
fit2 <- cfa(parTable(fit1.sat), sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)
lavInspect(fit2,"information.observed")


##checking if saturated model's estimates from stage 1 are the same as those in stage 2
round(lavInspect(fit2,"coef")$theta,3)==round(lavInspect(fit1,"coef")$theta,3)
round(lavInspect(fit2,"information.observed"),3)==round(lavInspect(fit1,"information.observed"),3)
