
library(lavaan)
library(semTools)
library(mice)


load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

#load("simuDatawithMiss2.RData") # slighly misspecified 
#For complete data, the population RMSEA and CFI are 0.04452902 and 0.9791809 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.03199867 and 0.9847884 respectively. 
dataset<-simuDatawithMiss[100:600, ] 
n <- nrow(dataset)

fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 z+ x9 +x10 + x11 + x12
f1 ~~ 1*f1
'


fit1<-cfa(model=fitted.mod,data=dataset,estimator="ML",missing="FIML") #normal data
fit1.sat<- lavaan:::lav_object_unrestricted(fit1, se=T)
parTable(fit1.sat)
Sigmatilde<-lavInspect(fit1,"sampstat")$cov #Sigmatilde 
mutilde<-lavInspect(fit1,"sampstat")$mean #Sigmatilde 
fiml.fit<-lavInspect(fit1,"fit")[c("rmsea","cfi")]  
df<-lavInspect(fit1,"fit")[c("df")] 
num.of.imp1 <- 20
imputeData.all <- mice(data=dataset, m=num.of.imp1, method="norm", printFlag=F)

par.table.list <- vector(mode="list", length=num.of.imp1)
rmsea.vector <- rep(NA,num.of.imp1)
cfi.vector <- rep(NA, num.of.imp1)
is.converged.vector <- rep(NA, num.of.imp1)
is.null.vcov.vector <- rep(NA, num.of.imp1)
chi.vector <- rep(NA, num.of.imp1)

for(i in 1:num.of.imp1){
  imputeData <- complete(imputeData.all,i)
  fit <- cfa(model=fitted.mod, data=imputeData)
  fit.ind <- lavInspect(fit, "fit")[c("rmsea", "cfi", "chisq")]
  rmsea.vector[i] <- fit.ind[c("rmsea")]
  cfi.vector[i] <- fit.ind[c("cfi")]
  chi.vector[i]<-fit.ind[c("chisq")]
  is.converged.vector[i] <- lavInspect(fit, "converged")
  is.null.vcov.vector[i] <- is.null(vcov(fit))
  par.table.list[[i]] <-partable(fit)
}
rmsea <- mean(rmsea.vector, na.rm=T)
cfi <- mean(cfi.vector, na.rm=T)
chi<- mean(chi.vector, na.rm=T)
is.converged <- mean(is.converged.vector)
is.null.vcov <- mean(is.null.vcov.vector)
fit.indices.vector <-round(c(rmsea, cfi, fiml.fit, chi,
                             is.converged, is.null.vcov),8)
names(fit.indices.vector) <- c("rmsea.mi", "cfi.mi", "rmsea.fiml", "cfi.fiml", "chi",
                               "is.converged", "is.null.vcov")

par.table.list2 <- vector(mode="list", length=num.of.imp1)
for (i in 1:num.of.imp1){
  par.table.list2[[i]] <- as.matrix(par.table.list[[i]][,13:15])
}
par.table.final <-cbind(par.table.list[[1]][,1:12],as.data.frame(list.mean(par.table.list2)))

fitc <- sem(par.table.final, sample.cov = Sigmatilde, sample.nobs=n,
            information="observed",meanstructure=F,sample.cov.rescale=FALSE,optim.method="none")
chi.prime <- lavInspect(fitc, "fit")["chisq"]
 
chi <- fit.indices.vector["chi"]
chi
r <- (num.of.imp1+1)/(df*(num.of.imp1-1))*(chi.prime-chi)
lavaan:::logLik(par.table.final)

fit.indices.vector

fit.mi<-sem.mi(model=fitted.mod,data=dataset,m=20, miPackage = "mice")
fit.mi@coefList
fit.mi@ParTableList
fit.mi@SampleStatsList
fit.mi@testList
?lavListInspect

fit.ind <- fitmeasures(fit.mi)[c("rmsea", "cfi","chisq")]
d3 <- lavTestLRT.mi(fit.mi,asymptotic = T, test="D3")
chi.d3 <- d3["chisq"]
df <- d3["df"]
lavTestLRT.mi(fit.mi, test="D2", pool.robust = F,asymptotic = T)
lavTestLRT.mi(fit.mi, test="D2", pool.robust = T,asymptotic = T)
k <- (chi/chi.d3)*df
sqrt((chi-k)/(n*df))




