library(lavaan)
######Study1
setwd("/Volumes/SP PHD U3/missing-data-project-2")
pop.mod1.4 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0*f2
f1 ~~ 1*f1
f2 ~~ 1*f2    
x1 ~~ .51*x1
x2 ~~ .51*x2
x3 ~~ .51*x3
x4 ~~ .51*x4
x5 ~~ .51*x5
x6 ~~ .51*x6
x7 ~~ .51*x7
x8 ~~  .51*x8
x9 ~~  .51*x9
x10 ~~  .51*x10
x11 ~~  .51*x11
x12 ~~ .51*x12
x11 ~~ 0.3*x12
x9 ~~0.3*x10
'

set.seed(234)
##FOR FOUR MISSING VARIABLES

#purpose: create missing data on x1,  x2, x3，x4.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCAR_4Var <- function(model, sample.nobs,  missing.percentage){
  data <- simulateData(model, sample.nobs=sample.nobs)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
  simuData[ind,9:12] <- NA
  simuData
}


sampMiss <- MCAR_4Var(pop.mod1.4, sample.nobs = 200, missing.percentage = 0.5)
sampMissData_study1_CR0.3_50PerMiss_n200 <-sampMiss
save(sampMissData_study1_CR0.3_50PerMiss_n200, file="sampMissData_study1_CR0.3_50PerMiss_n200.RData")




#####Study 2

pop.mod9 <- '     
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12
f1 ~~ 0.2*f2
f1 ~~ 1*f1
f2 ~~ 1*f2    
x1 ~~ .51*x1
x2 ~~ .51*x2
x3 ~~ .51*x3
x4 ~~ .51*x4
x5 ~~ .51*x5
x6 ~~ .51*x6
x7 ~~ .51*x7
x8 ~~ .51*x8
x9 ~~ .51*x9
x10 ~~ .51*x10
x11 ~~ .51*x11
x12 ~~ .51*x12
'

#Usage: only for this research.  Six variables has missing data; max number of missing patterns for six variables: x9, x10, x11 and x12
# Each variable with missing data has the given percentage of missing data. 

#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMaxPattern_6Var <- function(model, sample.nobs,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  for(i in 7:12){
    ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
    simuData[ind,i] <- NA
  }
  simuData
}

sampleData <- MCARMaxPattern_6Var(pop.mod9, sample.nobs = 500, missing.percentage=.5)
sampMissData_study2_FC0.2_50PerMiss_n500 <-sampleData
save(sampMissData_study2_FC0.2_50PerMiss_n500, file="sampMissData_study2_FC0.2_50PerMiss_n500.RData")
