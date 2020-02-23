#Code for new fit indices with incomplete data, NORMAL AND NONNORMAL DATA 
#install.packages("lavaan", repos = "http://www.da.ugent.be", type = "source") 
#use development version (0.6-6.1508)

#let's compare both mimic=EQS and default (no mimic, which probalby means Mplus)

library(lavaan)
#source("functions_missing_afis.R")
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

fit1<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="FIML")

Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure
#stage 2 
fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)
Sigmatilde2<-lavInspect(fit2,"sampstat")$cov #same as Sigmatilde
mutilde2<-lavInspect(fit2,"sampstat")$mean #same as Sigmatilde

Fc<-lavInspect(fit2, "fit")["fmin"]*2 #lavaan halfs the fit finction


#fit1@Options$h1.information="structured" #this is the default, so this line is not necessary, but keep here to remind
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
#I believe that lavimplied = fit2@implied allows to me evaluate it at TS estimates. 

Wmi<-solve(Wm)
Gamma <- Wmi %*% B1 %*% Wmi  
#Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
#This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method






deltabreve <- lavInspect(fit2, "delta")
dim(deltabreve)

Wc <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                 lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                 lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                 lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]
dim(Wc)
Wc

Uc <- Wc-Wc%*%deltabreve%*%solve(t(deltabreve)%*%Wc%*%deltabreve)%*%t(deltabreve)%*%Wc

c <- lav_matrix_trace(Uc%*%Gamma)
c
dfh<-lavInspect(fit1,"fit")["df"]

rmsea.ts.cor <- sqrt(Fc/dfh-c/(dfh*n))
rmsea.ts.cor
rmsea.ts.uncor <- lavInspect(fit2, "fit")["rmsea"]
rmsea.ts.uncor 





#Calculating CFI: 
#fitting the baseline model 
fit1B <-  lavaan:::lav_object_independence(fit1) 
dfB <- lavInspect(fit1B, "fit")["df"]
fit2B <- lavaan:::lav_object_independence(fit2) 
FcB<-lavInspect(fit2B, "fit")["fmin"]*2 #lavaan halfs the fit finction

WmB <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1B@Model,
                                                 lavsamplestats = fit1B@SampleStats, 
                                                 lavdata = fit1B@Data, 
                                                 lavoptions = fit1B@Options, 
                                                 lavimplied = fit2B@implied,
                                                 lavh1 = fit1B@h1, lavcache = fit1B@Cache)[[1]]
#Cathy's note: This is the weight matrix of FIML but evaluated at TS estimates.   
#I believe that lavimplied = fit2B@implied allows to me evaluate it at TS estimates. 


round(WmB, 4)


B1B <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1B@Model,
                                                   lavsamplestats = fit1B@SampleStats, 
                                                   lavdata = fit1B@Data,
                                                   lavoptions = fit1B@Options, 
                                                   lavimplied = fit2B@implied,
                                                   lavh1 = fit1B@h1, lavcache = fit1B@Cache)[[1]]
#Cathy's note: This is the first order information matrix of FIML but evaluated at TS estimates.   
#I believe that lavimplied = fit2B@implied allows to me evaluate it at TS estimates. 

WmiB<-solve(WmB)
GammaB <- WmiB %*% B1B %*% WmiB  
#Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
#This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method
deltabreveB <- lavInspect(fit2B, "delta")
dim(deltabreveB)

WcB <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2B@Model,
                                                 lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
                                                 lavoptions = fit2B@Options, lavimplied = fit2B@implied,
                                                 lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]
dim(WcB)


UcB <- WcB-WcB%*%deltabreveB%*%solve(t(deltabreveB)%*%WcB%*%deltabreveB)%*%t(deltabreveB)%*%WcB

cB <- lav_matrix_trace(UcB%*%GammaB)
cB


cfi.ts.cor <- 1-(Fc-c/n)/(FcB-cB/n)
cfi.ts.cor
cfi.ts.uncor <-lavInspect(fit2, "fit")["cfi"]
cfi.ts.uncor
