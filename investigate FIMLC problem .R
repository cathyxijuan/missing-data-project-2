library(lavaan)
library(matrixcalc)

load("simuDataComplete.RData")
load("simuDataMARStrongmin.RData")
#for complete data, the population RMSEA and CFI are 0.1915484 and 0.5378538, respectively. 

samp.ind <- 1:1000
data.comp <- simuDataComplete[1:1000,]

data1<-simuDataMARStrongmin[1:1000,] 


fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'



fit1<-cfa(fitted.mod,data=data1,estimator="ML",missing="FIML") #normal data
Fm <- lavInspect(fit1, "fit")["fmin"]*2
fit.fit1<-lavInspect(fit1,"fit")[c("fmin","rmsea", "cfi", "df")] 
Fm <- fit.fit1["fmin"]*2
dfh<-fit.fit1["df"]

fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 
fit.fit01 <- lavInspect(fit01,"fit")[c("fmin","df")]
dfb<-fit.fit01["df"]
Fmb <- fit.fit01["fmin"]*2
#fits <- lavaan:::lav_object_unrestricted(fit1, se=T) #saturated model

#---------------------------------------NEW FIT INDICES----------------------------------#
n <-nrow(data1)
p <-ncol(data1)
#pstar <-p*(p+1)/2 #number of unique elements in the covariance matrix=78   + 12=90
#pstar+12-dfh  # number of parameters in the structured model=36

Sigmahat<-fitted.values(fit1)$cov #Sigma-hat_H
muhat<-fitted.values(fit1)$mean #mu-hat-H
Sigmatilde<-lavInspect(fit1,"sampstat")$cov #Sigmatilde #please verify these are EM estimates
mutilde<-lavInspect(fit1,"sampstat")$mean #Sigmatilde #please verify these are EM estimates

SigmahatB<-fitted.values(fit01)$cov #Sigma-hat_B for independence model 
muhatB<-fitted.values(fit01)$mean #mu-hat_B for independence model

#---Yves' approach: take parameters of FIMl run, set optim.method="none" to prevent any further iterations---------# 

fitc <- sem(parTable(fit1), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=n,
            information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

####investigating warning msg ####
eigen(lavInspect(fit01, "vcov"))$values
#all positive eigenvalues..
#################################

fitcB <- sem(parTable(fit01), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=n,
             information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")



# out <- as.vector(inspect(fitc, "implied")$cov-inspect(fit1, "implied")$cov)
# length(out)
# lavInspect(fit1, "est")$lambda-lavInspect(fitc, "est")$lambda

F.hat <- t(mutilde-muhat)%*%solve(Sigmahat)%*%(mutilde-muhat) + log(det(Sigmahat)) - log(det(Sigmatilde)) + sum(diag(Sigmatilde%*%solve(Sigmahat))) - p
F.hat

Fc<-lavInspect(fitc, "fit")["fmin"]*2 #lavaan halfs the fit finction
FcB<- lavInspect(fitcB, "fit")["fmin"]*2

# lavInspect(fitcB, "implied")
# lavInspect(fit01, "implied")


rmsea.fimlc <-sqrt(Fc/dfh-1/n) 

cfi.fimlc<-1-(Fc-dfh/n)/(FcB-dfb/n)

rmsea.fimlc-0.1915484
cfi.fimlc-0.5378538
