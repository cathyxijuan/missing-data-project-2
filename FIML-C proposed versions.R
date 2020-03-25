
library(lavaan)
library(matrixcalc)

#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 


#load("simuDatawithMiss2.RData") # slighly misspecified 
data1<-simuDatawithMiss[700:1000,] 
#For complete data, the population RMSEA and CFI are 0.04452902 and 0.9791809 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.03199867 and 0.9847884 respectively. 



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'






fit1<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS

rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"]  
cfi.fiml<-lavInspect(fit1,"fit")["cfi"] 
dfh<-lavInspect(fit1,"fit")["df"]

fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 
dfb<-lavInspect(fit01,"fit")["df"]

#---------------------------------------NEW FIT INDICES----------------------------------#
N<-dim(data1)[1]
p<-dim(data1)[2]
pstar<-p*(p+1)/2 

Sigmahat<-fitted.values(fit1)$cov #Sigma-hat_H
muhat<-fitted.values(fit1)$mean #mu-hat-H
Sigmatilde<-lavInspect(fit1,"sampstat")$cov #Sigmatilde #please verify these are EM estimates
mutilde<-lavInspect(fit1,"sampstat")$mean #Sigmatilde #please verify these are EM estimates

SigmahatB<-fitted.values(fit01)$cov #Sigma-hat_B for independence model 
muhatB<-fitted.values(fit01)$mean #mu-hat_B for independence model

#---Yves' approach: take parameters of FIMl run, set optim.method="none" to prevent any further iterations---------# 

fitc <- sem(parTable(fit1), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=N,
            information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

fitcB <- sem(parTable(fit01), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=N,
             information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

Fc<-lavInspect(fitc, "fit")["fmin"]*2 #lavaan halfs the fit finction
FcB<- lavInspect(fitcB, "fit")["fmin"]*2


#--------------Main Model-----------------------------------------------------------------------------------------------#
delta <- lavInspect(fit1, "delta") #model derivatives with col/row names labeled, (pstar+p)xq
#-------------structured------------------------#
fit1@Options$h1.information = "structured" 
fitc@Options$h1.information = "structured" 

Wm_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                     lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                     lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                     lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

B1_str <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                       lavsamplestats = fit1@SampleStats, lavdata = fit1@Data,
                                                       lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                       lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

Wcm.obs_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fitc@Model,
                                                          lavsamplestats = fitc@SampleStats, lavdata = fitc@Data, 
                                                          lavoptions = fitc@Options, lavimplied = fitc@implied,
                                                          lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]
Wcm.exp_str <- lavaan:::lav_model_h1_information_expected(lavmodel = fitc@Model,
                                                          lavsamplestats = fitc@SampleStats, lavdata = fitc@Data, 
                                                          lavoptions = fitc@Options, lavimplied = fitc@implied,
                                                          lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]


#-------------unstructured------------------------#

fit1@Options$h1.information = "unstructured" 
fitc@Options$h1.information = "unstructured" 
Wm_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                       lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                       lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                       lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

B1_unstr <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                         lavsamplestats = fit1@SampleStats, lavdata = fit1@Data,
                                                         lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                         lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

Wcm.obs_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fitc@Model,
                                                            lavsamplestats = fitc@SampleStats, lavdata = fitc@Data, 
                                                            lavoptions = fitc@Options, lavimplied = fitc@implied,
                                                            lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]
eigen(Wcm.obs_unstr)$values
eigen(Wm_unstr)$values

Wmi_str<-solve(Wm_str)
Wmi_unstr<-solve(Wm_unstr)

Gamma <- Wmi_unstr %*% B1_unstr %*% Wmi_unstr #under correctly specified model Gamma=Wmi



E.inv_str <-solve(t(delta) %*% Wm_str%*% delta) 
U_str <- (Wm_str - Wm_str %*% delta %*% E.inv_str %*% t(delta)%*%Wm_str)

E.inv_unstr <-solve(t(delta) %*% Wm_unstr%*% delta) 
U_unstr <- (Wm_unstr - Wm_unstr %*% delta %*% E.inv_unstr %*% t(delta)%*%Wm_unstr)

k.obs_str <- sum(diag(Wcm.obs_str%*%Wmi_str%*%U_str%*%Wmi_str))
k.obs.nonn_str <-sum(diag(U_str%*%Wmi_str%*%Wcm.obs_str%*%Wmi_str%*%U_str%*%Gamma)) 

k.exp_str <- sum(diag(Wcm.exp_str%*%Wmi_str%*%U_str%*%Wmi_str))
k.exp.nonn_str <-sum(diag(U_str%*%Wmi_str%*%Wcm.exp_str%*%Wmi_str%*%U_str%*%Gamma)) 

k.obs_unstr <- sum(diag(Wcm.obs_unstr%*%Wmi_unstr%*%U_unstr%*%Wmi_unstr)) 
k.obs.nonn_unstr <-sum(diag(U_unstr%*%Wmi_unstr%*%Wcm.obs_unstr%*%Wmi_unstr%*%U_unstr%*%Gamma)) 



#--------------End Main Model----------------------------------------------------------------------------------#


#--------------Baseline Model----------------------------------------------------------------------------------#

deltab <- lavInspect(fit01, "delta")

#-------------structured------------------------#

fit01@Options$h1.information = "structured" 
fitcB@Options$h1.information = "structured" 

WmB_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fit01@Model,
                                                      lavsamplestats = fit01@SampleStats, lavdata = fit01@Data, 
                                                      lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                      lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]

B1B_str <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit01@Model,
                                                        lavsamplestats = fit01@SampleStats, lavdata = fit01@Data,
                                                        lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                        lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]

WcmB.obs_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fitcB@Model,
                                                           lavsamplestats = fitcB@SampleStats, lavdata = fitcB@Data, 
                                                           lavoptions = fitcB@Options, lavimplied = fitcB@implied,
                                                           lavh1 = fitcB@h1, lavcache = fitcB@Cache)[[1]]

WcmB.exp_str <- lavaan:::lav_model_h1_information_expected(lavmodel = fitcB@Model,
                                                           lavsamplestats = fitcB@SampleStats, lavdata = fitcB@Data, 
                                                           lavoptions = fitcB@Options, lavimplied = fitcB@implied,
                                                           lavh1 = fitcB@h1, lavcache = fitcB@Cache)[[1]]



#-------------unstructured------------------------#
fit01@Options$h1.information = "unstructured" 
fitcB@Options$h1.information = "unstructured" 


WmB_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit01@Model,
                                                        lavsamplestats = fit01@SampleStats, lavdata = fit01@Data, 
                                                        lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                        lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]



B1B_unstr <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit01@Model,
                                                          lavsamplestats = fit01@SampleStats, lavdata = fit01@Data,
                                                          lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                          lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

WcmB.obs_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fitcB@Model,
                                                             lavsamplestats = fitcB@SampleStats, lavdata = fitcB@Data, 
                                                             lavoptions = fitcB@Options, lavimplied = fitcB@implied,
                                                             lavh1 = fitcB@h1, lavcache = fitcB@Cache)[[1]]



#-------------unstructured------------------------#
fit01@Options$h1.information = "unstructured" 
fitcB@Options$h1.information = "unstructured" 

WmB_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit01@Model,
                                                        lavsamplestats = fit01@SampleStats, lavdata = fit01@Data, 
                                                        lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                        lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]


B1B_unstr <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit01@Model,
                                                          lavsamplestats = fit01@SampleStats, lavdata = fit01@Data,
                                                          lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                          lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]




WmBi_unstr<-solve(WmB_unstr)

WmBi_str<-solve(WmB_str)

GammaB <- WmBi_unstr %*% B1B_unstr %*% WmBi_unstr 


E.inv.b_str <- solve(t(deltab) %*% WmB_str%*% deltab)
Ub_str <- (WmB_str- WmB_str %*% deltab %*% E.inv.b_str %*% t(deltab)%*%WmB_str) 

E.inv.b_unstr <- solve(t(deltab) %*% WmB_unstr%*% deltab)
Ub_unstr <- (WmB_unstr- WmB_unstr %*% deltab %*% E.inv.b_unstr %*% t(deltab)%*%WmB_unstr) 


kb.obs_str <- sum(diag(WcmB.obs_str%*%WmBi_str%*%Ub_str%*%WmBi_str))
kb.obs.nonn_str <-sum(diag(Ub_str%*%WmBi_str%*%WcmB.obs_str%*%WmBi_str%*%Ub_str%*%GammaB)) 

kb.exp_str <- sum(diag(WcmB.exp_str%*%WmBi_str%*%Ub_str%*%WmBi_str))
kb.exp.nonn_str <-sum(diag(Ub_str%*%WmBi_str%*%WcmB.exp_str%*%WmBi_str%*%Ub_str%*%GammaB))


kb.obs_unstr <- sum(diag(WcmB.obs_unstr%*%WmBi_unstr%*%Ub_unstr%*%WmBi_unstr)) 
kb.obs.nonn_unstr  <-sum(diag(Ub_unstr%*%WmBi_unstr%*%WcmB.obs_unstr%*%WmBi_unstr%*%Ub_unstr%*%GammaB)) 

#--------------End Baseline Model----------------------------------------------------------------------------------#






#--------------Fit Indices:----------------------------------------------------------------------------------------#

#--------New fit index versions without small sample corrections (equation 6 and 7 in the Overleaf document)------------#
n<-N-1 #EQS variety, remove and replace with N to study Mplus variety

if (Fc/dfh-1/n < 0 ) { 
  rmsea <-  0} else {
    rmsea <-sqrt(Fc/dfh-1/n) 
  }


if ( Fc-dfh/n < 0 ){
  cfi <- 1
} else {
  cfi<-1-(Fc-dfh/n)/(FcB-dfb/n)
} 




#recall Fc is the Fmin for the structured model; FcB is the Fmin for the baseline model

#--------New fit index versions WITH small sample corrections (equation 8 and 9 in the Overleaf document)---------------#

#Study these four RMSEAS

if (Fc/dfh-k.obs_str/(dfh*n) < 0 ) { 
  rmsea.obs_str <-  0} else {
    rmsea.obs_str <-sqrt(Fc/dfh-k.obs_str/(dfh*n))
  }


if (Fc/dfh-k.obs.nonn_str/(dfh*n) < 0 ) { 
  rmsea.obs.nonn_str <-  0} else {
    rmsea.obs.nonn_str <-sqrt(Fc/dfh-k.obs.nonn_str/(dfh*n))
  }


if (Fc/dfh-k.exp_str/(dfh*n) < 0 ) { 
  rmsea.exp_str <-  0} else {
    rmsea.exp_str <-sqrt(Fc/dfh-k.exp_str/(dfh*n))
  }

if (Fc/dfh-k.exp.nonn_str/(dfh*n) < 0 ) { 
  rmsea.exp.nonn_str <-  0} else {
    rmsea.exp.nonn_str <-sqrt(Fc/dfh-k.exp.nonn_str/(dfh*n))
  } 


if (Fc/dfh-k.obs_unstr/(dfh*n) < 0 ) { 
  rmsea.obs_unstr <-  0} else {
    rmsea.obs_unstr <-sqrt(Fc/dfh-k.obs_unstr/(dfh*n))
  }


if (Fc/dfh-k.obs.nonn_unstr/(dfh*n) < 0 ) { 
  rmsea.obs.nonn_unstr <-  0} else {
    rmsea.obs.nonn_unstr <-sqrt(Fc/dfh-k.obs.nonn_unstr/(dfh*n))
  }






#Study these four CFIs




if ( 1-(Fc-k.obs_str/n)/(FcB-kb.obs_str/n) >1 ){
  cfi.obs_str <-99 
} else {
  if ( 1-(Fc-k.obs_str/n)/(FcB-kb.obs_str/n)  < 0 ){
    cfi.obs_str <- 98
  } else { 
    cfi.obs_str<-1-(Fc-k.obs_str/n)/(FcB-kb.obs_str/n) 
  }
}




if (1-(Fc-k.obs.nonn_str/n)/(FcB-kb.obs.nonn_str/n)>1) {
  cfi.obs.nonn_str <- 99
} else {
  if (1-(Fc-k.obs.nonn_str/n)/(FcB-kb.obs.nonn_str/n)< 0 ){
    cfi.obs.nonn_str <- 98
  } else {
    cfi.obs.nonn_str<-1-(Fc-k.obs.nonn_str/n)/(FcB-kb.obs.nonn_str/n) }
}



if (1-(Fc-k.exp_str/n)/(FcB-kb.exp_str/n)  >1 ){
  cfi.exp_str<- 99
} else {
  if ( 1-(Fc-k.exp_str/n)/(FcB-kb.exp_str/n) < 0 ){
    cfi.exp_str<- 98
  } else { 
    cfi.exp_str<-1-(Fc-k.exp_str/n)/(FcB-kb.exp_str/n)  
  }
}




if( 1-(Fc-k.exp.nonn_str/n)/(FcB-kb.exp.nonn_str/n)  >1 ) {
  cfi.exp.nonn_str<- 99
} else {
  if ( 1-(Fc-k.exp.nonn_str/n)/(FcB-kb.exp.nonn_str/n)< 0 ){
    cfi.exp.nonn_str<- 98
  } else {
    cfi.exp.nonn_str<-1-(Fc-k.exp.nonn_str/n)/(FcB-kb.exp.nonn_str/n) }
} 


if ( 1-(Fc-k.obs_unstr/n)/(FcB-kb.obs_unstr/n) >1 ){
  cfi.obs_unstr <-99 
} else {
  if ( 1-(Fc-k.obs_unstr/n)/(FcB-kb.obs_unstr/n)  < 0 ){
    cfi.obs_unstr <- 98
  } else { 
    cfi.obs_unstr<-1-(Fc-k.obs_unstr/n)/(FcB-kb.obs_unstr/n) 
  }
}




if (1-(Fc-k.obs.nonn_unstr/n)/(FcB-kb.obs.nonn_unstr/n)>1) {
  cfi.obs.nonn_unstr <- 99
} else {
  if (1-(Fc-k.obs.nonn_unstr/n)/(FcB-kb.obs.nonn_unstr/n)< 0 ){
    cfi.obs.nonn_unstr <- 98
  } else {
    cfi.obs.nonn_unstr<-1-(Fc-k.obs.nonn_unstr/n)/(FcB-kb.obs.nonn_unstr/n) }
}



#-------------Comparison of Proposed Indices-----------------------------------------------------------------------#
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

#comparison
rmseas<-c(rmsea.fiml,rmsea, rmsea.obs_str,rmsea.obs.nonn_str,rmsea.exp_str,
          rmsea.exp.nonn_str,rmsea.obs_unstr,rmsea.obs.nonn_unstr)
cfis<-c(cfi.fiml,cfi,cfi.obs_str,cfi.obs.nonn_str,cfi.exp_str,
        cfi.exp.nonn_str,cfi.obs_unstr,cfi.obs.nonn_unstr)
out<-cbind(rmseas,cfis)
rownames(out)<-c("original.fiml","uncorr.approx","corr.obs_str","corr.obs.nonn_str",
                 "corr.exp_str","corr.exp.nonn_str",
                 "corr.obs_unstr","corr.obs.nonn_unstr")


ks.per.n <- c(k.obs_str/n,k.obs.nonn_str/n, 
              k.exp_str/n,
              k.exp.nonn_str/n,
              k.obs_unstr/n,
              k.obs.nonn_unstr/n,
              kb.obs_str/n ,
              kb.obs.nonn_str/n ,
              kb.exp_str/n ,
              kb.exp.nonn_str/n,
              kb.obs_unstr/n,
              kb.obs.nonn_unstr/n)
names(ks.per.n) <- c("k.obs_str/n","k.obs.nonn_str/n", 
                     "k.exp_str/n",
                     "k.exp.nonn_str/n",
                     "k.obs_unstr/n",
                     "k.obs.nonn_unstr/n",
                     "kb.obs_str/n" ,
                     "kb.obs.nonn_str/n" ,
                     "kb.exp_str/n" ,
                     "kb.exp.nonn_str/n",
                     "kb.obs_unstr/n",
                     "kb.obs.nonn_unstr/n")
out 
ks.per.n


pos.def.weight <- c(is.positive.definite(x=round(Wm_str, 6)), is.positive.definite(x=round(Wcm.obs_str, 6)), 
             is.positive.definite(x=round(Wcm.exp_str, 6)), is.positive.definite(x=round(Wcm.obs_unstr, 6)), 
             is.positive.definite(x=round(Wm_unstr, 6)),
             is.positive.definite(x=round(WmB_str, 6)), is.positive.definite(x=round(WcmB.obs_str, 6)), 
             is.positive.definite(x=round(WcmB.exp_str, 6)), is.positive.definite(x=round(WcmB.obs_unstr, 6)), 
             is.positive.definite(x=round(WmB_unstr, 6)) )

round(WmB_unstr, 6)[1:4, 1:4]
round(Wm_unstr, 6)[1:4, 1:4]
round(WcmB.obs_unstr, 6)[1:4, 1:4]
round(Wcm.obs_unstr, 6)[1:4, 1:4]

round(WcmB.obs_unstr, 6)[1:4, 1:4]
round(Wcm.obs_unstr, 6)[1:4, 1:4]
dim(Wcm.obs_unstr)
dim(WcmB.obs_unstr)
names(pos.def.weight) <- c("Wm_str", "Wcm.obs_str", "Wcm.exp_str", 
                    "Wcm.obs_unstr","Wm_unstr", "WmB_str", "WcmB.obs_str", "WcmB.exp_str", 
                    "WcmB.obs_unstr","WmB_unstr" ) #check the positiveness of different weight matrices
pos.def.weight


pos.def.implied <- c(is.positive.definite(inspect(fit1, "implied")$cov), is.positive.definite(inspect(fit01, "implied")$cov), 
                     is.positive.definite(inspect(fitc, "implied")$cov), is.positive.definite(inspect(fitcB, "implied")$cov))


pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 6)), is.positive.definite(round(inspect(fit01, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fitc, "vcov"), 6)), is.positive.definite(round(inspect(fitcB, "vcov"), 6)))
pos.def.implied
pos.def.vcov 
