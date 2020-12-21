library(lavaan)



load(file="sampleData.RData")

head(sampleData)



hypothesized.model  <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6
f2 =~ NA*x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
f2 ~~ 1*f2'


#fitting the hypothesized model
fit <- cfa(hypothesized.model,data=sampleData,estimator="ML",missing="FIML") 


#------Compute FIML RMSEA and CFI -------------#
rmsea.fiml<-lavInspect(fit,"fit")["rmsea"]  
cfi.fiml<-lavInspect(fit,"fit")["cfi"] 


#-------FIMLC RMSEA and CFI----#
n <-nrow(sampleData)
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


### small sample corrections
k <- c(k.fimlc.v1, k.fimlc.v2, k.fimlc.v3, k.fimlc.v4, k.fimlc.v5, k.fimlc.v6)
k



##checking the positive/negative definiteness of different weight matrices
eigen(Wm_str)$values #negative definite  #evaluate FIML observed info matrix at structured model estimates  
eigen(Wc.obs_str)$values #negative definite #evaluate complete data observed info matrix at structured model estimates 
eigen(Wc.exp_str)$values #positive definite #evaluate complete data expected info matrix at structured model estimates 
eigen(U_str)$values #negative definite #evaluate residual weight matrix at structured model estimates 
eigen(Wm_unstr)$values #positive definite #evaluate FIML observed info matrix at unstructured model estimates 
eigen(Wc.obs_unstr)$values  #positive definite #evaluate omplete data observed info at unstructured model estimates 
