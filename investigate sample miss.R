


library(lavaan)
######Study1
setwd("/Volumes/SP PHD U3/missing-data-project-2")
model <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 +.7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 1*f1
x11 ~~ 0.4*x12
x9 ~~0.3*x10
'
hypothesized.model  <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6+x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1' #study1


##FOR FOUR MISSING VARIABLES
sample.nobs= 1000000


data <- simulateData(model, sample.nobs=sample.nobs)
fit<-
  cfa(hypothesized.model,data=data,estimator="ML",missing="FIML") 

rmsea.fiml.c<-lavInspect(fit,"fit")["rmsea"]  #0.07709494

cfi.fiml.c<-lavInspect(fit,"fit")["cfi"] #0.914354

missing.percentage=0.5

simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
#ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
 # simuData[ind,9:12] <- NA


cutoff<- qnorm(missing.percentage, lower.tail = F)
simuData[simuData[,7] > cutoff,11:12] <- NA
  

fit<-
  cfa(hypothesized.model,data=  simuData,estimator="ML",missing="FIML") 
#fitting the hypothesized model

#------Compute FIML RMSEA and CFI -------------#
rmsea.fiml<-lavInspect(fit,"fit")["rmsea"]  
rmsea.fiml
cfi.fiml<-lavInspect(fit,"fit")["cfi"] 
rmsea.fiml.c
rmsea.fiml
cfi.fiml.c
cfi.fiml














