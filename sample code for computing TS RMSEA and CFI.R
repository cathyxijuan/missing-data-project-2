
require(lavaan)


load("sampleData.RData") #sample data with missing values; download it at https://osf.io/y4g78/?view_only=74388fa13ca74853b03cd7be8f74aee9



hypothesized.model <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'

#----------Fitting Hypothesized model-----------###

#-----Stage 1------#
fit1 <-cfa(hypothesized.model,data=sampleData,
           estimator="ML",missing="FIML") 
#fitting the hypothesized model

Sigmatilde <-lavInspect(fit1,"sampstat")$cov 
#saturated model's cov matrix

mutilde <-lavInspect(fit1,"sampstat")$mean 
#saturated model's mean structure

df <-lavInspect(fit1,"fit")["df"] 
n <- nrow(sampleData) #sample size

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
###Important note: TS RMSEA and CFI V0 can also be computed 
                   #using the two-stage estimator within the lavaan function.
###The following code shows an alternative method 
    #to compute TS RMSEA and CFI V0 using Lavaan
#------alternative code for implementing TS V0-------#
fit.ts<-cfa(hypothesized.model,data=sampleData,
            estimator="ML",missing="two-stage")

rmsea.ts.v0.2 <-lavInspect(fit.ts,"fit")["rmsea"] 
#same as rmsea.ts.v0 

cfi.ts.v0.2 <-lavInspect(fit.ts,"fit")["cfi"] 
#same as cfi.ts.v0
#------end alternative code------#




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
