setwd("/Volumes/SP PHD U3/missing-data-project-2")
library(lavaan)
source("functions.R")
#source("Models_2CR_SF.R") # done  n=200, 500, 1000
#source("Models_1CR_SF.R") # done n=200, 500 1000
#source("Models_1CR_DF.R")  # done n=200, 500 n=1000
#source("Models_2CR_DF.R")  # done n=500; n=200 Done n=1000


fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6
f2 =~ NA*x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
f2 ~~ 1*f2'


##0 factor correlation 
pop.mod1.0 <- '     
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
x8 ~~ .51*x8
x9 ~~ .51*x9
x10 ~~ .51*x10
x11 ~~ .51*x11
x12 ~~ .51*x12
'


pop.mod1.1 <- '    
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
x11 ~~ 0.1*x12
x9 ~~0.1*x10
'

pop.mod1.2 <- '    
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
x11 ~~ 0.2*x12
x9 ~~0.2*x10
'

pop.mod1.3 <- '    
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
x11 ~~ 0.4*x12
x9 ~~0.4*x10
'








##0.4 factor correlation 
pop.mod2.0 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.4*f2
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
'

pop.mod2.1 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.4*f2
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
x11 ~~ 0.1*x12
x9 ~~ 0.1*x10
'

pop.mod2.2 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.4*f2
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
x11 ~~ 0.2*x12
x9~~0.2*x10
'

pop.mod2.3 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.4*f2
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

pop.mod2.4 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.4*f2
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
x11 ~~ 0.4*x12
x9~~0.4*x10
'





##0.8 factor correlation 
pop.mod3.0 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.8*f2
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
'

pop.mod3.1 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.8*f2
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
x11 ~~ 0.1*x12
x9 ~~0.1*x10
'

pop.mod3.2 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.8*f2
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
x11 ~~ 0.2*x12
x9 ~~0.2*x10
'

pop.mod3.3 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.8*f2
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
x9 ~~ 0.3*x10
'

pop.mod3.4 <- '    
f1 =~ .7*x1 + .7*x2 + .7*x3 +.7*x4 + .7*x5 + .7*x6 
f2 =~ .7*x7 + .7*x8 + .7*x9 +.7*x10 + .7*x11 + .7*x12 
f1 ~~ 0.8*f2
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
x11 ~~ 0.4*x12
x9 ~~0.4*x10
'






pop.mod <- list( pop.mod3.0, pop.mod3.1, pop.mod3.2, pop.mod3.3, pop.mod3.4)









##MISSING IS ON x11 and x12 or x9-12.

### FOR TWO MISSING VARIABLES
#purpose: create missing data on x11,  x12.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCAR_2Var <- function(model, sample.nobs,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
  simuData[ind,11:12] <- NA
  simuData
}




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




#Usage: put fit indices for a list of models into a matrix

#Arguments:
#pop.model.list: a list of lavaan models for the population
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
##var.with.missing: the number of variables with missing data; it can be 2 or 4
##simu.num: number of simulation rounds
fit.imp.simu <- function(pop.model.list, fitted.mod, sample.nobs, 
                                missing.percentage, var.with.missing, simu.num=1000){
  
  fit.imp.list <- vector(mode="list", length=simu.num)
  for(j in 1:simu.num){
    fit.imp <-matrix( nrow = 4, ncol = 0)
    
    for(i in 1:length(pop.model.list)){
      if (var.with.missing==2){ simuData <- MCAR_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } else { simuData <- MCAR_4Var(pop.model.list[[i]], sample.nobs, missing.percentage) }
      fit.imp.vector <- fimlc.imp2(fitted.mod, dataset=simuData)
      fit.imp<- cbind(fit.imp,fit.imp.vector)
    }
    
    names.part2 <-paste("CR=", c("0", "0.1", "0.2", "0.3", "0.4"), sep="")
    colnames(fit.imp) <- names.part2
    fit.imp <- round(fit.imp, 8)
    fit.imp.list[[j]] <- fit.imp
    print(j)
  }
  fit.imp.list
  
  
}


set.seed(111)
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")









#####4 var with missing####

set.seed(111)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200 <- 
  fit.imp.simu(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                      missing.percentage = 0.20, 
               var.with.missing = 4, sample.nobs = 200)

list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200 )
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200 , 
     file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200.RData")
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200 <- fimlc.fit(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200)
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200, 
     file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200.RData")
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200 <- fimlc.checks(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200)
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200, 
     file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200.RData")




fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200 <- 
  fit.imp.simu(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                      missing.percentage = 0.50, var.with.missing = 4, sample.nobs = 200)
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200 , 
     file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200.RData")
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200 <- fimlc.fit(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200)
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200, 
     file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200.RData")
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200 <- fimlc.checks(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_imp_n200)
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200, 
     file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200.RData")


