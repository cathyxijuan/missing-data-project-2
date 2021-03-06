library(lavaan)
source("functions.R")
source("Models_WM.R")


#strong dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x11 and x12. Strong dependence:missing of x11 depends on x7; missing of x12 depends on x8
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARStrong_2Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  
  simuData[simuData[,1] > cutoff,7:8] <- NA
  
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
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  #create missing for x11
  ind <- which(simuData[,1] > cutoff)
  keep.log <- as.logical(sample(0:1,length(ind),replace=T, prob=c(0.25, 0.75))) #1=delete
  row.keep <- ind[keep.log]
  ind2 <- which(simuData[,1] < cutoff)
  keep.log2 <- as.logical(sample(0:1,length(ind2),replace=T, prob=c(0.75, 0.25))) #1=delete
  row.keep2 <- ind2[keep.log2]
  simuData[c(row.keep, row.keep2),7:8] <-NA ##Note the rows that are kept got deleted. So it really should be called row.delete.
  
  simuData
}




#strong dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x9, x10, x11 and x12. Strong dependence:missing of x9 and x11 depends on x7; missing of x10 and x12 depends on x8.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARStrong_4Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  
  simuData[simuData[,1] > cutoff, 7:10] <- NA
  
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
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  #create missing for x11
  ind <- which(simuData[,1] > cutoff)
  keep.log <- as.logical(sample(0:1,length(ind),replace=T, prob=c(0.25, 0.75))) #1=delete
  row.keep <- ind[keep.log]
  ind2 <- which(simuData[,1] < cutoff)
  keep.log2 <- as.logical(sample(0:1,length(ind2),replace=T, prob=c(0.75, 0.25))) #1=delete
  row.keep2 <- ind2[keep.log2]
  simuData[c(row.keep, row.keep2),7:10] <-NA ##Note the rows that are kept got deleted. So it really should be called row.delete.
  
  
  
  simuData
}


#strong dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x11 and x12. Strong dependence:missing of x9 and x11 depends on x7; missing of x10 and x12 depends on x8.
#Argument:
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARStrong_6Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  
  simuData[simuData[,1] > cutoff, 7:12] <- NA
  
  simuData
}







#weak dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x7 to x12. 
#       Weak dependence:missing of x9 and x11 depends on x7; missing of x10 and x12 depends on x8. 75% of data beyond a cutoff are eliminated.
#model: lavaan defined population model
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
MARWeak_6Var <- function(model, sample.nobs=1000000,  missing.percentage=0.5){
  data <- simulateData(model, sample.nobs=sample.nobs, seed=111)
  simuData <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                         x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                         x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])
  
  cutoff<- qnorm(missing.percentage, lower.tail = F)
  #create missing for x11
  ind <- which(simuData[,1] > cutoff)
  keep.log <- as.logical(sample(0:1,length(ind),replace=T, prob=c(0.25, 0.75))) #1=delete
  row.keep <- ind[keep.log]
  ind2 <- which(simuData[,1] < cutoff)
  keep.log2 <- as.logical(sample(0:1,length(ind2),replace=T, prob=c(0.75, 0.25))) #1=delete
  row.keep2 <- ind2[keep.log2]
  simuData[c(row.keep, row.keep2),7:12] <-NA ##Note the rows that are kept got deleted. So it really should be called row.delete.
  
  simuData
}



#Arguments:
#pop.model.list: a list of lavaan models for the population
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
#missing.type: a character: "strong" or "weak"
#var.with.missing: the number of variables with missing data; it can be 2, 4, 6
fit.ind.matrix.MAR <- function(pop.model.list, fitted.mod, sample.nobs=1000000,  
                                    missing.percentage, missing.type, var.with.missing){
  fit.indices.MAR.minPat <-matrix( nrow = 28, ncol = 0)
  
  for(i in 1:length(pop.model.list)){
    if (var.with.missing == 2){
      if(missing.type =="strong"){
        simuData <- MARStrong_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } else  {
        simuData <- MARWeak_2Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } 
    } else if(var.with.missing == 4) {
      if(missing.type =="strong"){
        simuData <- MARStrong_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } else  {
        simuData <-MARWeak_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } 
    } else  {
      if(missing.type =="strong"){
        simuData <- MARStrong_6Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } else  {
        simuData <- MARWeak_6Var(pop.model.list[[i]], sample.nobs, missing.percentage)
      } 
    }

    fit.ind.vector <- all.fit.approx.indices(fitted.mod, dataset=simuData)
    fit.indices.MAR.minPat<- cbind(fit.indices.MAR.minPat,fit.ind.vector)
  }
  colnames(fit.indices.MAR.minPat) <-paste("FC =",c("1","0.9", "0.8" , "0.7", "0.6", "0.5", "0.4", "0.3","0.2"))
  fit.indices.MAR.minPat
}








############2 variables with missing data########
# fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
#                                                             missing.percentage = 0.20, missing.type = "strong",
#                                                             var.with.missing = 2), 8)

#save(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_n1000000, file="fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_n1000000.RData")


# fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
#                                                                            missing.percentage = 0.50, missing.type = "strong",
#                                                                            var.with.missing = 2), 8)

#save(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_n1000000, file="fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_n1000000.RData")



fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                                                                           missing.percentage = 0.20, missing.type = "weak",
                                                                           var.with.missing = 2), 8)

save(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_n1000000 , file="fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_n1000000.RData")


fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                                                                           missing.percentage = 0.50, missing.type = "weak",
                                                                           var.with.missing = 2), 8)


save(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_n1000000 , file="fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_n1000000.RData")






#############4 variables missing ######################


# fitMAR_Strong_minPat_minPat_20PerMiss_4VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
#                                                                            missing.percentage = 0.20, missing.type = "strong",
#                                                                            var.with.missing = 4), 8)
#save(fitMAR_minPat_Strong_20PerMiss_4VarMiss_WM_n1000000 , file="fitMAR_minPat_Strong_20PerMiss_4VarMiss_WM_n1000000.RData")



# fitMAR_Strong_minPat_minPat_50PerMiss_4VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
#                                                                            missing.percentage = 0.50, missing.type = "strong",
#                                                                            var.with.missing = 4), 8)
#save(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_n1000000, file="fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_n1000000.RData")



fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                                                                         missing.percentage = 0.20, missing.type = "weak",
                                                                         var.with.missing = 4), 8)

save(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_n1000000 , file="fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_n1000000.RData")


fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                                                                         missing.percentage = 0.50, missing.type = "weak",
                                                                         var.with.missing = 4), 8)

save(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_n1000000, file="fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_n1000000.RData")









#################6 Variables with Missing Data##################################
# fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
#                                                                            missing.percentage = 0.20, missing.type = "strong",
#                                                                            var.with.missing = 6), 8)
#save(fitMAR_Strong_20PerMiss_6VarMiss_WM_n1000000 , file="fitMAR_Strong_20PerMiss_6VarMiss_WM_n1000000.RData")



# fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
#                                                                            missing.percentage = 0.50, missing.type = "strong",
#                                                                            var.with.missing = 6), 8)
#save(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_n1000000, file="fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_n1000000.RData")



fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                                                                         missing.percentage = 0.20, missing.type = "weak",
                                                                         var.with.missing = 6), 8)

save(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_n1000000 , file="fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_n1000000.RData")


fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_n1000000 <-   round(fit.ind.matrix.MAR(pop.model.list=pop.mod, fitted.mod=fitted.mod, 
                                                                         missing.percentage = 0.50, missing.type = "weak",
                                                                         var.with.missing = 6), 8)

save(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_n1000000, file="fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_n1000000.RData")
