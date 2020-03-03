library(lavaan)
library(mice)
### Usage: making RMSEA table. It is a matrix containing fmin and RMSEA. 
# Argument: fit.matrix : a matrix containing fmin and rmsea

rmsea_table <- function(fit.matrix) {
  fmin <- (fit.matrix[,"fmin"])*2 
  rmsea <- fit.matrix[,"rmsea"]
  final_table <- cbind(fmin, rmsea)
  row.names(final_table) <- rep("",nrow(final_table))
  round(final_table,6)
}





### Usage: making CFI table. It is a matrix containing fmin, fmin for baseline model and RMSEA. 
# Argument: fit.matrix : a matrix containing fit indices 

cfi_table <- function(fit.matrix) {
  fmin <- (fit.matrix[,"fmin"])*2 
  cfi <- fit.matrix[,"cfi"]
  fminB <- fit.matrix[,"baseline.chisq"]/1000000
  final_table <- cbind(fmin, fminB, cfi)
  row.names(final_table) <- rep("",nrow(final_table))
  round(final_table,6)
}







#Usage: produces a matrix of all the fit indices approximations and related indices (excluding TS and MI)
#Argument: fitted.mod: the fitted model for the CFA 
########## dataset: the dataset I am using
all.fit.approx.indices <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS
  
  rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"] 
  cfi.fiml<-lavInspect(fit1,"fit")["cfi"] 
  dfh<-lavInspect(fit1,"fit")["df"]
  
  fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model run (nice feature!)
  dfb<-lavInspect(fit01,"fit")["df"]
  
  #---------------------------------------NEW FIT INDICES----------------------------------#
  N<-dim(dataset)[1]

  
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
  
  #fit1@Options$h1.information="structured" #this is the default, so this line is not necessary, but keep here to remind
  Wm <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                   lavsamplestats = fit1@SampleStats, lavdata = fit1@Data, 
                                                   lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                   lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
  
  
  #W<-lavInspect(fit1,"wls.v") #asy weight matrix used in estimation, hypothesized model,(pstar+p)x(pstar+p)
  #This will match lav_model_h1_information_expected 
  
  #sandwich meat
  B1 <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                     lavsamplestats = fit1@SampleStats, lavdata = fit1@Data,
                                                     lavoptions = fit1@Options, lavimplied = fit1@implied,
                                                     lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
  Wmi<-solve(Wm)
  
  Gamma <- Wmi %*% B1 %*% Wmi #for potentially nonnormal data, but we can test if it works better with normal data too
  
  E.inv <- lavTech(fit1, "inverted.information") #internal for: solve(t(delta) %*% Wm%*% delta)
  U <- (Wm- Wm %*% delta %*% E.inv %*% t(delta)%*%Wm) #U matrix,(pstar+p)x(pstar+p) 
  
  #fit1@Options$h1.information="structured" #this is the default, so this line is not necessary, but keep here to remind
  Wcm.obs <- lavaan:::lav_model_h1_information_observed(lavmodel = fitc@Model,
                                                        lavsamplestats = fitc@SampleStats, lavdata = fitc@Data, 
                                                        lavoptions = fitc@Options, lavimplied = fitc@implied,
                                                        lavh1 = fitc@h1, lavcache = fitc@Cache)[[1]]
  
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
  
  WmB <- lavaan:::lav_model_h1_information_observed(lavmodel = fit01@Model,
                                                    lavsamplestats = fit01@SampleStats, lavdata = fit01@Data, 
                                                    lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                    lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]
  #eigen(WmB)$values #This matrix has negative eigenvalues!! Say what?? Q2 for Yves.
  

  
  WmBi<-solve(WmB)
  
  #sandwhich meat
  B1B <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit01@Model,
                                                      lavsamplestats = fit01@SampleStats, lavdata = fit01@Data,
                                                      lavoptions = fit01@Options, lavimplied = fit01@implied,
                                                      lavh1 = fit01@h1, lavcache = fit01@Cache)[[1]]
  
  GammaB <- WmBi %*% B1B %*% WmBi #for potentially nonnormal data, but we can test if it works better with normal data too
  
  E.inv.b <- lavTech(fit01, "inverted.information") #internal for: solve(t(delta) %*% W%*% delta), q x q, if expected (otherwise, observed)
  Ub <- (WmB- WmB %*% deltab %*% E.inv.b %*% t(deltab)%*%WmB) #U matrix,(pstar+p)x(pstar+p) 
  
  #fit1@Options$h1.information="structured" #this is the default, so this line is not necessary, but keep here to remind
  WcmB.obs <- lavaan:::lav_model_h1_information_observed(lavmodel = fitcB@Model,
                                                         lavsamplestats = fitcB@SampleStats, lavdata = fitcB@Data, 
                                                         lavoptions = fitcB@Options, lavimplied = fitcB@implied,
                                                         lavh1 = fitcB@h1, lavcache = fitcB@Cache)[[1]]
  #Cathy's note: WcmB is complete data normal-theory weight matrix, evaluated at the FIML parameter estimates. 
  
  WcmB.exp <- lavaan:::lav_model_h1_information_expected(lavmodel = fitcB@Model,
                                                         lavsamplestats = fitcB@SampleStats, lavdata = fitcB@Data, 
                                                         lavoptions = fitcB@Options, lavimplied = fitcB@implied,
                                                         lavh1 = fitcB@h1, lavcache = fitcB@Cache)[[1]]
  
  kb.obs <- sum(diag(WcmB.obs%*%WmBi%*%Ub%*%WmBi)) #Vika: oops, these matrices were switched in earlier code, now correct
  kb.obs.nonn <-sum(diag(Ub%*%WmBi%*%WcmB.obs%*%WmBi%*%Ub%*%GammaB)) #NEW, no longer assuming normality
  
  kb.exp <- sum(diag(WcmB.exp%*%Wmi%*%U%*%Wmi)) #Vika: oops, these matrices were switched in earlier code, now correct
  kb.exp.nonn <-sum(diag(Ub%*%Wmi%*%WcmB.exp%*%Wmi%*%Ub%*%GammaB)) #NEW, no longer assuming normality
  #--------------End Baseline Model----------------------------------------------------------------------------------#
  
  #--------------Fit Indices:----------------------------------------------------------------------------------------#
  
  #--------New fit index versions without small sample corrections (equation 6 and 7 in the Overleaf document)------------#
  n<-N-1 #EQS variety, remove and replace with N to study Mplus variety

  
  
  if (Fc/dfh-1/n < 0 ) { 
    rmsea.uncorr <-  0} else {
      rmsea.uncorr <-sqrt(Fc/dfh-1/n) 
    }
  
  
  if ( Fc-dfh/n < 0 ){
    cfi.uncorr <- 1
  } else {
    cfi.uncorr<-1-(Fc-dfh/n)/(FcB-dfb/n)
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
  
  
  
  if ( FcB-kb.obs/n < 0 ){
    cfi.obs <-99
  } else {
    if ( Fc-k.obs/n < 0 ){
      cfi.obs <- 1
    } else { 
      if ( (Fc-k.obs/n)/(FcB-kb.obs/n)>1 ) {
        cfi.obs <- 98
      } else {
        cfi.obs<-1-(Fc-k.obs/n)/(FcB-kb.obs/n) 
      }
    }
  }
  
  
  
  
  if (FcB-kb.obs.nonn/n < 0) {
    cfi.obs.nonn <- 99
  } else {
    if ( Fc-k.obs.nonn/n < 0 ){
      cfi.obs.nonn <- 1
    } else { if ((Fc-k.obs.nonn/n)/(FcB-kb.obs.nonn/n)>1 ){
      cfi.obs.nonn <- 98
    } else{
      cfi.obs.nonn<-1-(Fc-k.obs.nonn/n)/(FcB-kb.obs.nonn/n) }
    }
  }
  
  
  
  
  if (FcB-kb.exp/n <0 ){
    cfi.exp<- 99
  } else {
    if ( Fc-k.exp/n < 0 ){
      cfi.exp<- 1
    } else { if ((Fc-k.exp/n)/(FcB-kb.exp/n)>1){
      cfi.exp<- 99
    } else {
      cfi.exp<-1-(Fc-k.exp/n)/(FcB-kb.exp/n)  
    }
    }
    
  }
  
  
  if(FcB-kb.exp.nonn/n  <0 ) {
    cfi.exp.nonn<- 99
  } else {
    if ( Fc-k.exp.nonn/n < 0 ){
      cfi.exp.nonn<- 1
    } else { if ( (Fc-k.exp.nonn/n)/(FcB-kb.exp.nonn/n)>1) {
      cfi.exp.nonn<-98
    } else{
      cfi.exp.nonn<-1-(Fc-k.exp.nonn/n)/(FcB-kb.exp.nonn/n) }
    } 
  }
  
  is.null.vcov <- is.null(vcov(fit1))
  is.null.vcov.b <- is.null(vcov(fit01))
  
  is.converge <- inspect(fit1, "converged")
  is.converge.b <- inspect(fit01, "converged")

  
  
  #--------------End of Fit Indices---------------------------------------------------------------------------------#
  
  
  #-------------Comparison of Proposed Indices-----------------------------------------------------------------------#

  #comparison
  fit.indices.vector<-c(rmsea.fiml,rmsea.uncorr,rmsea.obs,
                        rmsea.obs.nonn,rmsea.exp,rmsea.exp.nonn, 
                        cfi.fiml, cfi.uncorr, cfi.obs,
                        cfi.obs.nonn,cfi.exp,cfi.exp.nonn, 
                        is.null.vcov,is.null.vcov.b, 
                        is.converge, is.converge.b,
                        Fc, dfh, FcB, dfb, 
                        k.obs,kb.obs,
                        k.obs.nonn, kb.obs.nonn,
                        k.exp, kb.exp,
                        k.exp.nonn,kb.exp.nonn)
  names(fit.indices.vector) <- c("rmsea.original.fiml","rmsea.uncorr.approx","rmsea.corr.obs",
                                 "rmsea.corr.obs.nonn","rmsea.corr.exp","rmsea.corr.exp.nonn",
                                 "cfi.original.fiml","cfi.uncorr.approx", 
                                 "cfi.corr.obs",  "cfi.corr.obs.nonn",
                                 "cfi.corr.exp","cfi.corr.exp.nonn",
                                 "is.null.vcov","is.null.vcov.b", 
                                 "is.converge", "is.converge.b",
                                 "Fc", "dfh", "FcB", "dfb", 
                                 "k.obs","kb.obs",
                                 "k.obs.nonn", "kb.obs.nonn",
                                 "k.exp", "kb.exp",
                                 "k.exp.nonn","kb.exp.nonn")
  fit.indices.vector
}










#Usage: produces a matrix of all the fit indices approximations and related indices (excluding TS and MI)
#Argument: fitted.mod: the fitted model for the CFA 
########## dataset: the dataset I am using
all.fit.ts <- function(fitted.mod, dataset){
  N<-dim(dataset)[1]
  n <- N-1

  fit1<-cfa(model=fitted.mod,data=dataset,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS
  
  Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
  mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure

  #stage 2 
  fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)
  
  Fc<-lavInspect(fit2, "fit")["fmin"]*2 #lavaan halfs the fit finction
  
  fit1@Options$h1.information = "structured" 
  fit2@Options$h1.information = "structured" 
  #this is the default, so this line is not necessary, but keep here to remind
  Wm.ts.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                          lavsamplestats = fit1@SampleStats, 
                                                          lavdata = fit1@Data, 
                                                          lavoptions = fit1@Options, 
                                                          lavimplied = fit2@implied,
                                                          lavh1 = fit2@h1, lavcache = fit1@Cache)[[1]]
  Wm.fiml.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                            lavsamplestats = fit1@SampleStats, 
                                                            lavdata = fit1@Data, 
                                                            lavoptions = fit1@Options, 
                                                            lavimplied = fit1@implied,
                                                            lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
  
  #Cathy's note: This is the weight matrix of FIML but evaluated at TS estimates.   
  #I believe that lavimplied = fit2@implied allows to me evaluate it at TS estimates. 
  #Cathy has checked that if we do fit1@Options$h1.information = "unstructured" , 
  #then lavimplied = fit2@implied or lavimplied = fit1@implied makes no difference. 
  
  
  B1.ts.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                            lavsamplestats = fit1@SampleStats, 
                                                            lavdata = fit1@Data,
                                                            lavoptions = fit1@Options, 
                                                            lavimplied = fit2@implied,
                                                            lavh1 = fit2@h1, lavcache = fit1@Cache)[[1]]
  #Cathy's note: This is the first order information matrix of FIML but evaluated at TS estimates.   
  #I believe that lavimplied = fit2@implied allows to me evaluate it at TS estimates. 
  B1.fiml.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                              lavsamplestats = fit1@SampleStats, 
                                                              lavdata = fit1@Data,
                                                              lavoptions = fit1@Options, 
                                                              lavimplied = fit2@implied,
                                                              lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
  
  
  Wmi.ts.est <-solve(Wm.ts.est)
  Gamma.ts.est <- Wmi.ts.est %*% B1.ts.est %*% Wmi.ts.est  
  Wmi.fiml.est <-solve(Wm.fiml.est)
  Gamma.fiml.est <- Wmi.fiml.est %*% B1.fiml.est %*% Wmi.fiml.est  
  #Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
  #This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method
  
  
  deltabreve <- lavInspect(fit2, "delta")

  
  Wc <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                   lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                   lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                   lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]

 
  
  Uc <- Wc-Wc%*%deltabreve%*%solve(t(deltabreve)%*%Wc%*%deltabreve)%*%t(deltabreve)%*%Wc
  
  c.ts.est <- lav_matrix_trace(Uc%*%Gamma.ts.est)

  c.fiml.est <- lav_matrix_trace(Uc%*%Gamma.fiml.est)
 
  dfh<-lavInspect(fit1,"fit")["df"]
  
  
  rmsea.uncor <- lavInspect(fit2, "fit")["rmsea"]
  
  
  if (Fc/dfh-c.ts.est/(dfh*n) < 0 ) { 
    rmsea.cor.ts.est <-  0} else {
      rmsea.cor.ts.est <-sqrt(Fc/dfh-c.ts.est/(dfh*n))
    }
  
  
  
  if (Fc/dfh-c.fiml.est/(dfh*n) < 0 ) { 
    rmsea.cor.fiml.est <-  0} else {
      rmsea.cor.fiml.est <-sqrt(Fc/dfh-c.fiml.est/(dfh*n))
    }
  
  #Calculating CFI: 
  #fitting the baseline model 
  fit1B <-  lavaan:::lav_object_independence(fit1, se=T) 
  dfB <- lavInspect(fit1B, "fit")["df"]
  fit2B <- lavaan:::lav_object_independence(fit2, se=T) 
  FcB<-lavInspect(fit2B, "fit")["fmin"]*2 #lavaan halfs the fit finction
  dfB<-lavInspect(fit1B,"fit")["df"]
  fit1B@Options$h1.information = "structured" 
  fit2B@Options$h1.information = "structured" 
  WmB.ts.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1B@Model,
                                                           lavsamplestats = fit1B@SampleStats, 
                                                           lavdata = fit1B@Data, 
                                                           lavoptions = fit1B@Options, 
                                                           lavimplied = fit2B@implied,
                                                           lavh1 = fit2B@h1, lavcache = fit1B@Cache)[[1]]
  WmB.fiml.est <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1B@Model,
                                                             lavsamplestats = fit1B@SampleStats, 
                                                             lavdata = fit1B@Data, 
                                                             lavoptions = fit1B@Options, 
                                                             lavimplied = fit1B@implied,
                                                             lavh1 = fit1B@h1, lavcache = fit1B@Cache)[[1]]
  #Cathy's note: This is the weight matrix of FIML but evaluated at TS estimates.   
  #I believe that lavimplied = fit2B@implied allows to me evaluate it at TS estimates. 
  
  B1B.fiml.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1B@Model,
                                                               lavsamplestats = fit1B@SampleStats, 
                                                               lavdata = fit1B@Data,
                                                               lavoptions = fit1B@Options, 
                                                               lavimplied = fit1B@implied,
                                                               lavh1 = fit2B@h1, lavcache = fit1B@Cache)[[1]]
  B1B.ts.est <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1B@Model,
                                                             lavsamplestats = fit1B@SampleStats, 
                                                             lavdata = fit1B@Data,
                                                             lavoptions = fit1B@Options, 
                                                             lavimplied = fit2B@implied,
                                                             lavh1 = fit1B@h1, lavcache = fit1B@Cache)[[1]]
  #Cathy's note: This is the first order information matrix of FIML but evaluated at TS estimates.   
  #I believe that lavimplied = fit2B@implied allows to me evaluate it at TS estimates. 
  
  WmiB.ts.est<-solve(WmB.ts.est)
  GammaB.ts.est <- WmiB.ts.est %*% B1B.ts.est %*% WmiB.ts.est 
  WmiB.fiml.est<-solve(WmB.fiml.est)
  GammaB.fiml.est <- WmiB.fiml.est %*% B1B.fiml.est %*% WmiB.fiml.est
  #Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
  #This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method
  deltabreveB <- lavInspect(fit2B, "delta")
  
  WcB <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2B@Model,
                                                    lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
                                                    lavoptions = fit2B@Options, lavimplied = fit2B@implied,
                                                    lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]
  
  
  UcB <- WcB-WcB%*%deltabreveB%*%solve(t(deltabreveB)%*%WcB%*%deltabreveB)%*%t(deltabreveB)%*%WcB
  
  cB.ts.est <- lav_matrix_trace(UcB%*%GammaB.ts.est)

  
  cB.fiml.est <- lav_matrix_trace(UcB%*%GammaB.fiml.est)

  
  
  
  if (FcB-cB.ts.est/n < 0) {
    cfi.cor.ts.est <- 99
  } else {
    if ( Fc-c.ts.est/n < 0 ){
      cfi.cor.ts.est  <- 1
    } else { if ((Fc-c.ts.est/n)/(FcB-cB.ts.est/n)>1 ){
      cfi.cor.ts.est <- 98
    } else{
      cfi.cor.ts.est<-1-(Fc-c.ts.est/n)/(FcB-cB.ts.est/n) }
    }
  }
  
  
  
  
  if (FcB-cB.fiml.est/n < 0) {
    cfi.cor.fiml.est <- 99
  } else {
    if ( Fc-c.fiml.est/n < 0 ){
      cfi.cor.fiml.est  <- 1
    } else { if ((Fc-c.fiml.est/n)/(FcB-cB.fiml.est/n)>1 ){
      cfi.cor.fiml.est <- 98
    } else{
      cfi.cor.fiml.est<-1-(Fc-c.fiml.est/n)/(FcB-cB.fiml.est/n) }
    }
  }
  
  
  cfi.uncor <-lavInspect(fit2, "fit")["cfi"]

  
  is.null.vcov <- is.null(vcov(fit2))
  is.null.vcov.b <- is.null(vcov(fit2B))
  
  is.converge <- inspect(fit2, "converged")
  is.converge.b <- inspect(fit2B, "converged")
  
  #--------------End of Fit Indices---------------------------------------------------------------------------------#
  
  
  #-------------Comparison of Proposed Indices-----------------------------------------------------------------------#
  fit.indices.vector<- c( rmsea.uncor,  rmsea.cor.ts.est, rmsea.cor.fiml.est,
                          cfi.uncor,  cfi.cor.ts.est, cfi.cor.fiml.est, 
                         is.null.vcov, is.null.vcov.b, 
                         is.converge, is.converge.b,
                         Fc, FcB, 
                         dfh, dfB, 
                         c.ts.est, cB.ts.est, 
                         c.fiml.est, cB.fiml.est)
  fit.indices.vector<- round(fit.indices.vector, 8)
  names(fit.indices.vector) <- c("rmsea.uncor", "rmsea.cor.ts.est", "rmsea.cor.fiml.est", 
                                 "cfi.uncor",  "cfi.cor.ts.est", "cfi.cor.fiml.est",
                                 "is.null.vcov", "is.null.vcov.b", 
                                 "is.converge", "is.converge.b",
                                 "Fc", "FcB", 
                                 "dfh", "dfB", 
                                 "c.ts.est", "cB.ts.est", 
                                 "c.fiml.est", "cB.fiml.est")
  fit.indices.vector
}










#Usage: produces a matrix of all the fit indices approximations and related indices (excluding TS and MI)
#Argument: fitted.mod: the fitted model for the CFA 
########## dataset: the dataset I am using
########### num.of.imp : the number of imputation rounds
all.fit.mi <- function(fitted.mod, dataset, num.of.imp1){
  imputeData.all <- mice(data=dataset, m=num.of.imp1, seed=123, method="norm", printFlag=F)
  
  
  rmsea.vector <- rep(NA,num.of.imp1)
  cfi.vector <- rep(NA, num.of.imp1)
  fmin.vector <- rep(NA, num.of.imp1)
  fminB.vector <- rep(NA, num.of.imp1)
  is.converged.vector <- rep(NA, num.of.imp1)
  is.null.vcov.vector <- rep(NA, num.of.imp1)
  
  for(i in 1:num.of.imp1){
    imputeData <- complete(imputeData.all,i)
    fit <- cfa(model=fitted.mod, data=imputeData, mimic="EQS")
    fit.ind <- lavInspect(fit, "fit")[c("rmsea", "cfi", "fmin", "baseline.chisq", "df", "baseline.df")]
    rmsea.vector[i] <- fit.ind[c("rmsea")]
    cfi.vector[i] <- fit.ind[c("cfi")]
    fmin.vector[i] <- fit.ind[c("fmin")]*2
    fminB.vector[i] <- fit.ind[c("baseline.chisq")]/nrow(imputeData)
    is.converged.vector[i] <- lavInspect(fit, "converged")
    is.null.vcov.vector[i] <- is.null(vcov(fit))
  }
  rmsea <- mean(rmsea.vector, na.rm=T)
  cfi <- mean(cfi.vector, na.rm=T)
  fmin <-mean(fmin.vector, na.rm=T)
  fminB <- mean(fminB.vector, na.rm=T)
  is.converged <- mean(is.converged.vector)
  is.null.vcov <- mean(is.null.vcov.vector)
  dfh <- fit.ind["df"] 
  dfB <- fit.ind["baseline.df"] 
  fit.indices.vector <-round(c(rmsea, cfi, fmin,fminB ,
                               is.converged, is.null.vcov,
                               dfh, dfB),8)
  names(fit.indices.vector) <- c("rmsea", "cfi", "fmin", "fminB",
                                 "is.converged", "is.null.vcov", 
                                 "dfh", "dfB")
  fit.indices.vector
}




