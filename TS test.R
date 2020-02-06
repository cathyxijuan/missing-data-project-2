#Code for new fit indices with incomplete data, NORMAL AND NONNORMAL DATA 
#install.packages("lavaan", repos = "http://www.da.ugent.be", type = "source") 
#use development version (0.6-6.1508)

#let's compare both mimic=EQS and default (no mimic, which probalby means Mplus)

library(lavaan)
#source("functions_missing_afis.R")
#---------------------------------------------------------------------------------------#
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 
#load("simuDataComplete.RData") #this is N=1,000,000
#data1<-simuDataComplete[1:1000,] #N=1000

load("simuDatawithMiss.RData") #this is N=1,000,000
data1<-simuDatawithMiss[1:1000,] #N=1000
n=1000



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'

fit1<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="FIML")

Sigmatilde<-lavInspect(fit1,"sampstat")$cov #Sigmatilde #please verify these are EM estimates
mutilde<-lavInspect(fit1,"sampstat")$mean #Sigmatilde #please verify these are EM estimates

#stage 2 
fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)


Fc<-lavInspect(fit2, "fit")["fmin"]*2 #lavaan halfs the fit finction


#fit1@Options$h1.information="structured" #this is the default, so this line is not necessary, but keep here to remind
Wm <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                 lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                 lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                 lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

B1 <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                   lavsamplestats = fit1@SampleStats, lavdata = fit1@Data,
                                                   lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                   lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
Wmi<-solve(Wm)

Gamma <- Wmi %*% B1 %*% Wmi 



deltabreve <- lavInspect(fit2, "delta")
dim(deltabreve)

Wc <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                      lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                      lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                      lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]
dim(Wc)

Uc <- Wc-Wc%*%deltabreve%*%solve(t(deltabreve)%*%Wc%*%deltabreve)%*%t(deltabreve)%*%Wc

c <- sum(diag(Uc%*%Gamma))
c
dfh<-lavInspect(fit1,"fit")["df"]

rmsea.ts <- sqrt(Fc/dfh-c/(dfh*n))
rmsea.ts
