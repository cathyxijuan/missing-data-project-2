#Usage: produces a matrix of fiml fit indices, all the components for computing FIML-C fit indices and various checks for matrices
#Argument: fitted.mod: the fitted model for the CFA 
########## dataset: the dataset I am using
all.fit.fimlc <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS
  
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
  names(ks.kbs) <- c("k.obs_str","k.obs.nonn_str", 
                     "k.exp_str","k.exp.nonn_str",
                     "k.obs_unstr", "k.obs.nonn_unstr", 
                     "kb.obs_str" ,
                     "kb.obs.nonn_str" ,
                     "kb.exp_str" ,
                     "kb.exp.nonn_str",
                     "kb.obs_unstr",
                     "kb.obs.nonn_unstr")
  
  pos.def.weight <- c(is.positive.definite(x=round(Wm_str, 6)), is.positive.definite(x=round(Wcm.obs_str, 6)), 
                      is.positive.definite(x=round(Wcm.exp_str, 6)), is.positive.definite(x=round(Wcm.obs_unstr, 6)), 
                      is.positive.definite(x=round(Wm_unstr, 6)),
                      is.positive.definite(x=round(WmB_str, 6)), is.positive.definite(x=round(WcmB.obs_str, 6)), 
                      is.positive.definite(x=round(WcmB.exp_str, 6)) )
  
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
                        "fit.str.incomp.pos.def.implied","fit.base.incomp.pos.def.implied", "fit.str.comp.pos.def.implied" , "fit.base.comp.pos.def.implied", 
                        "fit.str.incomp.pos.def.vcov","fit.base.incomp.pos.def.vcov", "fit.str.comp.pos.def.vcov" , "fit.base.comp.pos.def.vcov", 
                        "fit.str.incomp.mod.converge","fit.base.incomp.mod.converge", "fit.str.comp.mod.converge" , "fit.base.comp.mod.converge")
  
  first.out
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

load("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n200.RData")
cond <- fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n200[[1]]

old.checks <- cond[c(20:27,28:29,32:33, 36:37), ]
rownames(old.checks)[9:14] <- c("fit.str.pos.def.implied","fit.base.pos.def.implied",  
                                "fit.str.pos.def.vcov","fit.base.pos.def.vcov",  
                                "fit.str.mod.converge","fit.base.mod.converge")


cond[c(20:27,28:29), ]







#####checking model implied matrices



fimlc.mod.imp <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS
 
  
  fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 

  
  #fits <- lavaan:::lav_object_unrestricted(fit1, se=T) #saturated model
  
  #---------------------------------------NEW FIT INDICES----------------------------------#
  n <-nrow(dataset)
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
  
 # check.same <- sum(inspect(fitc, "implied")$cov==inspect(fit1, "implied")$cov)==144
 out <-  as.vector(inspect(fitc, "implied")$cov-inspect(fit1, "implied")$cov)

out
}






fimlc.mod.imp2 <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS
  
  
  fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 
  
  
  #fits <- lavaan:::lav_object_unrestricted(fit1, se=T) #saturated model
  
  #---------------------------------------NEW FIT INDICES----------------------------------#
  n <-nrow(dataset)
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
  
  
    
    pos.def.implied <- c(is.positive.definite(inspect(fit1, "implied")$cov), 
                         is.positive.definite(inspect(fit01, "implied")$cov), 
                         is.positive.definite(inspect(fitc, "implied")$cov),
                         is.positive.definite(inspect(fitcB, "implied")$cov))
    names(pos.def.implied) <- c("fit.str.incomp.pos.def.implied","fit.base.incomp.pos.def.implied", 
                                "fit.str.comp.pos.def.implied" , "fit.base.comp.pos.def.implied")
    pos.def.implied

}










