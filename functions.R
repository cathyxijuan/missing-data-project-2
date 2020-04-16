library(lavaan)
library(mice)
library(matrixcalc)
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









#Usage: produces a matrix of fiml fit indices, all the components for computing FIML-C fit indices and various checks for matrices
#Argument: fitted.mod: the fitted model for the CFA 
########## dataset: the dataset I am using
fimlc.components <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,estimator="ML",missing="FIML") #normal data
  
  rmsea.fiml<-lavInspect(fit1,"fit")["rmsea"]  
  cfi.fiml<-lavInspect(fit1,"fit")["cfi"] 
  dfh<-lavInspect(fit1,"fit")["df"]
  
  fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 
  dfb<-lavInspect(fit01,"fit")["df"]
  

  #---------------------------------------NEW FIT INDICES----------------------------------#
  n <-nrow(dataset)

  
 
  Sigmatilde<-lavInspect(fit1,"sampstat")$cov #Sigmatilde 
  mutilde<-lavInspect(fit1,"sampstat")$mean #Sigmatilde 
  
  
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
  
  pos.def.implied <- c(is.positive.definite(round(inspect(fit1, "vcov"), 6)), 
                       is.positive.definite(round(inspect(fit01, "vcov"), 6)), 
                       is.positive.definite(round(inspect(fitc, "vcov"), 6)),
                       is.positive.definite(round(inspect(fitcB, "vcov"), 6)))
  
  
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
                        "fit.str.incomp.pos.def.implied","fit.str.comp.pos.def.implied", "fit.base.incomp.pos.def.implied" , "fit.base.compos.def.implied", 
                        "fit.str.incomp.pos.def.vcov","fit.str.comp.pos.def.vcov", "fit.base.incomp.pos.def.vcov" , "fit.base.comp.pos.def.vcov", 
                        "fit.str.incomp.mod.converge","fit.str.comp.mod.converge", "fit.base.incomp.mod.converge" , "fit.base.comp.mod.converge")
  
  first.out
}





###Usage: produce all version of fimlc fit indices 
#### Argument: components.list: a list of all the correction terms and various checks produced by the fimlc.component() function
fimlc.fit <- function(components.list){
  len <- length(components.list)
  
  fit.list <- vector(mode="list", length=len)
  
  for(i in 1:len) {
    cond <- components.list[[i]]
    rmsea.fiml <- cond["rmsea.fiml",]
    cfi.fiml <- cond["cfi.fiml",]
    
    
    rmsea.denom <- (cond["dfh",]*cond["n",])
    ###uncor version##
    t1 <- pmax((cond["chisqc", ]-cond["dfh",]), 0)
    
    t2 <- pmax((cond["chisqc", ]-cond["dfh",]), (cond["chisqcB", ]-cond["dfb",]),  0)
    
    rmsea.uncor.fimlc <- sqrt(t1/rmsea.denom)
    
    
    cfi.uncor.fimlc <- 1-t1/t2
    cfi.uncor.fimlc[which(t2==0)] <-1
    
  
    ###cor.obs_str version###
    
    t1.obs_str <- pmax((cond["chisqc", ]-cond["k.obs_str", ]), 0)
    t2.obs_str <- pmax((cond["chisqc", ]-cond["k.obs_str", ]), (cond["chisqcB", ]-cond["kb.obs_str", ]), 0)
    rmsea.cor.obs_str <- sqrt(t1.obs_str/rmsea.denom)
    
    cfi.cor.obs_str <- 1-t1.obs_str/t2.obs_str
    cfi.cor.obs_str[which(t2.obs_str==0)] <- 1
    
    ###cor.obs.nonn_str version###
    
    t1.obs.nonn_str <- pmax((cond["chisqc", ]-cond["k.obs.nonn_str", ]), 0)
    t2.obs.nonn_str <- pmax((cond["chisqc", ]-cond["k.obs.nonn_str", ]), 
                            (cond["chisqcB", ]-cond["kb.obs.nonn_str", ]), 0)
    rmsea.cor.obs.nonn_str <- sqrt(t1.obs.nonn_str/rmsea.denom)
    cfi.cor.obs.nonn_str <- 1-t1.obs.nonn_str/t2.obs.nonn_str 
    cfi.cor.obs.nonn_str[which(t2.obs.nonn_str==0)] <- 1
    
    
    
    ###cor.exp_str version###
    
    t1.exp_str <- pmax((cond["chisqc", ]-cond["k.exp_str", ]), 0)
    t2.exp_str <- pmax((cond["chisqc", ]-cond["k.exp_str", ]), (cond["chisqcB", ]-cond["kb.exp_str", ]), 0)
    rmsea.cor.exp_str <- sqrt(t1.exp_str/rmsea.denom)
    
    cfi.cor.exp_str <- 1-t1.exp_str/t2.exp_str
    cfi.cor.exp_str[which(t2.exp_str==0)] <-1
    
    ###cor.exp.nonn_str version###
    
    t1.exp.nonn_str <- pmax((cond["chisqc", ]-cond["k.exp.nonn_str", ]), 0)
    t2.exp.nonn_str <- pmax((cond["chisqc", ]-cond["k.exp.nonn_str", ]), (cond["chisqcB", ]-cond["kb.exp.nonn_str", ]), 0)
    rmsea.cor.exp.nonn_str <- sqrt(t1.exp.nonn_str/rmsea.denom)
    
    cfi.cor.exp.nonn_str <- 1-t1.exp.nonn_str/t2.exp.nonn_str
    cfi.cor.exp.nonn_str[which(t2.exp.nonn_str==0)] <- 1
    
    
    
    ###cor.obs_unstr version###
    
    t1.obs_unstr <- pmax((cond["chisqc", ]-cond["k.obs_unstr", ]), 0)
    t2.obs_unstr <- pmax((cond["chisqc", ]-cond["k.obs_unstr", ]), (cond["chisqcB", ]-cond["kb.obs_unstr", ]), 0)
    rmsea.cor.obs_unstr <- sqrt(t1.obs_unstr/rmsea.denom)
    
    cfi.cor.obs_unstr <- 1-t1.obs_unstr/t2.obs_unstr
    cfi.cor.obs_unstr[which(t2.obs_unstr==0)] <- 1
    
    ###cor.obs.nonn_unstr version###
    
    t1.obs.nonn_unstr <- pmax((cond["chisqc", ]-cond["k.obs.nonn_unstr", ]), 0)
    t2.obs.nonn_unstr <- pmax((cond["chisqc", ]-cond["k.obs.nonn_unstr", ]), 
                              (cond["chisqcB", ]-cond["kb.obs.nonn_unstr", ]), 0)
    rmsea.cor.obs.nonn_unstr <- sqrt(t1.obs.nonn_unstr/rmsea.denom)
    
    cfi.cor.obs.nonn_unstr <- 1-t1.obs.nonn_unstr/t2.obs.nonn_unstr
    cfi.cor.obs.nonn_unstr[which(t2.obs.nonn_unstr==0)] <- 1
    
    
    fit.ind <-rbind(rmsea.fiml, rmsea.uncor.fimlc, rmsea.cor.obs_str, rmsea.cor.obs.nonn_str,
                    rmsea.cor.exp_str,rmsea.cor.exp.nonn_str,
                    rmsea.cor.obs_unstr,rmsea.cor.obs.nonn_unstr, 
                    cfi.fiml, cfi.uncor.fimlc, cfi.cor.obs_str, cfi.cor.obs.nonn_str,
                    cfi.cor.exp_str,cfi.cor.exp.nonn_str,
                    cfi.cor.obs_unstr,cfi.cor.obs.nonn_unstr)
    fit.list[[i]] <- fit.ind
    
    
  }
  fit.list
  
}








###Usage: produce all the checks for fimlc fit indices 
#### Argument: components.list: a list of all the correction terms and various checks produced by the fimlc.component() function
fimlc.checks <- function(components.list){
  len <- length(components.list)
  check.list <- vector(mode="list", length=len)
  
  for(i in 1:len){
    cond <- components.list[[1]]
    
    old.checks <- cond[20:39, ]
    great.zero <- cond[8:19,] >0
    rownames(great.zero) <- paste(rownames(great.zero), "great.zero", sep=".")
    k.less.kb <- cond[8:13,] < cond[14:19, ] 
    rownames(k.less.kb) <- paste(rownames(k.less.kb), "k.less.kb" , sep=".")
    
    k.less.chi <- cond[8:13, ] < cond["chisqc", ]
    rownames(k.less.chi) <- paste(rownames(k.less.chi), "k.less.chi" , sep=".")
    kb.less.chiB <- cond[14:19, ] < cond["chisqcB", ]
    rownames(kb.less.chiB) <- paste(rownames(kb.less.chiB), "kb.less.chiB" , sep=".")
    new.checks <- rbind(great.zero,k.less.kb,k.less.chi,kb.less.chiB)
    new.checks <- new.checks[c("k.obs_str.great.zero", 
                               "kb.obs_str.great.zero", 
                               "k.obs_str.k.less.kb",
                               "k.obs_str.k.less.chi", 
                               "kb.obs_str.kb.less.chiB", 
                               "k.obs.nonn_str.great.zero", 
                               "kb.obs.nonn_str.great.zero", 
                               "k.obs.nonn_str.k.less.kb",
                               "k.obs.nonn_str.k.less.chi", 
                               "kb.obs.nonn_str.kb.less.chiB", 
                               "k.exp_str.great.zero", 
                               "kb.exp_str.great.zero", 
                               "k.exp_str.k.less.kb",
                               "k.exp_str.k.less.chi", 
                               "kb.exp_str.kb.less.chiB",
                               "k.exp.nonn_str.great.zero", 
                               "kb.exp.nonn_str.great.zero", 
                               "k.exp.nonn_str.k.less.kb",
                               "k.exp.nonn_str.k.less.chi", 
                               "kb.exp.nonn_str.kb.less.chiB",
                               "k.obs_unstr.great.zero", 
                               "kb.obs_unstr.great.zero", 
                               "k.obs_unstr.k.less.kb",
                               "k.obs_unstr.k.less.chi", 
                               "kb.obs_unstr.kb.less.chiB",
                               "k.obs.nonn_unstr.great.zero", 
                               "kb.obs.nonn_unstr.great.zero", 
                               "k.obs.nonn_unstr.k.less.kb",
                               "k.obs.nonn_unstr.k.less.chi", 
                               "kb.obs.nonn_unstr.kb.less.chiB" ),]
    cfi.ok.obs_str <- colSums(new.checks[1:5, ])==5
    cfi.ok.obs.nonn_str <- colSums(new.checks[6:10, ])==5
    cfi.ok.exp_str <- colSums(new.checks[11:15, ])==5
    cfi.ok.exp.nonn_str <- colSums(new.checks[16:20, ])==5
    cfi.ok.obs_unstr <- colSums(new.checks[21:25, ])==5
    cfi.ok.obs.nonn_unstr <- colSums(new.checks[26:30, ])==5
    cfi.checks <- rbind(cfi.ok.obs_str , 
                        cfi.ok.obs.nonn_str , 
                        cfi.ok.exp_str, 
                        cfi.ok.exp.nonn_str, 
                        cfi.ok.obs_unstr, 
                        cfi.ok.obs.nonn_unstr )
    
    all.checks <- rbind(old.checks, new.checks, cfi.checks)
    check.list[[i]] <- all.checks
  }
  check.list
}


