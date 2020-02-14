library(lavaan)
source("functions.R")
source("Models_2CR_SF.R")

###MISSING ON x11-12 OR x9-12


###############USE THIS ##############################################################
#strong dependency

#Usage: FOR THIS RESEARCH ONLY. There need to be 12 Variables. 
#       Creating missing data on x11 and x12. Strong dependence:missing of x9 and x11 depends on x7; missing of x10 and x12 depends on x8.
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
  
  simuData[simuData[,7] > cutoff, 9:12] <- NA
  
  simuData
}







data <- simulateData(pop.mod3.4, sample.nobs=1000000, seed=111)
simuCompleteData_CR <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                       x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                       x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])

simuMARData_CR <- MARStrong_4Var(pop.mod3.4)

save(simuMARData_CR, file="simuMARData_CR.RData")
save(simuCompleteData_CR, file="simuCompleteData_CR.RData")


#Arguments:
#pop.model.list: a list of lavaan models for the population
#sample.nobs: numeric; sample size without missing data
#missing.percentage: numeric; a proportion of missing data
#missing.percentage: vector specifying which columns are missing
#missing.type: a character: "strong" or "weak"
fit.ind.matrix.MAR_4Var <- function(pop.model.list, fitted.mod, sample.nobs=1000000,  missing.percentage, missing.type){
  fit.indices.MAR <-matrix( nrow = 0, ncol = 12)
  
  for(i in 1:length(pop.model.list)){
    if(missing.type=="strong"){
      simuData <- MARStrong_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)
    } else {  simuData <- MARWeak_4Var(pop.model.list[[i]], sample.nobs, missing.percentage)}
    fit <- cfa(fitted.mod, data=simuData, missing="fiml", mimic="EQS")
    fit.indices.MAR<- rbind(fit.indices.MAR, lavInspect(fit, "fit")[c("fmin","rmsea","cfi",
                                                                      "srmr","gfi", "df", "chisq",
                                                                      "pvalue", "baseline.chisq", 
                                                                      "baseline.df", "rmsea.ci.lower", 
                                                                      "rmsea.ci.upper")])
  }
  fit.indices.MAR
}





