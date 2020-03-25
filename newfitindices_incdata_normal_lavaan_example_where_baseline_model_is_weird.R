
library(lavaan)

#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 


load("simuDatawithMiss.RData") #this is N=1,000,000
data1<-simuDatawithMiss[1:200,] #N=100




fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'





  
fit1<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS

rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"]  #0.1085526 
cfi.fiml<-lavInspect(fit1,"fit")["cfi"] #0.7708192
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

#---NEW (2020-01-16): Complete Data Quantities evaluated at FIML Estimates-----------------------------------------#
#---Yves' approach: take parameters of FIMl run, set optim.method="none" to prevent any further iterations---------# 

fitc <- sem(parTable(fit1), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=N,
                information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

fitcB <- sem(parTable(fit01), sample.cov = Sigmatilde,sample.mean=mutilde, sample.nobs=N,
                information="observed",meanstructure=TRUE,sample.cov.rescale=FALSE,optim.method="none")

Fc<-lavInspect(fitc, "fit")["fmin"]*2 #lavaan halfs the fit finction
FcB<- lavInspect(fitcB, "fit")["fmin"]*2


#------------------------------------------------------------------------------------------------------------------#
 
#--------------Main Model-----------------------------------------------------------------------------------------------#

delta <- lavInspect(fit1, "delta") #model derivatives with col/row names labeled, (pstar+p)xq 
#Cathy's note: in (pstar+p), we have to add p probably because of the mean structure. Without the mean structure, the dimension should be pxq
             #q is the number of parameters 

fit1@Options$h1.information = "structured" 
Wm <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                     lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                     lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                     lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]


#W<-lavInspect(fit1,"wls.v") #asy weight matrix used in estimation, hypothesized model,(pstar+p)x(pstar+p)
#This will match lav_model_h1_information_expected 

#sandwich meat # Cathy's note: In Yves' notes, B1 is called J. 
B1 <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                   lavsamplestats = fit1@SampleStats, lavdata = fit1@Data,
                                                   lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                   lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
Wmi<-solve(Wm)

Gamma <- Wmi %*% B1 %*% Wmi #for potentially nonnormal data, but we can test if it works better with normal data too


fit1@Options$h1.information = "structured" 
Wm <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                 lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                 lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                 lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]

E.inv <-solve(t(delta) %*% Wm%*% delta) #internal for: solve(t(delta) %*% Wm%*% delta)
U <- (Wm- Wm %*% delta %*% E.inv %*% t(delta)%*%Wm) #U matrix,(pstar+p)x(pstar+p) 







#fit1@Options$h1.information="structured" #this is the default, so this line is not necessary, but keep here to remind
fitc@Options$h1.information = "structured" 

Wcm.obs <- lavaan:::lav_model_h1_information_observed(lavmodel = fitc@Model,
                                                 lavsamplestats = fitc@SampleStats, lavdata = fitc@Data, 
                                                 lavoptions = fitc@Options, lavimplied = fitc@implied,
                                                 lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]
fitc@Options$h1.information = "structured" 
Wcm.exp <- lavaan:::lav_model_h1_information_expected(lavmodel = fitc@Model,
                                                      lavsamplestats = fitc@SampleStats, lavdata = fitc@Data, 
                                                      lavoptions = fitc@Options, lavimplied = fitc@implied,
                                                      lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]

k.obs <- sum(diag(Wcm.obs%*%Wmi%*%U%*%Wmi)) #Vika: oops, these matrices were switched in earlier code, now correct
k.obs.nonn <-sum(diag(U%*%Wmi%*%Wcm.obs%*%Wmi%*%U%*%Gamma)) #NEW, no longer assuming normality 

k.exp <- sum(diag(Wcm.exp%*%Wmi%*%U%*%Wmi)) #Vika: oops, these matrices were switched in earlier code, now correct
k.exp.nonn <-sum(diag(U%*%Wmi%*%Wcm.exp%*%Wmi%*%U%*%Gamma)) #NEW, no longer assuming normality

#--------------End Main Model----------------------------------------------------------------------------------#


#--------------Baseline Model----------------------------------------------------------------------------------#

deltab <- lavInspect(fit01, "delta") #baseline model derivatives with col/row names labeled, (pstar+p)xq
fit01@Options$h1.information = "structured" 

WmB <- lavaan:::lav_model_h1_information_observed(lavmodel = fit01@Model,
                                                  lavsamplestats = fit01@SampleStats, lavdata = fit01@Data, 
                                                  lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                  lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]
#eigen(WmB)$values #This matrix has negative eigenvalues!! Say what?? Q2 for Yves.

#Wb<-lavInspect(fit01,"wls.v") #asy weight matrix used in estimation, baseline model,(pstar+p)x(pstar+p)
#max(WmB-Wb) #0.5631951, WHAT? However, previous code suspected Wb was wrong, anyway. 

WmBi<-solve(WmB)

#sandwhich meat
B1B <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit01@Model,
                                                   lavsamplestats = fit01@SampleStats, lavdata = fit01@Data,
                                                   lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                   lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]

GammaB <- WmBi %*% B1B %*% WmBi #for potentially nonnormal data, but we can test if it works better with normal data too



fit01@Options$h1.information = "structured" 
E.inv.b <- lavTech(fit01, "inverted.information") #internal for: solve(t(delta) %*% W%*% delta), q x q, if expected (otherwise, observed)
Ub <- (WmB- WmB %*% deltab %*% E.inv.b %*% t(deltab)%*%WmB) #U matrix,(pstar+p)x(pstar+p) 

#fit1@Options$h1.information="structured" #this is the default, so this line is not necessary, but keep here to remind
fitcB@Options$h1.information = "structured" 

WcmB.obs <- lavaan:::lav_model_h1_information_observed(lavmodel = fitcB@Model,
                                                      lavsamplestats = fitcB@SampleStats, lavdata = fitcB@Data, 
                                                      lavoptions = fitcB@Options, lavimplied = fitcB@implied,
                                                      lavh1 = fitcB@h1, lavcache = fitcB@Cache)[[1]]
#Cathy's note: WcmB is complete data normal-theory weight matrix, evaluated at the FIML parameter estimates.
WcmB.obs[1:3, 1:3]

WcmB.exp <- lavaan:::lav_model_h1_information_expected(lavmodel = fitcB@Model,
                                                      lavsamplestats = fitcB@SampleStats, lavdata = fitcB@Data, 
                                                      lavoptions = fitcB@Options, lavimplied = fitcB@implied,
                                                      lavh1 = fitcB@h1, lavcache = fitcB@Cache)[[1]]
WcmB.exp[1:3, 1:3]

kb.obs <- sum(diag(WcmB.obs%*%WmBi%*%Ub%*%WmBi)) #Vika: oops, these matrices were switched in earlier code, now correct
kb.obs.nonn <-sum(diag(Ub%*%WmBi%*%WcmB.obs%*%WmBi%*%Ub%*%GammaB)) #NEW, no longer assuming normality

kb.exp <- sum(diag(WcmB.exp%*%WmBi%*%Ub%*%WmBi)) #Vika: oops, these matrices were switched in earlier code, now correct
kb.exp.nonn <-sum(diag(Ub%*%WmBi%*%WcmB.exp%*%WmBi%*%Ub%*%GammaB)) #NEW, no longer assuming normality
eigen(Wcm.exp)$values
eigen(Wcm.obs)$values
Wmi[1:3, 1:3]
WmBi[1:3, 1:3]
eigen(Wmi)$values
eigen(WmBi)$values
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

if (Fc/dfh-k.obs/(dfh*n) < 0 ) { 
  rmsea.obs <-  0} else {
    rmsea.obs <-sqrt(Fc/dfh-k.obs/(dfh*n))
  }


if (Fc/dfh-k.obs.nonn/(dfh*n) < 0 ) { 
  rmsea.obs.nonn <-  0} else {
    rmsea.obs.nonn <-sqrt(Fc/dfh-k.obs.nonn/(dfh*n))
  }


if (Fc/dfh-k.exp/(dfh*n) < 0 ) { 
  rmsea.exp <-  0} else {
    rmsea.exp <-sqrt(Fc/dfh-k.exp/(dfh*n))
  }

if (Fc/dfh-k.exp.nonn/(dfh*n) < 0 ) { 
  rmsea.exp.nonn <-  0} else {
    rmsea.exp.nonn <-sqrt(Fc/dfh-k.exp.nonn/(dfh*n))
  } #negative at small sample size 


#Study these four CFIs




if ( 1-(Fc-k.obs/n)/(FcB-kb.obs/n) >1 ){
  cfi.obs <-99 
} else {
  if ( 1-(Fc-k.obs/n)/(FcB-kb.obs/n)  < 0 ){
    cfi.obs <- 98
  } else { 
      cfi.obs<-1-(Fc-k.obs/n)/(FcB-kb.obs/n) 
    }
  }




if (1-(Fc-k.obs.nonn/n)/(FcB-kb.obs.nonn/n)>1) {
  cfi.obs.nonn <- 99
} else {
  if (1-(Fc-k.obs.nonn/n)/(FcB-kb.obs.nonn/n)< 0 ){
    cfi.obs.nonn <- 98
  } else {
    cfi.obs.nonn<-1-(Fc-k.obs.nonn/n)/(FcB-kb.obs.nonn/n) }
  }








if (1-(Fc-k.exp/n)/(FcB-kb.exp/n)  >1 ){
  cfi.exp<- 99
} else {
  if ( 1-(Fc-k.exp/n)/(FcB-kb.exp/n) < 0 ){
    cfi.exp<- 98
  } else { 
    cfi.exp<-1-(Fc-k.exp/n)/(FcB-kb.exp/n)  
    }
  }
  



if( 1-(Fc-k.exp.nonn/n)/(FcB-kb.exp.nonn/n)  >1 ) {
  cfi.exp.nonn<- 99
} else {
  if ( 1-(Fc-k.exp.nonn/n)/(FcB-kb.exp.nonn/n)< 0 ){
    cfi.exp.nonn<- 98
  } else {
    cfi.exp.nonn<-1-(Fc-k.exp.nonn/n)/(FcB-kb.exp.nonn/n) }
  } 


is.null.vcov <- is.null(vcov(fit1))
is.null.vcov.b <- is.null(vcov(fit01))

is.converge <- inspect(fit1, "converged")
is.converge.b <- inspect(fit01, "converged")
Fc
dfh 
FcB
dfb
k.obs/N
kb.obs/N
k.obs.nonn/N
kb.obs.nonn/N
k.exp/N
kb.exp/N
k.exp.nonn/N
kb.exp.nonn/N



#--------------End of Fit Indices---------------------------------------------------------------------------------#


#-------------Comparison of Proposed Indices-----------------------------------------------------------------------#
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 



#comparison
rmseas<-c(rmsea.fiml,rmsea,rmsea.obs,rmsea.obs.nonn,rmsea.exp,rmsea.exp.nonn)
cfis<-c(cfi.fiml, cfi, cfi.obs,cfi.obs.nonn,cfi.exp,cfi.exp.nonn)
out<-cbind(rmseas,cfis)
rownames(out)<-c("original.fiml","uncorr.approx","corr.obs","corr.obs.nonn","corr.exp","corr.exp.nonn")
out  
#Initial observations: only corr.obs gets closer, the other three overcorrect. (meta.n=1, but still)
#There may still be a bug somewhere, because of weired negative eigenvalues problem above... 


