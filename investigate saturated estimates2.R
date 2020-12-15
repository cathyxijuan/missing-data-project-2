
library(lavaan)
library(matrixcalc)

load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

data1<-simuDatawithMiss[1:1000,]
n <- nrow(data1)

###the fitted model below is a saturated model; this is actually the model used in Lai's code 
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
Sigmatilde<-lavInspect(fit1,"cov.ov") #saturated model's cov matrix
mutilde<-lavInspect(fit1,"mean.ov") #saturated model's mean structure
lavInspect(fit1,"information.observed")
summary(fit1)

#stage 2 
fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)
lavInspect(fit2,"information.observed")
summary(fit2)


####Using two-stage estimation
#fit2<-cfa(fitted.mod,data=data1,missing="robust.two.stage")
#lavInspect(fit2,"information.observed")


####then saturated parameter estimates from the stage 1 and 2 are very very close but not exactly the same for some estimates. 
lavInspect(fit1,"coef")$theta
lavInspect(fit2,"coef")$theta

#information matrices for structured and saturated model for stage 1 are the same; makes sense 
round(lavInspect(fit1,"h1.information.observed")[1:15,1:15],5)==round(lavInspect(fit1,"information.observed")[1:15,1:15],5)
#information matrices for structured and saturated model for stage 2 are the same; makes sense 
round(lavInspect(fit2,"h1.information.observed")[1:11,1:11],5)==round(lavInspect(fit2,"information.observed")[1:11,1:11],5)

######But information matrices for the stage 1 and 2 are not the same
diag(round(lavInspect(fit2,"h1.information.observed"),5))==diag(round(lavInspect(fit1,"h1.information.observed"),5))
diag(round(lavInspect(fit2,"h1.information.observed"),5))
diag(round(lavInspect(fit1,"h1.information.observed"),5))
#####with the inverted information matrices, it seems that diagonals are smaller in the stage 2 than those in stage 1
diag(round(lavInspect(fit1,"information.observed")[1:11,1:11],5))
diag(round(lavInspect(fit2,"information.observed")[1:11,1:11],5))




lavInspect(fit2,"h1.information.observed")
round(lavInspect(fit1,"h1.information.observed"),5)
A <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                           lavsamplestats = fit1@SampleStats, 
                                           lavdata = fit1@Data, 
                                           lavoptions = fit1@Options, 
                                           lavimplied = fit1@implied,
                                           lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]


H <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                           lavsamplestats = fit2@SampleStats, 
                                           lavdata = fit2@Data, 
                                           lavoptions = fit2@Options, 
                                           lavimplied = fit2@implied,
                                           lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]

B <- lavInspect(fit1, "delta")
acov  <- solve(t(B)%*%H%*%B)%*%(t(B)%*%H%*%solve(A)%*%H%*%B)%*%solve(t(B)%*%H%*%B)
diag(acov) #two.stage

acov2 <- solve(t(B)%*%A%*%B) #FIML
diag(acov2)
diag(A)
diag(H)
2020-1994
dim(B)
