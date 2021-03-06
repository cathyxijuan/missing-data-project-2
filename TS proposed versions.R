
library(lavaan)
library(matrixcalc)



load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

#load("simuDatawithMiss2.RData") # slighly misspecified 
#For complete data, the population RMSEA and CFI are 0.04452902 and 0.9791809 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.03199867 and 0.9847884 respectively. 
data1<-simuDatawithMiss[1:500,] 
n <- nrow(data1)




fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'
fitted.mod <- '
x1~1
x2~1
x3~1
x4~1
x5~1
x6~1
x7~1
x8~1
x9~1
x10~1
x11~1
x12~1
x1~~x1
x1~~x2
x1~~x3
x1~~x4
x1~~x5
x1~~x6
x1~~x7
x1~~x8
x1~~x9
x1~~x10
x1~~x11
x1~~x12
x2~~x2
x2~~x3
x2~~x4
x2~~x5
x2~~x6
x2~~x7
x2~~x8
x2~~x9
x2~~x10
x2~~x11
x2~~x12
x3~~x3
x3~~x4
x3~~x5
x3~~x6
x3~~x7
x3~~x8
x3~~x9
x3~~x10
x3~~x11
x3~~x12
x4~~x4
x4~~x5
x4~~x6
x4~~x7
x4~~x8
x4~~x9
x4~~x10
x4~~x11
x4~~x12
x5~~x5
x5~~x6
x5~~x7
x5~~x8
x5~~x9
x5~~x10
x5~~x11
x5~~x12
x6~~x6
x6~~x7
x6~~x8
x6~~x9
x6~~x10
x6~~x11
x6~~x12
x7~~x7
x7~~x8
x7~~x9
x7~~x10
x7~~x11
x7~~x12
x8~~x8
x8~~x9
x8~~x10
x8~~x11
x8~~x12
x9~~x9
x9~~x10
x9~~x11
x9~~x12
x10~~x10
x10~~x11
x10~~x12
x11~~x11
x11~~x12
x12~~x12
'


#####hypothesized model#####
#stage 1
fit1<-cfa(fitted.mod,data=data1,estimator="ML",missing="FIML")
fit1.sat <- lavaan:::lav_object_unrestricted(fit1, se=T) 
Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure
dfh<-lavInspect(fit1,"fit")["df"]
lavInspect(fit1,"information.observed")
#stage 2 
fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)
chisqc <- lavInspect(fit2, "fit")["chisq"]
lavInspect(fit1,"information.observed")==lavInspect(fit2,"information.observed")

#####independence model###
#stage 1
fit1B <-  lavaan:::lav_object_independence(fit1, se=T) 
dfB <- lavInspect(fit1B, "fit")["df"]
#stage 2
fit2B <- lavaan:::lav_object_independence(fit2, se=T) 
chisqcB <- lavInspect(fit2B, "fit")["chisq"]

#FIML verion
rmsea.fiml <- lavInspect(fit1, "fit")["rmsea"]
cfi.fiml <-lavInspect(fit1, "fit")["cfi"]


#uncorrected version
rmsea.uncor <- lavInspect(fit2, "fit")["rmsea"]
cfi.uncor <-lavInspect(fit2, "fit")["cfi"]


#####---------------------Hypothesized  model---------------
#####----------unstructured---------------
fit1@Options$h1.information = "unstructured" 
fit2@Options$h1.information = "unstructured" 

deltabreve <- lavInspect(fit2, "delta")



Wm.unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                          lavsamplestats = fit1@SampleStats, 
                                                          lavdata = fit1@Data, 
                                                          lavoptions = fit1@Options, 
                                                          lavimplied = fit1@implied,
                                                          lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]



B1.unstr <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                            lavsamplestats = fit1@SampleStats, 
                                                            lavdata = fit1@Data,
                                                            lavoptions = fit1@Options, 
                                                            lavimplied = fit1@implied,
                                                            lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]



Wc_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                 lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                 lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                 lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]


#####-----------structured---------
fit2@Options$h1.information = "structured" 


Wc_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                     lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                     lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                     lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]




Wmi.unstr <-solve(Wm.unstr)
Gamma <- Wmi.unstr %*% B1.unstr %*% Wmi.unstr  
Gamma[1:5,1:5]


# Saturated model is always a correctly specified model. In this case, this triple product may not be necessary; but in small samples, it may still be necessary.  
#Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
#This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method

Uc.unstr <- Wc_unstr-Wc_unstr%*%deltabreve%*%solve(t(deltabreve)%*%Wc_unstr%*%deltabreve)%*%t(deltabreve)%*%Wc_unstr
Uc.str <- Wc_str-Wc_str%*%deltabreve%*%solve(t(deltabreve)%*%Wc_str%*%deltabreve)%*%t(deltabreve)%*%Wc_str

H<- (solve(t(deltabreve)%*%Wc_str%*%deltabreve))
H[1:5,1:5]
Wc_str[1:6, 1:6]*2
Wc_unstr[1:6, 1:6]*2
(t(deltabreve)%*%Wc_str)*2
c.unstr <- lav_matrix_trace(Uc.unstr%*%Gamma)

c.str <- lav_matrix_trace(Uc.str%*%Gamma)
 



#####---------------------Baseline  model---------------
#####----------unstructured---------------
fit2B@Options$h1.information = "unstructured" 

deltabreveB <- lavInspect(fit2B, "delta")

WcB_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2B@Model,
                                                        lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
                                                        lavoptions = fit2B@Options, lavimplied = fit2B@implied,
                                                        lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]

#####-----------structured---------
fit2B@Options$h1.information = "structured" 


WcB_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2B@Model,
                                                      lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
                                                      lavoptions = fit2B@Options, lavimplied = fit2B@implied,
                                                      lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]



UcB.unstr <- WcB_unstr-WcB_unstr%*%deltabreveB%*%solve(t(deltabreveB)%*%WcB_unstr%*%deltabreveB)%*%t(deltabreveB)%*%WcB_unstr
UcB.str <- WcB_str-WcB_str%*%deltabreveB%*%solve(t(deltabreveB)%*%WcB_str%*%deltabreveB)%*%t(deltabreveB)%*%WcB_str

cB.unstr <- lav_matrix_trace(UcB.unstr%*%Gamma)

cB.str <- lav_matrix_trace(UcB.str%*%Gamma)




######components out ########
c.cBs <- c(c.unstr, c.str, cB.unstr, cB.str)
c.cBs

pos.def.weight <- c(is.positive.definite(x=round(Wm.unstr, 6)), 
                    is.positive.definite(x=round(Wc_unstr, 6)), 
                    is.positive.definite(x=round(Wc_str, 6)), 
                    is.positive.definite(x=round(WcB_unstr, 6)), 
                    is.positive.definite(x=round(WcB_str, 6)))

pos.def.implied <-c(is.positive.definite(x=round(inspect(fit1, "implied")$cov,6)), 
                    is.positive.definite(x=round(inspect(fit2, "implied")$cov,6)),
                    is.positive.definite(x=round(inspect(fit1B, "implied")$cov,6)),
                    is.positive.definite(x=round(inspect(fit2B, "implied")$cov,6)))


pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fit2, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fit1B, "vcov"), 6)),
                  is.positive.definite(round(inspect(fit2B, "vcov"), 6)))

mod.converge <- c(inspect(fit1, "converged"), 
                  inspect(fit2, "converged"), 
                  inspect(fit1B, "converged"),
                  inspect(fit2B, "converged"))

fit.ind <- c(rmsea.fiml,
         cfi.fiml,
         rmsea.uncor,
         cfi.uncor)

dfs <- c(dfh,dfB)
chis <- c(chisqc, chisqcB)


first.out <- c(fit.ind, n, dfs, chis, c.cBs, pos.def.weight, pos.def.implied, pos.def.vcov, mod.converge )
first.out <- round(first.out, 6)
names(first.out) <- c("rmsea.fiml", "cfi.fiml","rmsea.uncor","cfi.uncor","n",
                      "dfh", "dfB", "chisqc", "chisqcB","c.unstr", "c.str", "cB.unstr", "cB.str",
                      "Wm.unstr.pos.def", "Wc_unstr.pos.def","Wc_str.pos.def", 
                    "WcB_unstr.pos.def",   "WcB_str.pos.def", 
                    "fit1.imp.pos.def",  "fit2.imp.pos.def",
                    "fit1B.imp.pos.def",  "fit2B.imp.pos.def",
                    "fit1.vcov.pos.def",  "fit2.vcov.pos.def",
                    "fit1B.vcov.pos.def",  "fit2B.vcov.pos.def",
                    "fit1.converge",  "fit2.converge",
                    "fit1B.converge",  "fit2B.converge")



######### TS fit indices #####

#RMSEA
# 
# if (Fc/dfh-c.unstr/(dfh*n) < 0 ) { 
#   rmsea.cor.unstr <-  0} else {
#     rmsea.cor.unstr <-sqrt(Fc/dfh-c.unstr/(dfh*n))
#   }

rmsea.cor.unstr <-sqrt((chisqc-c.unstr)/(dfh*n))




# 
# if (Fc/dfh-c.str/(dfh*n) < 0 ) { 
#   rmsea.cor.str <-  0} else {
#     rmsea.cor.str <-sqrt(Fc/dfh-c.str/(dfh*n))
#   }

rmsea.cor.str <-sqrt((chisqc-c.str)/(dfh*n))


#CFI


cfi.cor.unstr <- 1 - (chisqc - c.unstr)/(chisqcB - cB.unstr)
cfi.cor.str <- 1 - (chisqc - c.str)/(chisqcB - cB.str)



#-------------Comparison of Proposed Indices--------------------------------------#
RMSEA <- c(rmsea.fiml, rmsea.uncor, rmsea.cor.str, 
           rmsea.cor.unstr)


CFI <- c(cfi.fiml, cfi.uncor, cfi.cor.str, 
         cfi.cor.unstr)

results <- data.frame(RMSEA, CFI)
row.names(results) <- c("fiml", "uncor.ts", "cor.str.ts", 
                        "cor.unstr.ts")
results
