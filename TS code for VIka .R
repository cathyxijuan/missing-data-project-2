

library(lavaan)
#---------------------------------------------------------------------------------------#
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 


load("simuDatawithMiss.RData") #this is N=1,000,000
data1 <-simuDatawithMiss[1:1000,] #N=1000
n <- nrow(data1)



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'
#Stage 1: 

fit1<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="FIML")

Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure

#stage 2 : 
fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)


Fc<-lavInspect(fit2, "fit")["fmin"]*2 #lavaan halfs the fit finction

####Calculating Gamma ####
#Cathy: In this implementation, I am just using observed information; I evaluate the Wm with fit1@Options$h1.information="structured", which is the default option. 
Wm <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                 lavsamplestats = fit1@SampleStats, 
                                                 lavdata = fit1@Data, 
                                                 lavoptions = fit1@Options, 
                                                 lavimplied = fit2@implied,
                                                 lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
#Cathy's note: This is the weight matrix of FIML but evaluated at TS estimates.   
#I believe that lavimplied = fit2@implied allows to me evaluate it at TS estimates. 


round(Wm, 4)
dim(Wm)

B1 <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                   lavsamplestats = fit1@SampleStats, 
                                                   lavdata = fit1@Data,
                                                   lavoptions = fit1@Options, 
                                                   lavimplied = fit2@implied,
                                                   lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
#Cathy's note: This is the first order information matrix of FIML but evaluated at TS estimates.   
#Cathy believes that lavimplied = fit2@implied allows to me evaluate it at TS estimates. Do you think it is correct Vika? 

Wmi<-solve(Wm)
Gamma <- Wmi %*% B1 %*% Wmi  
#Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
#This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method.






#######Calculating the matrix  U ####
deltabreve <- lavInspect(fit2, "delta")
dim(deltabreve)

Wc <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                 lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                 lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                 lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]
dim(Wc)
Wc

Uc <- Wc-Wc%*%deltabreve%*%solve(t(deltabreve)%*%Wc%*%deltabreve)%*%t(deltabreve)%*%Wc


####Calculating the small sample correction for the two-stage estimation
c <- lav_matrix_trace(Uc%*%Gamma)
c
dfh<-lavInspect(fit1,"fit")["df"]

#calculating the RMSEA without small sample correction 
rmsea.ts.uncor <- lavInspect(fit2, "fit")["rmsea"]
rmsea.ts.uncor 
#calculating the RMSEA with small sample correction 
rmsea.ts.cor <- sqrt(Fc/dfh-c/(dfh*n))
rmsea.ts.cor

#Alternatively, we can fit the hypothesized model with two-stage estimator and get the uncorrected rmsea
fit.ts<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="two.stage")
rmsea.ts.uncor2 <- lavInspect(fit.ts, "fit")["rmsea"]
rmsea.ts.uncor2

out <- c(rmsea.ts.uncor, rmsea.ts.uncor2, rmsea.ts.cor)
names(out)  <- c("manually doing the TS estimation without small sample correction", 
                 "using lavaan TS estimator and without small sample correction",
                 "manually doing the TS estimation and with small sample correction")
out
