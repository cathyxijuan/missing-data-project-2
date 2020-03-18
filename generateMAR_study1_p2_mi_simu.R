library(lavaan)
source("functions.R")
source("Models_2CR_SF.R")
#source("Models_1CR_SF.R")
#source("Models_1CR_DF.R")
#source("Models_2CR_DF.R")

###MISSING ON x11-12 OR x9-12
#strong dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x11 and x12. Strong dependence:missing of x11 depends on x7; missing of x12 depends on x8
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARStrong_2Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  simuData[simuData[,7] > cutoff,11:12] <- NA
  simuData
}



#weak dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x11 and x12. Weak dependence:missing of x11 depends on x7; missing of x12 depends on x8. 75% of data beyond a cutoff are eliminated.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARWeak_2Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  #create missing for x11
  ind <- which(simuData[,7] > cutoff)
  keep.log <- as.logical(sample(0:1,length(ind),replace=T, prob=c(0.25, 0.75))) #1=delete
  row.keep <- ind[keep.log]
  ind2 <- which(simuData[,7] < cutoff)
  keep.log2 <- as.logical(sample(0:1,length(ind2),replace=T, prob=c(0.75, 0.25))) #1=delete
  row.keep2 <- ind2[keep.log2]
  simuData[c(row.keep, row.keep2),11:12] <-NA ##Note the rows that are kept got deleted. So it really should be called row.delete.
  
  simuData
}





#strong dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x11 and x12. Strong dependence:missing of x9 and x11 depends on x7; missing of x10 and x12 depends on x8.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARStrong_4Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  
  simuData[simuData[,7] > cutoff, 9:12] <- NA
  
  simuData
}







#weak dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x9, x10, x11 and x12. 
#       Weak dependence:missing of x9 and x11 depends on x7; missing of x10 and x12 depends on x8. 75% of data beyond a cutoff are eliminated.
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARWeak_4Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  #create missing for x11
  ind <- which(simuData[,7] > cutoff)
  keep.log <- as.logical(sample(0:1,length(ind),replace=T, prob=c(0.25, 0.75))) #1=delete
  row.keep <- ind[keep.log]
  ind2 <- which(simuData[,7] < cutoff)
  keep.log2 <- as.logical(sample(0:1,length(ind2),replace=T, prob=c(0.75, 0.25))) #1=delete
  row.keep2 <- ind2[keep.log2]
  simuData[c(row.keep, row.keep2),9:12] <-NA ##Note the rows that are kept got deleted. So it really should be called row.delete.
  simuData
}






#Usage: put fit indices for a list of models into a matrix

#Arguments:
#pop.model.list: a list of lavaan models for the population
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
##var.with.missing: the number of variables with missing data; it can be 2 or 4
##simu.num: number of simulation rounds
fit.ind.matrix.MAR.simu <- function(pop.model.list, fitted.mod, sample.nobs = 1000000, 
                                    missing.percentage,missing.type, var.with.missing, 
                                    simu.num=1000, num.of.imp = 20){
  
  fit.indices.list <- vector(mode="list", length=simu.num)
  for(j in 1:simu.num){fit.indices.MAR <-matrix( nrow = 8, ncol = 0)
  
  for(i in 1:length(pop.model.list)){
    if (var.with.missing == 2){
      if(missing.type =="strong"){
        simuData <- MARStrong_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } else  {
        simuData <- MARWeak_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } 
    } else {
      if(missing.type =="strong"){
        simuData <- MARStrong_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } else  {
        simuData <-MARWeak_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } 
    } 
    
    fit.ind.vector <- all.fit.mi(fitted.mod, dataset=simuData, num.of.imp1=num.of.imp)
    fit.indices.MAR<- cbind(fit.indices.MAR,fit.ind.vector)
  }
  names.part1 <- rep(paste("FC=",c("0","0.4", "0.8" ), sep=""), each=5)
  names.part2 <-rep(paste("CR=", c("0", "0.1", "0.2", "0.3", "0.4"), sep=""),3)
  colnames(fit.indices.MAR) <-paste(names.part1, names.part2, sep=";")
  fit.indices.MAR <- round( fit.indices.MAR, 8)
  fit.indices.list[[j]] <- fit.indices.MAR
  print(j)
  }
  
  fit.indices.list
  
}


set.seed(111)
#####2 Variables with missing value#################

fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.20, missing.type = "strong",
                          sample.nobs = 200,
                          var.with.missing = 2)
save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_MI_n200, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_MI_n200.RData")


fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.50, missing.type = "strong",
                          sample.nobs = 200,
                          var.with.missing = 2)
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_MI_n200, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_MI_n200.RData")


fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.20, missing.type = "weak",
                          sample.nobs = 200,
                          var.with.missing = 2)
save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_MI_n200, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_MI_n200.RData")


fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.50, missing.type = "weak",
                          sample.nobs = 200,
                          var.with.missing = 2)
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_MI_n200, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_MI_n200.RData")



#######4 variables with missing data #######


fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.20, missing.type = "strong",
                          sample.nobs = 200,
                          var.with.missing = 4)
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_MI_n200, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_MI_n200.RData")


fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.50, missing.type = "strong",
                          sample.nobs = 200,
                          var.with.missing = 4)
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_MI_n200, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_MI_n200.RData")


fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.20, missing.type = "weak",
                          sample.nobs = 200,
                          var.with.missing = 4)
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n200, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n200.RData")


fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n200 <-
  fit.ind.matrix.MAR.simu(pop.model.list=pop.mod, 
                          fitted.mod=fitted.mod, 
                          missing.percentage = 0.50, missing.type = "weak",
                          sample.nobs = 200,
                          var.with.missing = 4)
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n200, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n200.RData")
