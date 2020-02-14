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







#Usage: produces a 2 x 6 matrix of all the fit indices approximations (excluding TS and MI)
#Argument: fitted.mod: the fitted model for the CFA 
########## dataset: the dataset I am using
all.fit.approx.indices <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS
  
  rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"]  #0.1085526 
  cfi.fiml<-lavInspect(fit1,"fit")["cfi"] #0.7708192
  dfh<-lavInspect(fit1,"fit")["df"]
  
  fit01<- lavaan:::lav_object_independence(fit1) #independence model run (nice feature!)
  dfb<-lavInspect(fit01,"fit")["df"]
  
  #---------------------------------------NEW FIT INDICES----------------------------------#
  N<-dim(dataset)[1]
  p<-dim(dataset)[2]
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
  
  #Wb<-lavInspect(fit01,"wls.v") #asy weight matrix used in estimation, baseline model,(pstar+p)x(pstar+p)
  #max(WmB-Wb) #0.5631951, WHAT? However, previous code suspected Wb was wrong, anyway. 
  
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
  if ( Fc-k.obs/n < 0 ){
    cfi.obs <- 1
  } else {
    cfi.obs<-1-(Fc-k.obs/n)/(FcB-kb.obs/n) 
  }
  
  
  if ( Fc-k.obs.nonn/n < 0 ){
    cfi.obs.nonn <- 1
  } else {
    cfi.obs.nonn<-1-(Fc-k.obs.nonn/n)/(FcB-kb.obs.nonn/n) 
  }
  
  
  if ( Fc-k.exp/n < 0 ){
    cfi.exp<- 1
  } else {
    cfi.exp<-1-(Fc-k.exp/n)/(FcB-kb.exp/n)  
  }
  
  
  
  if ( Fc-k.exp.nonn/n < 0 ){
    cfi.exp.nonn<- 1
  } else {
    cfi.exp.nonn<-1-(Fc-k.exp.nonn/n)/(FcB-kb.exp.nonn/n)  
  }#negative values for both denominator and numerator 
  #--------------End of Fit Indices---------------------------------------------------------------------------------#
  
  
  #-------------Comparison of Proposed Indices-----------------------------------------------------------------------#
  #For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
  #For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 
  
  
  
  #comparison
  fit.indices.vector<-c(rmsea.fiml,rmsea.uncorr,rmsea.obs,rmsea.obs.nonn,rmsea.exp,rmsea.exp.nonn, 
                        cfi.fiml, cfi.uncorr, cfi.obs,cfi.obs.nonn,cfi.exp,cfi.exp.nonn)
  names(fit.indices.vector) <- c("rmsea.original.fiml","rmsea.uncorr.approx","rmsea.corr.obs","rmsea.corr.obs.nonn","rmsea.corr.exp","rmsea.corr.exp.nonn",
                                 "cfi.original.fiml","cfi.uncorr.approx","cfi.corr.obs","cfi.corr.obs.nonn","cfi.corr.exp","cfi.corr.exp.nonn")
  fit.indices.vector
}