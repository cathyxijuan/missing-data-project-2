library(lavaan)
source("functions.R")
source("Models_2CR_SF.R")
#source("Models_1CR_SF.R")
#source("Models_1CR_DF.R")
#source("Models_2CR_DF.R") #done 

##MISSING IS ON x11 and x12 or x9-12.


### FOR TWO MISSING VARIABLES
#purpose: create missing data on x11,  x12.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
MCAR_2Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
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
MCAR_4Var <- function(model, sample.nobs=1000000,  missing.percentage){
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
fit.ind.matrix.MCAR.simu <- function(pop.model.list, fitted.mod, sample.nobs = 1000000, 
                                     missing.percentage, var.with.missing, simu.num=1000,
                                     num.of.imp = 20){
  
  fit.indices.list <- vector(mode="list", length=simu.num)
  for(j in 1:simu.num){
    fit.indices.MCAR <-matrix( nrow = 8, ncol = 0)
    
    for(i in 1:length(pop.model.list)){
      if (var.with.missing==2){ simuData <- MCAR_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } else { simuData <- MCAR_4Var(pop.model.list[[i]], sample.nobs, missing.percentage) }
      fit.ind.vector <- all.fit.mi(fitted.mod, dataset=simuData, num.of.imp1=num.of.imp)
      fit.indices.MCAR<- cbind(fit.indices.MCAR,fit.ind.vector)
    }
    names.part1 <- rep(paste("FC=",c("0","0.4", "0.8" ), sep=""), each=5)
    names.part2 <-rep(paste("CR=", c("0", "0.1", "0.2", "0.3", "0.4"), sep=""),3)
    colnames(fit.indices.MCAR) <-paste(names.part1, names.part2, sep=";")
    fit.indices.MCAR <- round(fit.indices.MCAR, 8)
    fit.indices.list[[j]] <- fit.indices.MCAR
    print(j)
  }
  fit.indices.list
  
  
}


set.seed(111)

#####2 variables with missing data#####
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                           missing.percentage = 0.20, var.with.missing = 2, sample.nobs = 200)
save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200.RData")


fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                           missing.percentage = 0.50, var.with.missing = 2, sample.nobs = 200)
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200.RData")



#####4 variables with missing data#####



fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                           missing.percentage = 0.20, var.with.missing = 4, sample.nobs = 200)
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200.RData")


fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200 <- 
  fit.ind.matrix.MCAR.simu(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                           missing.percentage = 0.50, var.with.missing = 4, sample.nobs = 200)
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200.RData")
