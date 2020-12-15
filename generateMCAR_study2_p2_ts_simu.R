library(lavaan)
setwd("/Volumes/SP PHD U3/missing-data-project-2")
source("functions.R")
source("Models_WM.R") #done n=500; done n=1000, 200; n=150 done done 

### FOR TWO MISSING VARIABLES
#purpose: create missing data on x11,  x12.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCARMinPattern_2Var <- function(model, sample.nobs,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs) 
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
MCARMaxPattern_2Var <- function(model, sample.nobs,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs)
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
MCARMaxPattern_2Var <- function(model, sample.nobs,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs)
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
MCARMinPattern_4Var <- function(model, sample.nobs,  missing.percentage){
  data <- simulateData(model, sample.nobs=sample.nobs)
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
MCARMaxPattern_4Var <- function(model, sample.nobs,  missing.percentage=.5){
  missing.percentage <- missing.percentage
  data <- simulateData(model, sample.nobs=sample.nobs)
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
MCARMinPattern_6Var <- function(model, sample.nobs,  missing.percentage){
  data <- simulateData(model, sample.nobs=sample.nobs)
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


#Arguments:
#pop.model.list: a list of lavaan models for the population
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
##var.with.missing: the number of variables with missing data; it can be 2, 4 OR 6
##simu.num: number of simulation rounds
############ 
fit.components.simu  <- function(pop.model.list, fitted.mod, sample.nobs ,  
                                 missing.percentage, missing.type, var.with.missing, 
                                 simu.num = 1000){
  fit.components.list <- vector(mode="list", length=simu.num)
  for(j in 1:simu.num){
    fit.components <-matrix( nrow = 30, ncol = 0)
    
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
      
      fit.ind.vector <- ts.components(fitted.mod, dataset=simuData)
      fit.components<- cbind(fit.components,fit.ind.vector)
    }
    
    colnames(fit.components) <-paste("FC =",c("1","0.9", "0.8" , "0.7", "0.6", "0.5", "0.4", "0.3","0.2"))
    fit.components <- round(fit.components, 8)
    fit.components.list[[j]] <- fit.components
    print(j)
    
  }
  fit.components.list
  
}

set.seed(111)
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS")



##### zero percent missing
fitMCAR_0PerMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0, missing.type = "min", 
                      var.with.missing = 2)
fitMCAR_0PerMiss_WM_ts_n150<-ts.fit(fitMCAR_0PerMiss_WM_ts_compo_n150)
#load( file="fitMCAR_0PerMiss_WM_ts_compo_n150.RData")
#load( file="fitMCAR_0PerMiss_WM_ts_n150.RData")
fitMCAR_0PerMiss_WM_ts_checks_n150<-ts.checks(fitMCAR_0PerMiss_WM_ts_compo_n150,
                                                     fitMCAR_0PerMiss_WM_ts_n150)
save(fitMCAR_0PerMiss_WM_ts_compo_n150, file="fitMCAR_0PerMiss_WM_ts_compo_n150.RData")
save(fitMCAR_0PerMiss_WM_ts_n150, file="fitMCAR_0PerMiss_WM_ts_n150.RData")
save(fitMCAR_0PerMiss_WM_ts_checks_n150, file="fitMCAR_0PerMiss_WM_ts_checks_n150.RData")


#### min pattern##
##### 2 variables with missing data #######################

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.20, missing.type = "min", 
                      var.with.missing = 2)
fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n150)
#load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n150.RData")
#load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n150.RData")
fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n150,
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n150)

save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n150, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n150, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n150.RData")
save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n150, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n150.RData")




fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.50, missing.type = "min", 
                      var.with.missing = 2)
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n150)
#load( file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n150.RData")
#load( file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n150.RData")
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n150,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n150)
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n150, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n150, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n150.RData")
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n150, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n150.RData")



##### 4 variables with missing data #######################

fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.20, missing.type = "min", 
                      var.with.missing = 4)
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n150)
#load( file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n150.RData")
#load( file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n150.RData")
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n150,
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n150)
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n150, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n150, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n150.RData")
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n150, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n150.RData")



fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.50, missing.type = "min", 
                      var.with.missing = 4)
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n150)
#load( file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n150.RData")
#load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n150.RData")
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n150,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n150)

save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n150, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n150, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n150.RData")
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n150, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n150.RData")




##### 6 variables with missing data #######################

fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.20, missing.type = "min", 
                      var.with.missing = 6)
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n150)
#load( file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n150.RData")
#load( file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n150.RData")
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n150,
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n150)
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n150, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n150, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n150.RData")
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n150, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n150.RData")



fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.50, missing.type = "min", 
                      var.with.missing = 6)
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n150)
#load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n150.RData")
#load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n150.RData")
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n150,
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n150)

save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n150, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n150, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n150.RData")
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n150, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n150.RData")



####Max PATTERNS!!! #####



##### 2 variables with missing data #######################

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.20, missing.type = "max", 
                      var.with.missing = 2)
fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n150)
#load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n150.RData")
#load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n150.RData")
fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n150,
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n150)
save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n150, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n150, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n150.RData")
save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n150, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n150.RData")



fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.50, missing.type = "max", 
                      var.with.missing = 2)
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n150)
#load( file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n150.RData")
#load( file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n150.RData")
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n150,fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n150 )
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n150, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n150, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n150.RData")
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n150, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n150.RData")



##### 4 variables with missing data #######################

fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.20, missing.type = "max", 
                      var.with.missing = 4)
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n150)
#load( file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n150.RData")
#load( file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n150.RData")
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n150,
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n150)

save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n150, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n150, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n150.RData")
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n150, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n150.RData")

set.seed(100)
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.50, missing.type = "max", 
                      var.with.missing = 4)
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n150)
#load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n150.RData")
#load( file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n150.RData")
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n150<-
  ts.checks(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n150,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n150)
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n150, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n150, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n150.RData")
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n150, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n150.RData")




##### 6 variables with missing data #######################

fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n150<- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.20, missing.type = "max", 
                      var.with.missing = 6)
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n150)
#load( file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n150.RData")
#load( file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n150.RData")
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n150,
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n150)
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n150, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n150, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n150.RData")
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n150, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n150.RData")



fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150 <- 
  fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
                      missing.percentage = 0.50, missing.type = "max", 
                      var.with.missing = 6)


# set.seed(111)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_200 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 200)
# 
# set.seed(9087)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_250 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# set.seed(123)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_300 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# set.seed(98)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_400 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 100)
# 
# 
# set.seed(3498)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_450 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# set.seed(233498)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_500 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# set.seed(7698)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_550 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# set.seed(2345)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_600 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# set.seed(555)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_650 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# set.seed(399)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_700 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# set.seed(80999)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_750 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# set.seed(765)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_800 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# set.seed(787)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_850 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# set.seed(76565)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_900 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# set.seed(09345)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_950 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# set.seed(7865430)
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_1000 <- 
#   fit.components.simu(pop.model.list=pop.mod,fitted.mod=fitted.mod,sample.nobs =150,
#                       missing.percentage = 0.50, missing.type = "max", 
#                       var.with.missing = 6, simu.num = 50)
# 
# 
# fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150 <- c(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_200,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_250,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_300,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_400,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_450,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_500,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_550,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_600,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_650,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_700,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_750,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_800,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_850,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_900,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_950,
#                                                         fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150_1000)



fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n150<- ts.fit(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150)
#load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150.RData")
#load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n150.RData")
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n150<- 
  ts.checks(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150,
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n150)

save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n150.RData")
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n150, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n150.RData")
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n150, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n150.RData")




