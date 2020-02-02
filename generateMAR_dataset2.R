library(lavaan)


pop.mod <- '     
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

fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'


data <- simulateData(pop.mod, sample.nobs=1000000, seed=111)
simuCompleteData_WM <- data.frame(x1=data[,"x1"], x2=data[,"x2"], x3=data[,"x3"], x4=data[,"x4"],
                                  x5=data[,"x5"], x6=data[,"x6"], x7=data[,"x7"], x8=data[,"x8"],
                                  x9=data[,"x9"], x10=data[,"x10"], x11=data[,"x11"], x12=data[,"x12"])

#save(simuCompleteData_WM, file="simuCompleteData_WM.RData") 
#uncomment it if you want to save the file



# creating missing data 

missing.percentage <- 0.5
simuCompleteData <- simuCompleteData_WM #making a duplicate copy of the complete data

cutoff<- qnorm(missing.percentage, lower.tail = F)

for(i in 1:6){
  simuCompleteData[simuCompleteData[,i] > cutoff,(i+6)] <- NA}

simuMARData_WM <- simuCompleteData

#save(simuMARData_WM, file="simuMARData_WM.RData")
#uncomment it if you want to save the file


#output 
simuCompleteData_WM  #complete data
simuMARData_WM       #missing data

