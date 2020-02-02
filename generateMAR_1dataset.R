library(lavaan)

pop.mod <- '    
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

data <- simulateData(pop.mod, sample.nobs=1000000, seed=111)
simuCompleteData_CR <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                                  x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                                  x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"]) 
#just make sure the variables are in the right order

save(simuCompleteData_CR, file="simuCompleteData_CR.RData")



#creating missing data
missing.percentage <- 0.5

cutoff<- qnorm(missing.percentage, lower.tail = F)

simuCompleteData_CR[simuCompleteData_CR[,7] > cutoff, 9:12] <- NA  #Variable 7 is the conditioning variable

simuMARData_CR <- simuCompleteData_CR

save(simuMARData_CR, file="simuMARData_CR.RData")