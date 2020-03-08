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
data1 <-simuDatawithMiss[1:1000000,] #N=1000
n <- nrow(data1)



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'



fit1<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="FIML")
Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure
vcov(fit1)

#stage 2 
fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)

Fc<-lavInspect(fit2, "fit")["fmin"]*2 #lavaan halfs the fit finction

fit1@Options$h1.information = "structured" 
fit2@Options$h1.information = "structured" 
#this is the default, so this line is not necessary, but keep here to remind
Wm.ts.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                 lavsamplestats = fit1@SampleStats, 
                                                 lavdata = fit1@Data, 
                                                 lavoptions = fit1@Options, 
                                                 lavimplied = fit2@implied,
                                                 lavh1 = fit2@h1, lavcache = fit1@Cache)[[1]]
Wm.fiml.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                 lavsamplestats = fit1@SampleStats, 
                                                 lavdata = fit1@Data, 
                                                 lavoptions = fit1@Options, 
                                                 lavimplied = fit1@implied,
                                                 lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

#Cathy's note: This is the weight matrix of FIML but evaluated at TS estimates.   
#I believe that lavimplied = fit2@implied allows to me evaluate it at TS estimates. 
#Cathy has checked that if we do fit1@Options$h1.information = "unstructured" , 
#then lavimplied = fit2@implied or lavimplied = fit1@implied makes no difference. 







B1.ts.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                   lavsamplestats = fit1@SampleStats, 
                                                   lavdata = fit1@Data,
                                                   lavoptions = fit1@Options, 
                                                   lavimplied = fit2@implied,
                                                  lavh1 = fit2@h1, lavcache = fit1@Cache)[[1]]
#Cathy's note: This is the first order information matrix of FIML but evaluated at TS estimates.   
#I believe that lavimplied = fit2@implied allows to me evaluate it at TS estimates. 
B1.fiml.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                          lavsamplestats = fit1@SampleStats, 
                                                          lavdata = fit1@Data,
                                                          lavoptions = fit1@Options, 
                                                          lavimplied = fit2@implied,
                                                          lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]


Wmi.ts.est <-solve(Wm.ts.est)
Gamma.ts.est <- Wmi.ts.est %*% B1.ts.est %*% Wmi.ts.est  
Wmi.fiml.est <-solve(Wm.fiml.est)
Gamma.fiml.est <- Wmi.fiml.est %*% B1.fiml.est %*% Wmi.fiml.est  
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

c.ts.est <- lav_matrix_trace(Uc%*%Gamma.ts.est)
c.ts.est
c.fiml.est <- lav_matrix_trace(Uc%*%Gamma.fiml.est)
c.fiml.est
dfh<-lavInspect(fit1,"fit")["df"]


rmsea.uncor <- lavInspect(fit2, "fit")["rmsea"]
rmsea.uncor 

if (Fc/dfh-c.ts.est/(dfh*n) < 0 ) { 
  rmsea.cor.ts.est <-  0} else {
    rmsea.cor.ts.est <-sqrt(Fc/dfh-c.ts.est/(dfh*n))
  }



if (Fc/dfh-c.fiml.est/(dfh*n) < 0 ) { 
  rmsea.cor.fiml.est <-  0} else {
    rmsea.cor.fiml.est <-sqrt(Fc/dfh-c.fiml.est/(dfh*n))
  }







#Calculating CFI: 
#fitting the baseline model 
fit1B <-  lavaan:::lav_object_independence(fit1) 
dfB <- lavInspect(fit1B, "fit")["df"]
fit2B <- lavaan:::lav_object_independence(fit2) 
FcB<-lavInspect(fit2B, "fit")["fmin"]*2 #lavaan halfs the fit finction
dfB<-lavInspect(fit1B,"fit")["df"]
fit1B@Options$h1.information = "structured" 
fit2B@Options$h1.information = "structured" 
WmB.ts.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1B@Model,
                                                 lavsamplestats = fit1B@SampleStats, 
                                                 lavdata = fit1B@Data, 
                                                 lavoptions = fit1B@Options, 
                                                 lavimplied = fit2B@implied,
                                                 lavh1 = fit2B@h1, lavcache = fit1B@Cache)[[1]]
WmB.fiml.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1B@Model,
                                                  lavsamplestats = fit1B@SampleStats, 
                                                  lavdata = fit1B@Data, 
                                                  lavoptions = fit1B@Options, 
                                                  lavimplied = fit1B@implied,
                                                  lavh1 = fit1B@h1, lavcache = fit1B@Cache)[[1]]
#Cathy's note: This is the weight matrix of FIML but evaluated at TS estimates.   
#I believe that lavimplied = fit2B@implied allows to me evaluate it at TS estimates. 

eigen(WmB.ts.est)$values



B1B.fiml.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1B@Model,
                                                   lavsamplestats = fit1B@SampleStats, 
                                                   lavdata = fit1B@Data,
                                                   lavoptions = fit1B@Options, 
                                                   lavimplied = fit1B@implied,
                                                   lavh1 = fit2B@h1, lavcache = fit1B@Cache)[[1]]
B1B.ts.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1B@Model,
                                                             lavsamplestats = fit1B@SampleStats, 
                                                             lavdata = fit1B@Data,
                                                             lavoptions = fit1B@Options, 
                                                             lavimplied = fit2B@implied,
                                                             lavh1 = fit1B@h1, lavcache = fit1B@Cache)[[1]]
#Cathy's note: This is the first order information matrix of FIML but evaluated at TS estimates.   
#I believe that lavimplied = fit2B@implied allows to me evaluate it at TS estimates. 

WmiB.ts.est<-solve(WmB.ts.est)
GammaB.ts.est <- WmiB.ts.est %*% B1B.ts.est %*% WmiB.ts.est 
WmiB.fiml.est<-solve(WmB.fiml.est)
GammaB.fiml.est <- WmiB.fiml.est %*% B1B.fiml.est %*% WmiB.fiml.est
#Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
#This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method
deltabreveB <- lavInspect(fit2B, "delta")
dim(deltabreveB)

WcB <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2B@Model,
                                                 lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
                                                 lavoptions = fit2B@Options, lavimplied = fit2B@implied,
                                                 lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]
dim(WcB)

eigen(WcB)$values

UcB <- WcB-WcB%*%deltabreveB%*%solve(t(deltabreveB)%*%WcB%*%deltabreveB)%*%t(deltabreveB)%*%WcB
eigen(UcB)
cB.ts.est <- lav_matrix_trace(UcB%*%GammaB.ts.est)
cB.ts.est

cB.fiml.est <- lav_matrix_trace(UcB%*%GammaB.fiml.est)
cB.fiml.est 






if (FcB-cB.ts.est < 0) {
  cfi.cor.ts.est <- 99
} else {
  if ( Fc-c.ts.est/n < 0 ){
    cfi.cor.ts.est  <- 1
  } else { if ((Fc-c.ts.est/n)/(FcB-cB.ts.est/n)>1 ){
    cfi.cor.ts.est <- 98
  } else{
    cfi.cor.ts.est<-1-(Fc-n)/(FcB-cB.ts.est/n) }
  }
}




if (FcB-cB.fiml.est < 0) {
  cfi.cor.fiml.est <- 99
} else {
  if ( Fc-c.fiml.est/n < 0 ){
    cfi.cor.fiml.est  <- 1
  } else { if ((Fc-c.fiml.est/n)/(FcB-cB.fiml.est/n)>1 ){
    cfi.cor.fiml.est <- 98
  } else{
    cfi.cor.fiml.est<-1-(Fc-c.fiml.est/n)/(FcB-cB.fiml.est/n) }
  }
}


cfi.uncor <-lavInspect(fit2, "fit")["cfi"]
cfi.uncor

fit.indices.vector<- c(rmsea.cor.fiml.est, rmsea.cor.ts.est, rmsea.uncor, 
        cfi.cor.fiml.est, cfi.cor.ts.est, cfi.uncor, 
        Fc, FcB, 
        dfh, dfB, 
        c.ts.est, cB.ts.est, 
        c.fiml.est, cB.fiml.est)
fit.indices.vector<- round(fit.indices.vector, 8)
names(fit.indices.vector) <- c("rmsea.cor.fiml.est", "rmsea.cor.ts.est", "rmsea.uncor", 
           "cfi.cor.fiml.est", "cfi.cor.ts.est", "cfi.uncor", 
           "Fc", "FcB", 
           "dfh", "dfB", 
           "c.ts.est", "cB.ts.est", 
           "c.fiml.est", "cB.fiml.est")
fit.indices.vector
