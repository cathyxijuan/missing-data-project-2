
require(lavaan)

library(psych)
library(MVN)


load("data2019s.original.Likert.RData") 
real.data <- data2019s.original.Likert
all.na <- which(rowSums(is.na(real.data))==10)
length(all.na)
real.data <- real.data[-all.na,]
#View(real.data)
nrow(real.data)


head(real.data)
describe(real.data)
nonnormal <- mvn(data=real.data, mvnTest = "mardia")
nonnormal
nrow(real.data)
comp <- real.data[complete.cases(real.data),]
nrow(comp) 
#View(real.data)
percent.missing <-(nrow(real.data)- nrow(comp))/nrow(real.data)

hist(real.data$q1)
hist(real.data$q2)
hist(real.data$q3)
hist(real.data$q4)
hist(real.data$q5)
hist(real.data$q6)
hist(real.data$q7)
hist(real.data$q8)
hist(real.data$q9)
hist(real.data$q10)
cor(comp)

incomp <- real.data 
#incomp[1:50, 1:3] <- NA
#incomp[51:100, 4:7] <- NA
#incomp[101:150, 8:10] <- NA

incomp[181:220, 8:10] <- NA
sum(complete.cases(incomp))



incomp <- comp
incomp[ incomp[,1] >=5, 6] <-NA
incomp[ incomp[,2] >=5, 7] <-NA
incomp[ incomp[,3] >=4, 8] <-NA
incomp[ incomp[,4] >=4, 9] <-NA
incomp[ incomp[,5] >=4, 10] <-NA
original.mis <- complete.cases(real.data)==F
original.miss.data <- real.data[original.mis,]
incomp <- rbind(incomp , original.miss.data)
sum(complete.cases(incomp))



hypothesized.model <- '     
f1 =~ NA*q1 + q2 + q3 +q4 + q5 + q6 + q7 + q8 + q9 +q10
f1 ~~ 1*f1
reverse =~ NA*q3+q5+q8+q9+q10
reverse ~~1*reverse 
f1~~0*reverse
'


fit<-
  cfa(hypothesized.model,data=real.data,estimator="ML",missing="FIML") 

rmsea.fiml<-lavInspect(fit,"fit")["rmsea"]  
cfi.fiml<-lavInspect(fit,"fit")["cfi"] 
rmsea.fiml  
cfi.fiml 



fit<-
  cfa(hypothesized.model,data=real.data,estimator="MLM") 

rmsea.fiml<-lavInspect(fit,"fit")["rmsea.robust"]  
cfi.fiml<-lavInspect(fit,"fit")["cfi.robust"] 
rmsea.fiml  
cfi.fiml 


fit<-
  cfa(hypothesized.model,data=incomp,estimator="ML",missing="FIML") 
rmsea.fiml<-lavInspect(fit,"fit")["rmsea"]  
cfi.fiml<-lavInspect(fit,"fit")["cfi"] 
rmsea.fiml
cfi.fiml











#-------FIMLC RMSEA and CFI----#
n <-nrow(incomp)
df<-lavInspect(fit,"fit")["df"] 
#df for hypothesized model

Sigmahat<-fitted.values(fit)$cov 
#Sigma-hat (for hypothesized model)

muhat<-fitted.values(fit)$mean 
#mu-hat (for hypothesized)

Sigmatilde<-lavInspect(fit,"sampstat")$cov 
#Sigma-tilde (for saturated model)

mutilde<-lavInspect(fit,"sampstat")$mean 
#mu-tilde (for saturated model)

fitB<- lavaan:::lav_object_independence(fit, se=T) 
#fitting the baseline model 

dfB<-lavInspect(fitB,"fit")["df"] 
#df for baseline model

SigmahatB<-fitted.values(fitB)$cov 
#Sigma-hat for baseline model 
muhatB<-fitted.values(fitB)$mean #mu-hat for baseline model

#---substitute FIML parameter estimates into the complete data fit function; 
#set optim.method="none" to prevent any further iterations---------# 

fitc <- sem(parTable(fit), sample.cov = Sigmatilde,
            sample.mean=mutilde, sample.nobs=n,
            information="observed",meanstructure=TRUE,
            sample.cov.rescale=FALSE,optim.method="none")

fitcB <- sem(parTable(fitB), sample.cov = Sigmatilde,
             sample.mean=mutilde, sample.nobs=n,
             information="observed",meanstructure=TRUE,
             sample.cov.rescale=FALSE,optim.method="none")


Fmin<-lavInspect(fitc, "fit")["fmin"]*2 
#fit function minimum; lavaan halves the fit finction

FminB<- lavInspect(fitcB, "fit")["fmin"]*2


#--Compute FIMLC RMSEA and CFI without small sample corrections (i.e.,V0)-#

rmsea.fimlc.v0 <- sqrt(max((Fmin-df/n)/df, 0))
cfi.fimlc.v0 <- 1 - max((Fmin-df/n)/df, 0)/max((FminB-dfB/n)/dfB,(Fmin-df/n)/df, 0)






#---compute small sample corrections for V1-V6-------#

#----Hypothesized Model------#
delta <- lavInspect(fit, "delta") 
#this is the matrix of model derivatives. 
#Specifically, this matrix contains the derivative of each element in the covariance matrix with respect to the model parameters in the hypothesized model
#The dimension of this matrix is 90 by 36, where 36 is the number of parameters in the hypothesized model

#--structured----#
fit@Options$h1.information = "structured" 
fitc@Options$h1.information = "structured" 

Wm_str <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fit@Model,lavsamplestats = fit@SampleStats, 
    lavdata = fit@Data, lavoptions = fit@Options, 
    lavimplied = fit@implied, lavh1 = fit@h1, 
    lavcache = fit@Cache)[[1]] 
#This is the FIML weight matrix or the weight matrix for the saturated model. 
#The dimension for this matrix is 90 by 90 where 90 is the number of unique elements in the covariance matrix



Wc.obs_str <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fitc@Model, lavsamplestats = fitc@SampleStats,
    lavdata = fitc@Data, lavoptions = fitc@Options,
    lavimplied = fitc@implied,
    lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]

Wc.exp_str <- 
  lavaan:::lav_model_h1_information_expected(
    lavmodel = fitc@Model,  lavsamplestats = fitc@SampleStats,
    lavdata = fitc@Data,  lavoptions = fitc@Options, 
    lavimplied = fitc@implied,
    lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]


#-------------saturated------------------------#
fit@Options$h1.information = "unstructured" 
fitc@Options$h1.information = "unstructured" 
Wm_unstr <-
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fit@Model,  lavsamplestats = fit@SampleStats, 
    lavdata = fit@Data, lavoptions = fit@Options, 
    lavimplied = fit@implied,
    lavh1 = fit@h1, lavcache = fit@Cache)[[1]]

V_unstr <- 
  lavaan:::lav_model_h1_information_firstorder(
    lavmodel = fit@Model,lavsamplestats = fit@SampleStats, 
    lavdata = fit@Data,lavoptions = fit@Options,
    lavimplied = fit@implied,
    lavh1 = fit@h1, lavcache = fit@Cache)[[1]]


Wc.obs_unstr <-
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fitc@Model,
    lavsamplestats = fitc@SampleStats, lavdata = fitc@Data, 
    lavoptions = fitc@Options, lavimplied = fitc@implied,
    lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]


Wmi_str<-solve(Wm_str)
Wmi_unstr<-solve(Wm_unstr)
Gamma <- Wmi_unstr %*% V_unstr %*% Wmi_unstr 
E.inv_str <-solve(t(delta) %*% Wm_str%*% delta) 
U_str <- Wm_str - 
  Wm_str %*% delta %*% E.inv_str %*% t(delta)%*%Wm_str

E.inv_unstr <-solve(t(delta) %*% Wm_unstr%*% delta) 
U_unstr <- Wm_unstr -
  Wm_unstr %*% delta %*% E.inv_unstr %*% t(delta)%*%Wm_unstr




k.fimlc.v1 <-
  sum(diag(U_str%*%Wmi_str%*%
             Wc.obs_str%*%Wmi_str%*%U_str%*%Gamma))
k.fimlc.v2 <-
  sum(diag(U_str%*%Wmi_str%*%
             Wc.exp_str%*%Wmi_str%*%U_str%*%Gamma)) 
k.fimlc.v3 <-
  sum(diag(U_unstr%*%Wmi_unstr%*%
             Wc.obs_unstr%*%Wmi_unstr%*%U_unstr%*%Gamma)) 
k.fimlc.v4 <- 
  sum(diag(Wc.obs_str%*%
             Wmi_str%*%U_str%*%Wmi_str))
k.fimlc.v5 <- 
  sum(diag(Wc.exp_str%*%
             Wmi_str%*%U_str%*%Wmi_str))
k.fimlc.v6 <- 
  sum(diag(Wc.obs_unstr%*%
             Wmi_unstr%*%U_unstr%*%Wmi_unstr)) 



rmsea.fimlc.v1 <- sqrt(max((Fmin-k.fimlc.v1/n)/df, 0))
rmsea.fimlc.v2 <- sqrt(max((Fmin-k.fimlc.v2/n)/df, 0))
rmsea.fimlc.v3 <- sqrt(max((Fmin-k.fimlc.v3/n)/df, 0))
rmsea.fimlc.v4 <- sqrt(max((Fmin-k.fimlc.v4/n)/df, 0))
rmsea.fimlc.v5 <- sqrt(max((Fmin-k.fimlc.v5/n)/df, 0))
rmsea.fimlc.v6 <- sqrt(max((Fmin-k.fimlc.v6/n)/df, 0))


#--------------Baseline Model-----------#
deltab <- lavInspect(fitB, "delta")
#----structured------#

fitB@Options$h1.information = "structured" 
fitcB@Options$h1.information = "structured" 

WmB_str <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fitB@Model, lavsamplestats = fitB@SampleStats, 
    lavdata = fitB@Data, lavoptions = fitB@Options, 
    lavimplied = fitB@implied, lavh1 = fitB@h1,
    lavcache = fitB@Cache)[[1]]


WcB.obs_str <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fitcB@Model,lavsamplestats = fitcB@SampleStats, 
    lavdata = fitcB@Data,  lavoptions = fitcB@Options, 
    lavimplied = fitcB@implied, lavh1 = fitcB@h1, 
    lavcache = fitcB@Cache)[[1]]

WcB.exp_str <- 
  lavaan:::lav_model_h1_information_expected(
    lavmodel = fitcB@Model,lavsamplestats = fitcB@SampleStats, 
    lavdata = fitcB@Data,  lavoptions = fitcB@Options, 
    lavimplied = fitcB@implied, lavh1 = fitcB@h1, 
    lavcache = fitcB@Cache)[[1]]

WmBi_str<-solve(WmB_str)


E.inv.b_str <- solve(t(deltab) %*% WmB_str%*% deltab)
Ub_str <- WmB_str -
  WmB_str %*% deltab %*% E.inv.b_str %*% t(deltab)%*%WmB_str

E.inv.b_unstr <- solve(t(deltab) %*% Wm_unstr%*% deltab)
Ub_unstr <- Wm_unstr -
  Wm_unstr %*% deltab %*% E.inv.b_unstr %*% t(deltab)%*%Wm_unstr 


kB.fimlc.v1 <-
  sum(diag(Ub_str%*%WmBi_str%*%
             WcB.obs_str%*%WmBi_str%*%Ub_str%*%Gamma)) 
kB.fimlc.v2 <-
  sum(diag(Ub_str%*%WmBi_str%*%
             WcB.exp_str%*%WmBi_str%*%Ub_str%*%Gamma))
kB.fimlc.v3 <-
  sum(diag(Ub_unstr%*%Wmi_unstr%*%
             Wc.obs_unstr%*%Wmi_unstr%*%Ub_unstr%*%Gamma)) 
kB.fimlc.v4 <-
  sum(diag(WcB.obs_str%*%WmBi_str%*%
             Ub_str%*%WmBi_str))
kB.fimlc.v5 <- 
  sum(diag(WcB.exp_str%*%WmBi_str%*%
             Ub_str%*%WmBi_str))
kB.fimlc.v6 <- 
  sum(diag(Wc.obs_unstr%*%Wmi_unstr%*%
             Ub_unstr%*%Wmi_unstr)) 


#-compute FIMLC RMSEA and CFI with small sample corrections(i.e.,V1-V6)-# 
rmsea.fimlc.v1 <- sqrt(max((Fmin-k.fimlc.v1/n)/df, 0))
rmsea.fimlc.v2 <- sqrt(max((Fmin-k.fimlc.v2/n)/df, 0))
rmsea.fimlc.v3 <- sqrt(max((Fmin-k.fimlc.v3/n)/df, 0))
rmsea.fimlc.v4 <- sqrt(max((Fmin-k.fimlc.v4/n)/df, 0))
rmsea.fimlc.v5 <- sqrt(max((Fmin-k.fimlc.v5/n)/df, 0))
rmsea.fimlc.v6 <- sqrt(max((Fmin-k.fimlc.v6/n)/df, 0))

cfi.fimlc.v1 <- 
  1 - max((Fmin-k.fimlc.v1/n)/df, 0)/
  max((FminB-kB.fimlc.v1/n)/dfB,(Fmin-k.fimlc.v1/n)/df, 0)
cfi.fimlc.v2 <- 
  1 - max((Fmin-k.fimlc.v2/n)/df, 0)/
  max((FminB-kB.fimlc.v2/n)/dfB,(Fmin-k.fimlc.v2/n)/df, 0)
cfi.fimlc.v3 <-
  1 - max((Fmin-k.fimlc.v3/n)/df, 0)/
  max((FminB-kB.fimlc.v3/n)/dfB,(Fmin-k.fimlc.v3/n)/df, 0)
cfi.fimlc.v4 <- 
  1 - max((Fmin-k.fimlc.v4/n)/df, 0)/
  max((FminB-kB.fimlc.v4/n)/dfB,(Fmin-k.fimlc.v4/n)/df, 0)
cfi.fimlc.v5 <- 
  1 - max((Fmin-k.fimlc.v5/n)/df, 0)/
  max((FminB-kB.fimlc.v5/n)/dfB,(Fmin-k.fimlc.v5/n)/df, 0)
cfi.fimlc.v6 <- 
  1 - max((Fmin-k.fimlc.v6/n)/df, 0)/
  max((FminB-kB.fimlc.v6/n)/dfB,(Fmin-k.fimlc.v6/n)/df, 0)



#--Print FIML and all versions of FIMLC RMSEA and CFI --# 
rmsea <- c(rmsea.fiml, rmsea.fimlc.v0, 
           rmsea.fimlc.v1, rmsea.fimlc.v2,
           rmsea.fimlc.v3, rmsea.fimlc.v4,
           rmsea.fimlc.v5, rmsea.fimlc.v6)
names(rmsea) <- c("rmsea.fiml", "rmsea.fimlc.v0", 
                  "rmsea.fimlc.v1", "rmsea.fimlc.v2",
                  "rmsea.fimlc.v3", "rmsea.fimlc.v4", 
                  "rmsea.fimlc.v5", "rmsea.fimlc.v6")
cfi <- c(cfi.fiml, cfi.fimlc.v0, 
         cfi.fimlc.v1, cfi.fimlc.v2,
         cfi.fimlc.v3, cfi.fimlc.v4,
         cfi.fimlc.v5, cfi.fimlc.v6)
names(cfi) <- c("cfi.fiml", "cfi.fimlc.v0",
                "cfi.fimlc.v1", "cfi.fimlc.v2", 
                "cfi.fimlc.v3", "cfi.fimlc.v4",
                "cfi.fimlc.v5", "cfi.fimlc.v6")

rmsea
cfi






#----------Fitting Hypothesized model-----------###

#-----Stage 1------#
fit1 <-cfa(hypothesized.model,data=incomp,
           estimator="ML",missing="FIML") 
#fitting the hypothesized model

Sigmatilde <-lavInspect(fit1,"sampstat")$cov 
#saturated model's cov matrix

mutilde <-lavInspect(fit1,"sampstat")$mean 
#saturated model's mean structure

df <-lavInspect(fit1,"fit")["df"] 
n <- nrow(incomp) #sample size

#-----Stage 2------#
fit2 <- cfa(hypothesized.model, sample.cov=Sigmatilde, 
            sample.mean = mutilde, sample.nobs = n)

Fmin<-lavInspect(fit2, "fit")["fmin"]*2 
#fit function minimum; lavaan halves the fit finction


#------Compute FIML RMSEA and CFI ------------#
rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"]  
cfi.fiml<-lavInspect(fit1,"fit")["cfi"] 

#-----------TS RMSEA and CFI--------------#

#--Compute TS RMSEA and CFI without small sample correction (i.e., V0) #
rmsea.ts.v0 <- lavInspect(fit2, "fit")["rmsea"]
cfi.ts.v0 <-lavInspect(fit2, "fit")["cfi"]






#----compute small sample corrections for V1-V2----#

#----------Hypothesized  model---------------#
#----------saturated---------------#
fit1@Options$h1.information = "unstructured" 
fit2@Options$h1.information = "unstructured" 

deltabreve <- lavInspect(fit2, "delta")



Wm.unstr <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fit1@Model,
    lavsamplestats = fit1@SampleStats,
    lavdata = fit1@Data, 
    lavoptions = fit1@Options, 
    lavimplied = fit1@implied,
    lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]


V.unstr <- 
  lavaan:::lav_model_h1_information_firstorder(
    lavmodel = fit1@Model,
    lavsamplestats = fit1@SampleStats, 
    lavdata = fit1@Data,
    lavoptions = fit1@Options, 
    lavimplied = fit1@implied,
    lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]



Wc_unstr <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fit2@Model,
    lavsamplestats = fit2@SampleStats,
    lavdata = fit2@Data, 
    lavoptions = fit2@Options, lavimplied = fit2@implied,
    lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]


#-----------structured---------#
fit2@Options$h1.information = "structured" 


Wc_str <-
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fit2@Model,
    lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
    lavoptions = fit2@Options, lavimplied = fit2@implied,
    lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]

Wmi.unstr <-solve(Wm.unstr)
Gamma <- Wmi.unstr %*% V.unstr %*% Wmi.unstr  
Uc.unstr <- 
  Wc_unstr-Wc_unstr%*%
  deltabreve%*%
  solve(t(deltabreve)%*%
          Wc_unstr%*%deltabreve)%*%
  t(deltabreve)%*%Wc_unstr

Uc.str <- 
  Wc_str-Wc_str%*%
  deltabreve%*%
  solve(t(deltabreve)%*%
          Wc_str%*%deltabreve)%*%
  t(deltabreve)%*%Wc_str

c.ts.v1 <- lav_matrix_trace(Uc.str%*%Gamma)
c.ts.v2 <- lav_matrix_trace(Uc.unstr%*%Gamma)



#--------Baseline  model----------#
#-----Stage 1------#
fit1B <-  lavaan:::lav_object_independence(fit1, se=T) 
dfB <- lavInspect(fit1B, "fit")["df"]
#-----Stage 2------#
fit2B <- lavaan:::lav_object_independence(fit2, se=T) 
FminB<- lavInspect(fit2B, "fit")["fmin"]*2

#----------saturated---------------#
fit2B@Options$h1.information = "unstructured" 

deltabreveB <- lavInspect(fit2B, "delta")

WcB_unstr <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fit2B@Model,
    lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data,
    lavoptions = fit2B@Options, lavimplied = fit2B@implied,
    lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]

#-----------structured---------#
fit2B@Options$h1.information = "structured" 


WcB_str <- 
  lavaan:::lav_model_h1_information_observed(
    lavmodel = fit2B@Model,
    lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
    lavoptions = fit2B@Options, lavimplied = fit2B@implied,
    lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]



UcB.unstr <-
  WcB_unstr-WcB_unstr%*%
  deltabreveB%*%
  solve(t(deltabreveB)%*%
          WcB_unstr%*%deltabreveB)%*%
  t(deltabreveB)%*%WcB_unstr

UcB.str <- WcB_str-WcB_str%*%
  deltabreveB%*%
  solve(t(deltabreveB)%*%
          WcB_str%*%deltabreveB)%*%
  t(deltabreveB)%*%WcB_str

cB.ts.v1 <- lav_matrix_trace(UcB.unstr%*%Gamma)

cB.ts.v2 <- lav_matrix_trace(UcB.str%*%Gamma)


#compute TS RMSEA and CFI with small sample corrections (i.e.,V1-V2)# 
rmsea.ts.v1 <- sqrt(max((Fmin-c.ts.v1/n)/df, 0))
rmsea.ts.v2 <- sqrt(max((Fmin-c.ts.v2/n)/df, 0))

cfi.ts.v1 <- 
  1 - max((Fmin-c.ts.v1/n), 0)/
  max((FminB-cB.ts.v1/n),(Fmin-c.ts.v1/n), 0)

cfi.ts.v2 <- 
  1 - max((Fmin-c.ts.v2/n), 0)/
  max((FminB-cB.ts.v2/n),(Fmin-c.ts.v2/n), 0)



#--Print FIML and all versions of TS RMSEA and CFI --# 
rmsea <- c(rmsea.fiml, rmsea.ts.v0, rmsea.ts.v1, rmsea.ts.v2)

names(rmsea) <- c("rmsea.fiml", "rmsea.ts.v0",
                  "rmsea.ts.v1","rmsea.ts.v2")

cfi <- c(cfi.fiml, cfi.ts.v0, cfi.ts.v1, cfi.ts.v2)

names(cfi) <- c("cfi.fiml", "cfi.ts.v0", 
                "cfi.ts.v1","cfi.ts.v2" )

rmsea
cfi

