
library(lavaan)
library(matrixcalc)

#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

#load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 


load("simuDatawithMiss2.RData") # slighly misspecified 
data1<-simuDatawithMiss[100:500,] 
#For complete data, the population RMSEA and CFI are 0.04452902 and 0.9791809 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.03199867 and 0.9847884 respectively. 



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'






fit1<-cfa(fitted.mod,data=data1,estimator="ML",missing="FIML") #normal data

rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"]  
cfi.fiml<-lavInspect(fit1,"fit")["cfi"] 
dfh<-lavInspect(fit1,"fit")["df"]

fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 
dfb<-lavInspect(fit01,"fit")["df"]

#fits <- lavaan:::lav_object_unrestricted(fit1, se=T) #saturated model

#---------------------------------------NEW FIT INDICES----------------------------------#
n <-nrow(data1)
#p <-dim(data1)[2]
#pstar <-p*(p+1)/2 #number of unique elements in the covariance matrix=78   + 12=90
#pstar+12-dfh  # number of parameters in the structured model=36


Sigmatilde<-lavInspect(fit1,"sampstat")$cov #Sigmatilde #please verify these are EM estimates
mutilde<-lavInspect(fit1,"sampstat")$mean #Sigmatilde #please verify these are EM estimates


#---Yves' approach: take parameters of FIMl run, set optim.method="none" to prevent any further iterations---------# 

fitc <- sem(parTable(fit1), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=n,
            information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

fitcB <- sem(parTable(fit01), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=n,
             information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")


chisqc <-lavInspect(fitc, "fit")["chisq"]
chisqcB <- lavInspect(fitcB, "fit")["chisq"]

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

#adjustment term
ks <-c(k.obs_str,k.obs.nonn_str, 
       k.exp_str,k.exp.nonn_str,
       k.obs_unstr, k.obs.nonn_unstr)
kbs <- c(kb.obs_str ,
         kb.obs.nonn_str ,
         kb.exp_str ,
         kb.exp.nonn_str,
         kb.obs_unstr,
         kb.obs.nonn_unstr)


pos.def.weight <- c(is.positive.definite(x=round(Wm_str, 6)), is.positive.definite(x=round(Wcm.obs_str, 6)), 
                    is.positive.definite(x=round(Wcm.exp_str, 6)), is.positive.definite(x=round(Wcm.obs_unstr, 6)), 
                    is.positive.definite(x=round(Wm_unstr, 6)),
                    is.positive.definite(x=round(WmB_str, 6)), is.positive.definite(x=round(WcmB.obs_str, 6)), 
                    is.positive.definite(x=round(WcmB.exp_str, 6)) )

pos.def.implied <-c(is.positive.definite(x=round(inspect(fit1, "implied")$cov,6)), 
                    is.positive.definite(x=round(inspect(fit01, "implied")$cov,6)),
                    is.positive.definite(x=round(inspect(fitc, "implied")$cov,6)),
                    is.positive.definite(x=round(inspect(fitcB, "implied")$cov,6)))


pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fit01, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fitc, "vcov"), 6)),
                  is.positive.definite(round(inspect(fitcB, "vcov"), 6)))

mod.converge <- c(inspect(fit1, "converged"), 
                  inspect(fit01, "converged"), 
                  inspect(fitc, "converged"),
                  inspect(fitcB, "converged"))



model.matrices <- c(pos.def.implied, pos.def.vcov, mod.converge)



first.out <- c(rmsea.fiml, cfi.fiml, n, dfh, dfb, chisqc, chisqcB, ks, kbs, pos.def.weight, model.matrices)
first.out <- round(first.out, 6)

names(first.out) <- c("rmsea.fiml", "cfi.fiml", "n", "dfh", "dfb", "chisqc", "chisqcB","k.obs_str","k.obs.nonn_str", 
                      "k.exp_str","k.exp.nonn_str",
                      "k.obs_unstr", "k.obs.nonn_unstr", 
                      "kb.obs_str" ,
                      "kb.obs.nonn_str" ,
                      "kb.exp_str" ,
                      "kb.exp.nonn_str",
                      "kb.obs_unstr",
                      "kb.obs.nonn_unstr", "Wm_str", "Wcm.obs_str", "Wcm.exp_str", 
                      "Wcm.obs_unstr","Wm_unstr", "WmB_str", "WcmB.obs_str", "WcmB.exp_str" , 
                      "fit.str.incomp.pos.def.implied","fit.str.comp.pos.def.implied", 
                      "fit.base.incomp.pos.def.implied" , "fit.base.comp.pos.def.implied", 
                      "fit.str.incomp.pos.def.vcov","fit.str.comp.pos.def.vcov", 
                      "fit.base.incomp.pos.def.vcov" , "fit.base.comp.pos.def.vcov", 
                      "fit.str.incomp.mod.converge","fit.str.comp.mod.converge", 
                      "fit.base.incomp.mod.converge" , "fit.base.comp.mod.converge")




#--------------Fit Indices:----------------------------------------------------------------------------------------#

#--------New fit index versions without small sample corrections (equation 6 and 7 in the Overleaf document)------------#


if (Fc/dfh-1/n < 0 ) { 
  rmsea <-  0} else {
    rmsea <-sqrt(Fc/dfh-1/n) 
  }

cfi<-1-(Fc-dfh/n)/(FcB-dfb/n)


#recall Fc is the Fmin for the structured model; FcB is the Fmin for the baseline model

#--------New fit index versions WITH small sample corrections (equation 8 and 9 in the Overleaf document)---------------#
num.ver <- 6
ks <-c(k.obs_str,k.obs.nonn_str, 
       k.exp_str,k.exp.nonn_str,
       k.obs_unstr, k.obs.nonn_unstr)
kbs <- c(kb.obs_str ,
         kb.obs.nonn_str ,
         kb.exp_str ,
         kb.exp.nonn_str,
         kb.obs_unstr,
         kb.obs.nonn_unstr)


#Study these four RMSEAS







rmsea.cor <- rep(0, 6)
for(i in 1:6){
  if(Fc/dfh-ks[i]/(dfh*n) < 0){
    rmsea.cor[i] <- 0
  } else {
    rmsea.cor[i]<-sqrt(Fc/dfh-ks[i]/(dfh*n))
  }
}




#Study these four CFIs

cfi.cor <- rep(0, 6)
for(i in 1:6){
  cfi.cor[i] <- 1-(Fc-ks[i]/n)/(FcB-kbs[i]/n)
}


k.greater.than.zero <-ks>0
kb.greater.than.zero <- kbs>0 

kb.greater.than.k <-  ks < kbs



Fc.greater.than.k.per.n <- Fc >ks/n



FcB.greater.than.kb.per.n <-FcB > kbs/n



#CFI.Final:
cfi.checks.small <- cbind(k.greater.than.zero , 
                          kb.greater.than.zero,
                          FcB.greater.than.kb.per.n)

cfi.OK.small <- rowSums(cfi.checks.small)==3


cfi.inter <-cfi.cor


for(i in 1:num.ver){
  if(cfi.OK.small[i]==T){ 
    if(Fc.greater.than.k.per.n[i]==F){
      cfi.inter[i] <- 1
    } 
  } 
}


cfi.inter.2 <- cfi.inter
for(i in 1:num.ver){
  if (kb.greater.than.k[i]==F){
    cfi.inter.2[i] <- 1-(Fc-kbs[i]/n)/(FcB-kbs[i]/n)
  }
}



cfi.less.than.one <- cfi.inter.2 < 1
cfi.greater.than.zero <- cfi.inter.2 > 0

cfi.checks <- cbind(cfi.checks.small, 
                    cfi.less.than.one , cfi.greater.than.zero)

cfi.OK <- rowSums(cfi.checks)==5


cfi.cor.final <-cfi.inter.2 # detect cases where the fitted models are perfect fit. 
for(i in 1:num.ver){
  if(cfi.OK[i]==F){ 
    cfi.cor.final[i] <- NA
  } 
}


#-------------Comparison of Proposed Indices-----------------------------------------------------------------------#


#comparison
rmsea.final<-c(rmsea.fiml,rmsea,rmsea.cor )
cfi.raw <-c(cfi.fiml,cfi,cfi.cor)
cfi.final <- c(cfi.fiml,cfi,cfi.cor.final)
pos.def.weight <- c(is.positive.definite(x=round(Wm_str, 6)), is.positive.definite(x=round(Wcm.obs_str, 6)), 
                    is.positive.definite(x=round(Wcm.exp_str, 6)), is.positive.definite(x=round(Wcm.obs_unstr, 6)), 
                    is.positive.definite(x=round(Wm_unstr, 6)),
                    is.positive.definite(x=round(WmB_str, 6)), is.positive.definite(x=round(WcmB.obs_str, 6)), 
                    is.positive.definite(x=round(WcmB.exp_str, 6)) )

names(pos.def.weight) <- c("Wm_str", "Wcm.obs_str", "Wcm.exp_str", 
                           "Wcm.obs_unstr","Wm_unstr", "WmB_str", "WcmB.obs_str", "WcmB.exp_str" ) #check the positiveness of different weight matrices




k.kb.check <-c(k.greater.than.zero , kb.greater.than.zero,kb.greater.than.k )
Fc.FcB.check <- c(Fc.greater.than.k.per.n , FcB.greater.than.kb.per.n)     
cfi.range.check <- c(cfi.less.than.one , cfi.greater.than.zero)
   
pos.def.weight

ks.kbs <- c(ks, kbs)
names(ks.kbs) <- c("k.obs_str","k.obs.nonn_str", 
         "k.exp_str","k.exp.nonn_str",
         "k.obs_unstr", "k.obs.nonn_unstr", 
         "kb.obs_str" ,
         "kb.obs.nonn_str" ,
         "kb.exp_str" ,
         "kb.exp.nonn_str",
         "kb.obs_unstr",
         "kb.obs.nonn_unstr")
ks.kbs
nam <- c("original.fiml","uncorr.fimlc",
         "corr.fimlc.obs_str","corr.fimlc.obs.nonn_str",
         "corr.fimlc.exp_str","corr.fimlc.exp.nonn_str",
         "corr.fimlc.obs_unstr","corr.fimlc.obs.nonn_unstr")

names(rmsea.final) <- nam

names(cfi.raw) <- nam
names(cfi.final) <-nam



pos.def.implied <- c(is.positive.definite(inspect(fit1, "implied")$cov), 
                     is.positive.definite(inspect(fit01, "implied")$cov), 
                     is.positive.definite(inspect(fitc, "implied")$cov),
                     is.positive.definite(inspect(fitcB, "implied")$cov))


pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fit01, "vcov"), 6)), 
                  is.positive.definite(round(inspect(fitc, "vcov"), 6)),
                  is.positive.definite(round(inspect(fitcB, "vcov"), 6)))

mod.converge <- c(inspect(fit1, "converged"), 
                  inspect(fit01, "converged"), 
                  inspect(fitc, "converged"),
                  inspect(fitcB, "converged"))



model.matrices <- c(pos.def.implied, pos.def.vcov, mod.converge)
names(model.matrices) <- c("fit.str.incomp.pos.def.implied","fit.str.comp.pos.def.implied", "fit.base.incomp.pos.def.implied" , "fit.base.comppos.def.implied", 
                           "fit.str.incomp.pos.def.vcov","fit.str.comp.pos.def.vcov", "fit.base.incomp.pos.def.vcov" , "fit.base.comp.pos.def.vcov", 
                           "fit.str.incomp.mod.converge","fit.str.comp.mod.converge", "fit.base.incomp.mod.converge" , "fit.base.comp.mod.converge")
model.matrices










setwd("/Volumes/SP PHD U3/missing-data-project-2/FIML-C simulation results")
save(model.matrices, file="model.matrices.RData")
