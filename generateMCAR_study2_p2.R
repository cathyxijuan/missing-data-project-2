library(lavaan)
source("functions.R")
source("Models_WM.R")
load("fitNoMissingShort_WM.RData")
fitNoMissingShort_WM
### FOR TWO MISSING VARIABLES
#purpose: create missing data on x11,  x12.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMinPattern_2Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs,seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
  simuData[ind,7:8] <- NA
  simuData
}



#Usage: only for this research.  Two variables has missing data; maximum number of missing patterns for two variables: x11 and x12
# Each variable with missing data has the given percentage of missing data. 

#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMaxPattern_2Var <- function(model, sample.nobs=1000000,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  for(i in 7:8){
    ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
    simuData[ind,i] <- NA
  }
  simuData
}


#Usage: only for this research.  Two variables has missing data; maximum number of missing patterns for two variables: x11 and x12
# Each variable with missing data has the given percentage of missing data. 

#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMaxPattern_2Var <- function(model, sample.nobs=1000000,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  for(i in 7:8){
    ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
    simuData[ind,i] <- NA
  }
  simuData
}



#Usage: put fit indices for a list of models into a matrix

#Arguments:
#pop.model.list: a list of lavaan models for the population
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
#missing.type: a character: "min", "max"
############ 
fit.ind.matrix.MCAR_2Var <- function(pop.model.list, fitted.mod, sample.nobs = 1000000,  missing.percentage, missing.type){
  fit.indices.MCAR <-matrix( nrow = 12, ncol = 0)
  
  for(i in 1:length(pop.model.list)){
    if(missing.type =="min"){
      simuData <- MCARMinPattern_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)} 
    else  {
      simuData <- MCARMaxPattern_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
    } 
    fit.ind.vector <- all.fit.approx.indices(fitted.mod, dataset=simuData)
    fit.indices.MCAR<- cbind(fit.indices.MCAR,fit.ind.vector)
  }
  
 colnames(fit.indices.MCAR) <-paste("FC =",c("1","0.9", "0.8" , "0.7", "0.6", "0.5", "0.4", "0.3","0.2"))
 fit.indices.MCAR
  
}




##FOR FOUR MISSING VARIABLES

#purpose: create missing data on x9 to x12.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMinPattern_4Var <- function(model, sample.nobs=1000000,  missing.percentage){
  data <- simulateData(model, sample.nobs=sample.nobs,seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
  simuData[ind,7:10] <- NA
  simuData
}


#Usage: only for this research.  Four variables has missing data; max number of missing patterns for four variables: x9, x10, x11 and x12
# Each variable with missing data has the given percentage of missing data. 

#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMaxPattern_4Var <- function(model, sample.nobs=1000000,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  for(i in 7:10){
    ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
    simuData[ind,i] <- NA
  }
  simuData
}





#Usage: put fit indices for a list of models into a matrix

#Arguments:
#pop.model.list: a list of lavaan models for the population
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
#missing.type: a character: "min", "max"
############ 
fit.ind.matrix.MCAR_4Var <- function(pop.model.list, fitted.mod, sample.nobs = 1000000,  missing.percentage, missing.type){
  fit.indices.MCAR <-matrix( nrow = 12, ncol = 0)
  
  for(i in 1:length(pop.model.list)){
    if(missing.type =="min"){
      simuData <- MCARMinPattern_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)} 
    else  {
      simuData <- MCARMaxPattern_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
    } 
    fit.ind.vector <- all.fit.approx.indices(fitted.mod, dataset=simuData)
    fit.indices.MCAR<- cbind(fit.indices.MCAR,fit.ind.vector)
  }
  
  colnames(fit.indices.MCAR) <-paste("FC =",c("1","0.9", "0.8" , "0.7", "0.6", "0.5", "0.4", "0.3","0.2"))
  fit.indices.MCAR
  
}







# fitMCAR_MinPat_20PerMiss_2VarMiss_WM_n100000 <-
#   fit.ind.matrix.MCAR_2Var(pop.model.list=pop.mod,
#                            fitted.mod=fitted.mod,sample.nobs = 1000000,
#                            missing.percentage = 0.20, missing.type = "min")
# 
# 
# fitMCAR_MinPat_50PerMiss_2VarMiss_WM_n100000 <-
#   fit.ind.matrix.MCAR_2Var(pop.model.list=pop.mod,
#                            fitted.mod=fitted.mod,sample.nobs = 1000000,
#                            missing.percentage = 0.50, missing.type = "min")

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_n100000 <- 
  fit.ind.matrix.MCAR_2Var(pop.model.list=pop.mod, 
                           fitted.mod=fitted.mod,sample.nobs = 1000000,
                           missing.percentage = 0.20, missing.type = "max")
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n100000 <- round(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n100000 , 8)


# fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n100000 <- 
#   fit.ind.matrix.MCAR_2Var(pop.model.list=pop.mod, 
#                            fitted.mod=fitted.mod,sample.nobs = 1000000,
#                            missing.percentage = 0.50, missing.type = "max")
# fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n100000 <- round(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n100000 , 8)


fitMCAR_MinPat_20PerMiss_4VarMiss_WM_n100000 <-
  fit.ind.matrix.MCAR_4Var(pop.model.list=pop.mod,
                           fitted.mod=fitted.mod,sample.nobs = 1000000,
                           missing.percentage = 0.20, missing.type = "min")


fitMCAR_MinPat_50PerMiss_4VarMiss_WM_n100000 <-
  fit.ind.matrix.MCAR_4Var(pop.model.list=pop.mod,
                           fitted.mod=fitted.mod,sample.nobs = 1000000,
                           missing.percentage = 0.50, missing.type = "min")






#save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n100000 , file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n100000.RData")

#save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_n100000, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_n100000.RData")
#save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_n100000, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_n100000.RData")

