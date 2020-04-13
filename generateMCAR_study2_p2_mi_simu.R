library(lavaan)
source("functions.R")
source("Models_WM.R") #done at n=200, 500, 1000

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







##FOR SIX MISSING VARIABLES

#purpose: create missing data on x7 to x12.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMinPattern_6Var <- function(model, sample.nobs=1000000,  missing.percentage){
  data <- simulateData(model, sample.nobs=sample.nobs,seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  ind <- as.logical(rbinom(sample.nobs, 1, missing.percentage))
  simuData[ind,7:12] <- NA
  simuData
}






#Usage: only for this research.  Six variables has missing data; max number of missing patterns for six variables: x9, x10, x11 and x12
# Each variable with missing data has the given percentage of missing data. 

#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMaxPattern_6Var <- function(model, sample.nobs=1000000,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  for(i in 7:12){
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
#var.with.missing: the number of variables with missing data; it can be 2, 4, 6
#simu.num: the number of simulation rounds
############ 
fit.ind.matrix.MCAR.simu <- function(pop.model.list, fitted.mod, sample.nobs = 1000000,  
                                     missing.percentage, missing.type, var.with.missing, 
                                     simu.num = 1000, num.of.imp = 20){
  fit.indices.list <- vector(mode="list", length=simu.num)
  for(j in 1:simu.num){
    fit.indices.MCAR <-matrix( nrow = 8, ncol = 0)
    
    for(i in 1:length(pop.model.list)){
      if (var.with.missing == 2){
        if(missing.type =="min"){
          simuData <- MCARMinPattern_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
        } else  {
          simuData <- MCARMaxPattern_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
        } 
      } else if(var.with.missing == 4) {
        if(missing.type =="min"){
          simuData <- MCARMinPattern_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
        } else  {
          simuData <- MCARMaxPattern_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
        } 
      } else  {
        if(missing.type =="min"){
          simuData <- MCARMinPattern_6Var(pop.model.list[[i]], sample.nobs, missing.percentage)
        } else  {
          simuData <- MCARMaxPattern_6Var(pop.model.list[[i]], sample.nobs, missing.percentage)
        } 
      }
      
      fit.ind.vector <- all.fit.mi(fitted.mod, dataset=simuData, num.of.imp1=num.of.imp)
      fit.indices.MCAR<- cbind(fit.indices.MCAR,fit.ind.vector)
    }
    
    colnames(fit.indices.MCAR) <-paste("FC =",c("1","0.9", "0.8" , "0.7", "0.6", "0.5", "0.4", "0.3","0.2"))
    fit.indices.MCAR <- round(fit.indices.MCAR, 8)
    fit.indices.list[[j]] <- fit.indices.MCAR
    print(j)
    
  }
  fit.indices.list
  
}

set.seed(111)




##### 2 variables with missing data #######################

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.20, missing.type = "min", 
                           var.with.missing = 2)

save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_MI_n1000, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_MI_n1000.RData")



fitMCAR_MinPat_50PerMiss_2VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.50, missing.type = "min", 
                           var.with.missing = 2)

save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_MI_n1000, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_MI_n1000.RData")










##### 4 variables with missing data #######################


fitMCAR_MinPat_20PerMiss_4VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.20, missing.type = "min", 
                           var.with.missing = 2)

save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_MI_n1000, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_MI_n1000.RData")



fitMCAR_MinPat_50PerMiss_4VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.50, missing.type = "min", 
                           var.with.missing = 2)

save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_MI_n1000, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_MI_n1000.RData")









########### 6 variables with missing ##################

fitMCAR_MinPat_20PerMiss_6VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.20, missing.type = "min", 
                           var.with.missing = 2)

save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_MI_n1000, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_MI_n1000.RData")



fitMCAR_MinPat_50PerMiss_6VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.50, missing.type = "min", 
                           var.with.missing = 2)

save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_MI_n1000, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_MI_n1000.RData")







#################################################################


################ MAX PATTERNS!! #####################

##### 2 variables with missing data #######################
fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.20, missing.type = "Max", 
                           var.with.missing = 2)

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_MI_n1000, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_MI_n1000.RData")



fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.50, missing.type = "Max", 
                           var.with.missing = 2)

save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_MI_n1000, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_MI_n1000.RData")










##### 4 variables with missing data #######################


fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.20, missing.type = "Max", 
                           var.with.missing = 2)

save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_MI_n1000, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_MI_n1000.RData")



fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.50, missing.type = "Max", 
                           var.with.missing = 2)

save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_MI_n1000, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_MI_n1000.RData")









########### 6 variables with missing ##################

fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.20, missing.type = "Max", 
                           var.with.missing = 2)

save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_MI_n1000, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_MI_n1000.RData")



fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_MI_n1000 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =1000,
                           missing.percentage = 0.50, missing.type = "Max", 
                           var.with.missing = 2)

save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_MI_n1000, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_MI_n1000.RData")

