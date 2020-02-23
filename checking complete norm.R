#Code for new fit indices with incomplete data, NORMAL AND NONNORMAL DATA 
#install.packages("lavaan", repos = "http://www.da.ugent.be", type = "source") 
#use development version (0.6-6.1508)

#let's compare both mimic=EQS and default (no mimic, which probalby means Mplus)

library(lavaan)
#source("functions_missing_afis.R")
#---------------------------------------------------------------------------------------#
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 


load("simuDataComplete.RData") #this is N=1,000,000
data1 <-simuDataComplete[1:1000,] #N=1000
n <- nrow(data1)



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 
f2 =~ NA*x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
f2 ~~ 1*f2
f1 ~~ f2
'

fit1<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="FIML")

Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure

#fit1@Options$h1.information=="structured" #this is the default, so this line is not necessary, but keep here to remind
Wm <- lavaan:::lav_model_h1_information_expected(lavmodel = fit1@Model,
                                                 lavsamplestats = fit1@SampleStats, 
                                                 lavdata = fit1@Data, 
                                                 lavoptions = fit1@Options, 
                                                 lavimplied = fit1@implied,
                                                 lavh1 = fit1@h1, 
                                                 lavcache = fit1@Cache)[[1]]
round(Wm, 4)
dim(Wm)


B1 <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                   lavsamplestats = fit1@SampleStats, 
                                                   lavdata = fit1@Data,
                                                   lavoptions = fit1@Options, 
                                                   lavimplied = fit1@implied,
                                                   lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
Wmi<-solve(Wm)

Gamma <- Wmi %*% B1 %*% Wmi #evaluated using the model in the first step 




delta <- lavInspect(fit1, "delta")
dim(delta)

Wc <- lavaan:::lav_model_h1_information_expected(lavmodel = fit1@Model,
                                                 lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                 lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                 lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
dim(Wc)

Uc <- Wc-Wc%*%delta%*%solve(t(delta)%*%Wc%*%delta)%*%t(delta)%*%Wc

c <- lav_matrix_trace(Uc%*%Gamma)
c

inspect(fit1, "fit")["df"]
