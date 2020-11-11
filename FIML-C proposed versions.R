
library(lavaan)

#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

#load("simuDataMARStrongmin.RData")

#load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 
#head(simuDatawithMiss, 100)

load("simuDatawithMiss2.RData") # slighly misspecified 
#For complete data, the population RMSEA and CFI are 0.04452902 and 0.9791809 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.03199867 and 0.9847884 respectively. 


data1<-simuDatawithMiss[1:2000,] 


fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'






fit1<-cfa(fitted.mod,data=data1,estimator="ML",missing="FIML") #normal data
Fm <- lavInspect(fit1, "fit")["fmin"]*2
rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"]  
cfi.fiml<-lavInspect(fit1,"fit")["cfi"] 
dfh<-lavInspect(fit1,"fit")["df"]

fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 
dfb<-lavInspect(fit01,"fit")["df"]
Fmb <- lavInspect(fit01, "fit")["fmin"]*2
#fits <- lavaan:::lav_object_unrestricted(fit1, se=T) #saturated model

#---------------------------------------NEW FIT INDICES----------------------------------#
n <-nrow(data1)
#p <-dim(data1)[2]
#pstar <-p*(p+1)/2 #number of unique elements in the covariance matrix=78   + 12=90
#pstar+12-dfh  # number of parameters in the structured model=36

Sigmahat<-fitted.values(fit1)$cov #Sigma-hat_H
muhat<-fitted.values(fit1)$mean #mu-hat-H
Sigmatilde<-lavInspect(fit1,"sampstat")$cov #Sigmatilde #please verify these are EM estimates
mutilde<-lavInspect(fit1,"sampstat")$mean #Sigmatilde #please verify these are EM estimates

SigmahatB<-fitted.values(fit01)$cov #Sigma-hat_B for independence model 
muhatB<-fitted.values(fit01)$mean #mu-hat_B for independence model

#---Yves' approach: take parameters of FIMl run, set optim.method="none" to prevent any further iterations---------# 

fitc <- sem(parTable(fit1), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=n,
            information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

fitcB <- sem(parTable(fit01), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=n,
             information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

out <- as.vector(inspect(fitc, "implied")$cov-inspect(fit1, "implied")$cov)
length(out)
lavInspect(fit1, "est")$lambda
lavInspect(fitc, "est")$lambda

p <- 12

F.hat <- t(mutilde-muhat)%*%solve(Sigmahat)%*%(mutilde-muhat) + log(det(Sigmahat)) - log(det(Sigmatilde)) + sum(diag(Sigmatilde%*%solve(Sigmahat))) - p
F.hat

Fc<-lavInspect(fitc, "fit")["fmin"]*2 #lavaan halfs the fit finction
FcB<- lavInspect(fitcB, "fit")["fmin"]*2

lavInspect(fitcB, "implied")
lavInspect(fit01, "implied")
#--------------Main Model-----------------------------------------------------------------------------------------------#
delta <- lavInspect(fit1, "delta") #model derivatives with col/row names labeled, (pstar+p)xq
#-------------structured------------------------#
fit1@Options$h1.information = "structured" 
fitc@Options$h1.information = "structured" 

Wm_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                     lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                     lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                     lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]] #elements of the weight matrix involves the variance-covariance matrix

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

#delta_sat <- lavInspect(fits, "delta")
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


WmBi_str<-solve(WmB_str)


E.inv.b_str <- solve(t(deltab) %*% WmB_str%*% deltab)
Ub_str <- (WmB_str - WmB_str %*% deltab %*% E.inv.b_str %*% t(deltab)%*%WmB_str) 

E.inv.b_unstr <- solve(t(deltab) %*% Wm_unstr%*% deltab)
Ub_unstr <- (Wm_unstr- Wm_unstr %*% deltab %*% E.inv.b_unstr %*% t(deltab)%*%Wm_unstr) 


kb.obs_str <- sum(diag(WcmB.obs_str%*%WmBi_str%*%Ub_str%*%WmBi_str))
kb.obs.nonn_str <-sum(diag(Ub_str%*%WmBi_str%*%WcmB.obs_str%*%WmBi_str%*%Ub_str%*%Gamma)) 


kb.exp_str <- sum(diag(WcmB.exp_str%*%WmBi_str%*%Ub_str%*%WmBi_str))
kb.exp.nonn_str <-sum(diag(Ub_str%*%WmBi_str%*%WcmB.exp_str%*%WmBi_str%*%Ub_str%*%Gamma))


kb.obs_unstr <- sum(diag(Wcm.obs_unstr%*%Wmi_unstr%*%Ub_unstr%*%Wmi_unstr)) 
kb.obs.nonn_unstr  <-sum(diag(Ub_unstr%*%Wmi_unstr%*%Wcm.obs_unstr%*%Wmi_unstr%*%Ub_unstr%*%Gamma)) 


#--------------End Baseline Model----------------------------------------------------------------------------------#






#--------------Fit Indices:----------------------------------------------------------------------------------------#

#--------New fit index versions without small sample corrections (equation 6 and 7 in the Overleaf document)------------#


if (Fc/dfh-1/n < 0 ) { 
  rmsea <-  0} else {
    rmsea <-sqrt(Fc/dfh-1/n) 
  }




cfi<-1-(Fc-dfh/n)/(FcB-dfb/n)





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


cfi.obs_str<-1-(Fc-k.obs_str/n)/(FcB-kb.obs_str/n) 

cfi.obs.nonn_str<-1-(Fc-k.obs.nonn_str/n)/(FcB-kb.obs.nonn_str/n) 

cfi.exp_str<-1-(Fc-k.exp_str/n)/(FcB-kb.exp_str/n) 

cfi.exp.nonn_str<-1-(Fc-k.exp.nonn_str/n)/(FcB-kb.exp.nonn_str/n) 

cfi.obs_unstr<-1-(Fc-k.obs_unstr/n)/(FcB-kb.obs_unstr/n) 

cfi.obs.nonn_unstr<-1-(Fc-k.obs.nonn_unstr/n)/(FcB-kb.obs.nonn_unstr/n) 




#-------------Comparison of Proposed Indices-----------------------------------------------------------------------#


#comparison
num.ver <- 8
RMSEA.final<-c(rmsea.fiml,rmsea, rmsea.obs_str,rmsea.obs.nonn_str,rmsea.exp_str,
          rmsea.exp.nonn_str,rmsea.obs_unstr,rmsea.obs.nonn_unstr)
CFI.raw <-c(cfi.fiml,cfi,cfi.obs_str,cfi.obs.nonn_str,cfi.exp_str,
        cfi.exp.nonn_str,cfi.obs_unstr,cfi.obs.nonn_unstr)
pos.def.weight <- c(is.positive.definite(x=round(Wm_str, 6)), is.positive.definite(x=round(Wcm.obs_str, 6)), 
                    is.positive.definite(x=round(Wcm.exp_str, 6)), is.positive.definite(x=round(Wcm.obs_unstr, 6)), 
                    is.positive.definite(x=round(Wm_unstr, 6)),
                    is.positive.definite(x=round(WmB_str, 6)), is.positive.definite(x=round(WcmB.obs_str, 6)), 
                    is.positive.definite(x=round(WcmB.exp_str, 6)) )

names(pos.def.weight) <- c("Wm_str", "Wcm.obs_str", "Wcm.exp_str", 
                           "Wcm.obs_unstr","Wm_unstr", "WmB_str", "WcmB.obs_str", "WcmB.exp_str" ) #check the positiveness of different weight matrices
pos.def.weight
Wm.pos.def <- c( NA, NA,
                 pos.def.weight["Wm_str"], pos.def.weight["Wm_str"],
                 pos.def.weight["Wm_str"], pos.def.weight["Wm_str"],
                 pos.def.weight["Wm_unstr"], pos.def.weight["Wm_unstr"])
Wcm.pos.def <- c( NA, NA,
                  pos.def.weight["Wcm.obs_str"], pos.def.weight["Wcm.obs_str"],
                  pos.def.weight["Wcm.exp_str"], pos.def.weight["Wcm.exp_str"],
                  pos.def.weight["Wcm.obs_unstr"], pos.def.weight["Wcm.obs_unstr"])
WmB.pos.def <- c( NA, NA,
                  pos.def.weight["WmB_str"], pos.def.weight["WmB_str"],
                  pos.def.weight["WmB_str"], pos.def.weight["WmB_str"],
                  pos.def.weight["Wm_unstr"], pos.def.weight["Wm_unstr"])
WcmB.pos.def <-  c( NA, NA,
                    pos.def.weight["Wcm.obs_str"], pos.def.weight["Wcm.obs_str"],
                    pos.def.weight["Wcm.exp_str"], pos.def.weight["Wcm.exp_str"],
                    pos.def.weight["Wcm.obs_unstr"], pos.def.weight["Wcm.obs_unstr"])
ks.per.n <-c(NA, NA, 
             k.obs_str/n,k.obs.nonn_str/n, 
             k.exp_str/n,k.exp.nonn_str/n,
             k.obs_unstr/n, k.obs.nonn_unstr/n)
kbs.per.n <- c(NA, NA, 
              kb.obs_str/n ,
              kb.obs.nonn_str/n ,
              kb.exp_str/n ,
              kb.exp.nonn_str/n,
              kb.obs_unstr/n,
              kb.obs.nonn_unstr/n)

k.greater.than.zero <-c(T, T, 
                   k.obs_str/n >0, k.obs.nonn_str/n>0, 
                   k.exp_str/n >0, k.exp.nonn_str/n >0,
                   k.obs_unstr/n >0, k.obs.nonn_unstr/n >0)
kb.greater.than.zero <-  c(T, T, 
                           kb.obs_str/n > 0 ,
                           kb.obs.nonn_str/n > 0 ,
                           kb.exp_str/n > 0,
                           kb.exp.nonn_str/n > 0,
                           kb.obs_unstr/n > 0,
                           kb.obs.nonn_unstr/n > 0 )

kb.greater.than.k <- c(T, T, 
                       kb.obs_str > k.obs_str,  kb.obs.nonn_str >  k.obs.nonn_str, 
                       kb.exp_str > k.exp_str, kb.exp.nonn_str > k.exp.nonn_str, 
                       kb.obs_unstr > k.obs_unstr, kb.obs.nonn_unstr > k.obs.nonn_unstr)

Fc.greater.than.k.per.n <- c(T, T, 
                              Fc > c(k.obs_str/n,k.obs.nonn_str/n, 
                                     k.exp_str/n,k.exp.nonn_str/n,
                                     k.obs_unstr/n, k.obs.nonn_unstr/n))

FcB.greater.than.kb.per.n <- c(T, T, 
                               FcB >  c(kb.obs_str/n ,
                                          kb.obs.nonn_str/n ,
                                          kb.exp_str/n ,
                                          kb.exp.nonn_str/n,
                                          kb.obs_unstr/n,
                                          kb.obs.nonn_unstr/n))

#CFI.Final:
cfi.checks.small <- cbind(k.greater.than.zero , 
                          kb.greater.than.zero,
                          kb.greater.than.k, 
                          FcB.greater.than.kb.per.n)

CFI.OK.small <- rowSums(cfi.checks.small)==4


CFI.inter <-CFI.raw


for(i in 1:num.ver){
  if(CFI.OK.small[i]==T){ 
    if(Fc.greater.than.k.per.n[i]==F){
      CFI.inter[i] <- 1
    } 
  } 
}


cfi.less.than.one <- CFI.inter < 1
cfi.greater.than.zero <- CFI.inter > 0

cfi.checks <- cbind(cfi.checks.small, 
                    cfi.less.than.one , cfi.greater.than.zero)

CFI.OK <- rowSums(cfi.checks)==6


CFI.final <-CFI.inter # detect cases where the fitted models are perfect fit. 
for(i in 1:num.ver){
  if(CFI.OK[i]==F){ 
    CFI.final[i] <- NA
  } 
}

###CFI.final ends


results<-data.frame(RMSEA.final,CFI.raw, CFI.final,
                     k.greater.than.zero , 
                    kb.greater.than.zero, kb.greater.than.k, Fc.greater.than.k.per.n , 
                    FcB.greater.than.kb.per.n, FcB.greater.than.kb.per.n , 
                    cfi.less.than.one , cfi.greater.than.zero, 
                    Wm.pos.def ,Wcm.pos.def, WmB.pos.def, WcmB.pos.def)
rownames(results)<-c("original.fiml","uncorr.fimlc",
                 "corr.fimlc.obs_str","corr.fimlc.obs.nonn_str",
                 "corr.fimlc.exp_str","corr.fimlc.exp.nonn_str",
                 "corr.fimlc.obs_unstr","corr.fimlc.obs.nonn_unstr")
results








pos.def.implied <- c(is.positive.definite(inspect(fit1, "implied")$cov), 
                     is.positive.definite(inspect(fit01, "implied")$cov), 
                     is.positive.definite(inspect(fitc, "implied")$cov),
                     is.positive.definite(inspect(fitcB, "implied")$cov))
inspect(fitc, "implied")$cov==inspect(fit1, "implied")$cov

pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fit01, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fitc, "vcov"), 6)),
                  is.positive.definite(round(inspect(fitcB, "vcov"), 6)))

mod.converge <- c(inspect(fit1, "converged"), 
                  inspect(fit01, "converged"), 
                inspect(fitc, "converged"),
                 inspect(fitcB, "converged"))

model.matrices <- data.frame(pos.def.implied, pos.def.vcov, mod.converge)
rownames(model.matrices) <- c("fit.str.incomp","fit.base.incomp", "fit.str.comp" , "fit.base.comp")
model.matrices
