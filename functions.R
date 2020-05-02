library(lavaan)
library(mice)
library(matrixNormal)
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_WM_new.RData")


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
  
  fit1<-cfa(model=fitted.mod,data=dataset,estimator="ML",missing="FIML") #normal data
  
  fiml.fit<-lavInspect(fit1,"fit")[c("rmsea","cfi")]  
  
  
  
  imputeData.all <- mice(data=dataset, m=num.of.imp1, method="norm", printFlag=F)
  
  
  rmsea.vector <- rep(NA,num.of.imp1)
  cfi.vector <- rep(NA, num.of.imp1)
  is.converged.vector <- rep(NA, num.of.imp1)
  is.null.vcov.vector <- rep(NA, num.of.imp1)
  
  for(i in 1:num.of.imp1){
    imputeData <- complete(imputeData.all,i)
    fit <- cfa(model=fitted.mod, data=imputeData)
    fit.ind <- lavInspect(fit, "fit")[c("rmsea", "cfi")]
    rmsea.vector[i] <- fit.ind[c("rmsea")]
    cfi.vector[i] <- fit.ind[c("cfi")]
    is.converged.vector[i] <- lavInspect(fit, "converged")
    is.null.vcov.vector[i] <- is.null(vcov(fit))
  }
  rmsea <- mean(rmsea.vector, na.rm=T)
  cfi <- mean(cfi.vector, na.rm=T)
  is.converged <- mean(is.converged.vector)
  is.null.vcov <- mean(is.null.vcov.vector)
  fit.indices.vector <-round(c(rmsea, cfi, fiml.fit, 
                               is.converged, is.null.vcov),8)
  names(fit.indices.vector) <- c("rmsea.mi", "cfi.mi", "rmsea.fiml", "cfi.fiml",
                                 "is.converged", "is.null.vcov")
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

  
  pos.def.weight <- c(is.positive.definite(round(Wm_str, 4)), 
                      is.positive.definite(round(Wcm.obs_str,4)), 
                      is.positive.definite(round(Wcm.exp_str, 4)), 
                      is.positive.definite(round(Wcm.obs_unstr, 4)), 
                      is.positive.definite(round(Wm_unstr, 4)),
                      is.positive.definite(round(WmB_str, 4)), 
                      is.positive.definite(round(WcmB.obs_str, 4)), 
                      is.positive.definite(round(WcmB.exp_str, 4)) )
  
  pos.def.implied <- c(is.positive.definite(round(inspect(fit1, "vcov"), 4)), 
                       is.positive.definite(round(inspect(fit01, "vcov"), 4)), 
                       is.positive.definite(round(inspect(fitc, "vcov"), 4)),
                       is.positive.definite(round(inspect(fitcB, "vcov"), 4)))
  
  
  pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 4)), 
                    is.positive.definite(round(inspect(fit01, "vcov"), 4)), 
                    is.positive.definite(round(inspect(fitc, "vcov"), 4)),
                    is.positive.definite(round(inspect(fitcB, "vcov"), 4)))
  
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
########## fit.list : a list of all the fit indices created by the fimlc.fit() function
fimlc.checks <- function(components.list, fit.list){
  len <- length(components.list)
  check.list <- vector(mode="list", length=len)
  
  for(i in 1:len){
    cond <- components.list[[i]]
    cond.fit <- fit.list[[i]]
    
    cfi.equal.zero <- cond.fit[9:16,]==0
    rownames(cfi.equal.zero) <- paste(rownames(cfi.equal.zero), "equal.zero", sep=".")
    cfi.equal.one <-cond.fit[9:16,]==1
    rownames(cfi.equal.one) <- paste(rownames(cfi.equal.one), "equal.one", sep=".")
    
    old.checks <- cond[c(20:27,28:29,32:33, 36:37), ]
    rownames(old.checks)[9:14] <- c("fit.str.pos.def.implied","fit.base.pos.def.implied",  
                                    "fit.str.pos.def.vcov","fit.base.pos.def.vcov",  
                                    "fit.str.mod.converge","fit.base.mod.converge")
    rownames(old.checks)[1:8]<-  paste(rownames(old.checks[1:8,]), "pos.def", sep=".")
   
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
    cfi.obs_str.pass.5 <- colSums(new.checks[1:5, ])==5
    cfi.obs.nonn_str.pass.5 <- colSums(new.checks[6:10, ])==5
    cfi.exp_str.pass.5 <- colSums(new.checks[11:15, ])==5
    cfi.exp.nonn_str.pass.5 <- colSums(new.checks[16:20, ])==5
    cfi.obs_unstr.pass.5 <- colSums(new.checks[21:25, ])==5
    cfi.obs.nonn_unstr.pass.5 <- colSums(new.checks[26:30, ])==5
    
    cfi.checks <- rbind(cfi.obs_str.pass.5 , 
                        cfi.obs.nonn_str.pass.5 , 
                        cfi.exp_str.pass.5, 
                        cfi.exp.nonn_str.pass.5, 
                        cfi.obs_unstr.pass.5, 
                        cfi.obs.nonn_unstr.pass.5 )
    
    
    
    
    all.checks <- rbind(old.checks, new.checks, cfi.checks,cfi.equal.zero,cfi.equal.one)
    check.list[[i]] <- all.checks
  }
  check.list
}












###### TS METHOD ##################


#Usage: produces a matrix of fiml fit indices, all the components for computing TS fit indices and various checks for matrices
#Argument: fitted.mod: the fitted model for the CFA 
########## dataset: the dataset I am using
ts.components <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,estimator="ML",missing="FIML") #normal data
  n <- nrow(dataset)
  Sigmatilde<-lavInspect(fit1,"sampstat")$cov #saturated model's cov matrix
  mutilde<-lavInspect(fit1,"sampstat")$mean #saturated model's mean structure
  dfh<-lavInspect(fit1,"fit")["df"]
  #stage 2 
  fit2 <- cfa(fitted.mod, sample.cov=Sigmatilde, sample.mean = mutilde, sample.nobs = n)
  chisqc <- lavInspect(fit2, "fit")["chisq"]
  
  
  #####independence model###
  #stage 1
  fit1B <-  lavaan:::lav_object_independence(fit1, se=T) 
  dfb <- lavInspect(fit1B, "fit")["df"]
  #stage 2
  fit2B <- lavaan:::lav_object_independence(fit2, se=T) 
  chisqcB <- lavInspect(fit2B, "fit")["chisq"]
  
  #FIML verion
  rmsea.fiml <- lavInspect(fit1, "fit")["rmsea"]
  cfi.fiml <-lavInspect(fit1, "fit")["cfi"]
  
  
  #uncorrected version
  rmsea.uncor <- lavInspect(fit2, "fit")["rmsea"]
  cfi.uncor <-lavInspect(fit2, "fit")["cfi"]
  
  
  #####---------------------Hypothesized  model---------------
  #####----------unstructured---------------
  fit1@Options$h1.information = "unstructured" 
  fit2@Options$h1.information = "unstructured" 
  
  deltabreve <- lavInspect(fit2, "delta")
  
  
  
  Wm.unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit1@Model,
                                                         lavsamplestats = fit1@SampleStats, 
                                                         lavdata = fit1@Data, 
                                                         lavoptions = fit1@Options, 
                                                         lavimplied = fit1@implied,
                                                         lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
  
  
  
  B1.unstr <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit1@Model,
                                                           lavsamplestats = fit1@SampleStats, 
                                                           lavdata = fit1@Data,
                                                           lavoptions = fit1@Options, 
                                                           lavimplied = fit2@implied,
                                                           lavh1 = fit1@h1, lavcache = fit1@Cache)[[1]]
  
  Wc_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                         lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                         lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                         lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]
  
  #####-----------structured---------
  fit2@Options$h1.information = "structured" 
  
  
  Wc_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2@Model,
                                                       lavsamplestats = fit2@SampleStats, lavdata = fit2@Data, 
                                                       lavoptions = fit2@Options, lavimplied = fit2@implied,
                                                       lavh1 = fit2@h1, lavcache = fit2@Cache)[[1]]
  
  
  Wmi.unstr <-solve(Wm.unstr)
  Gamma <- Wmi.unstr %*% B1.unstr %*% Wmi.unstr  
  
  # Saturated model is always a correctly specified model. In this case, this triple product may not be necessary; but in small samples, it may still be necessary.  
  #Cathy's note: Gamma is the estimate of the asymptotic covariance matrix of the satuarated model estimates. 
  #This asymptotic covariance matrix is calculated by a triple product similar to the one in the sandwich method
  
  Uc.unstr <- Wc_unstr-Wc_unstr%*%deltabreve%*%solve(t(deltabreve)%*%Wc_unstr%*%deltabreve)%*%t(deltabreve)%*%Wc_unstr
  Uc.str <- Wc_str-Wc_str%*%deltabreve%*%solve(t(deltabreve)%*%Wc_str%*%deltabreve)%*%t(deltabreve)%*%Wc_str
  
  c.unstr <- lav_matrix_trace(Uc.unstr%*%Gamma)
  
  c.str <- lav_matrix_trace(Uc.str%*%Gamma)
  
  
  
  
  #####---------------------Baseline  model---------------
  #####----------unstructured---------------
  fit2B@Options$h1.information = "unstructured" 
  
  deltabreveB <- lavInspect(fit2B, "delta")
  
  WcB_unstr <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2B@Model,
                                                          lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
                                                          lavoptions = fit2B@Options, lavimplied = fit2B@implied,
                                                          lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]
  
  #####-----------structured---------
  fit2B@Options$h1.information = "structured" 
  
  
  WcB_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fit2B@Model,
                                                        lavsamplestats = fit2B@SampleStats, lavdata = fit2B@Data, 
                                                        lavoptions = fit2B@Options, lavimplied = fit2B@implied,
                                                        lavh1 = fit2B@h1, lavcache = fit2B@Cache)[[1]]
  
  
  
  UcB.unstr <- WcB_unstr-WcB_unstr%*%deltabreveB%*%solve(t(deltabreveB)%*%WcB_unstr%*%deltabreveB)%*%t(deltabreveB)%*%WcB_unstr
  UcB.str <- WcB_str-WcB_str%*%deltabreveB%*%solve(t(deltabreveB)%*%WcB_str%*%deltabreveB)%*%t(deltabreveB)%*%WcB_str
  
  cB.unstr <- lav_matrix_trace(UcB.unstr%*%Gamma)
  
  cB.str <- lav_matrix_trace(UcB.str%*%Gamma)
  
  
  
  
  ######components out ########
  c.cBs <- c(c.unstr, c.str, cB.unstr, cB.str)
  
  pos.def.weight <- c(is.positive.definite(round(Wm.unstr, 4)), 
                      is.positive.definite(round(Wc_unstr, 4)), 
                      is.positive.definite(round(Wc_str, 4)), 
                      is.positive.definite(round(WcB_unstr, 4)), 
                      is.positive.definite(round(WcB_str, 4)))
  
  pos.def.implied <-c(is.positive.definite(round(inspect(fit1, "implied")$cov,4)), 
                      is.positive.definite(round(inspect(fit2, "implied")$cov,4)),
                      is.positive.definite(round(inspect(fit1B, "implied")$cov,4)),
                      is.positive.definite(round(inspect(fit2B, "implied")$cov,4)))
  
  
  pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 4)), 
                    is.positive.definite(round(inspect(fit2, "vcov"), 4)), 
                    is.positive.definite(round(inspect(fit1B, "vcov"), 4)),
                    is.positive.definite(round(inspect(fit2B, "vcov"), 4)))
  
  mod.converge <- c(inspect(fit1, "converged"), 
                    inspect(fit2, "converged"), 
                    inspect(fit1B, "converged"),
                    inspect(fit2B, "converged"))
  
  fit.ind <- c(rmsea.fiml,
               cfi.fiml,
               rmsea.uncor,
               cfi.uncor)
  
  dfs <- c(dfh,dfb)
  chis <- c(chisqc, chisqcB)
  
  
  first.out <- c(fit.ind, n, dfs, chis, c.cBs, pos.def.weight, pos.def.implied, pos.def.vcov, mod.converge )
  first.out <- round(first.out, 6)
  names(first.out) <- c("rmsea.fiml", "cfi.fiml","rmsea.uncor","cfi.uncor","n",
                        "dfh", "dfb", "chisqc", "chisqcB","c.unstr", "c.str", "cB.unstr", "cB.str",
                        "Wm.unstr.pos.def", "Wc_unstr.pos.def","Wc_str.pos.def", 
                        "WcB_unstr.pos.def",   "WcB_str.pos.def", 
                        "fit1.imp.pos.def",  "fit2.imp.pos.def",
                        "fit1B.imp.pos.def",  "fit2B.imp.pos.def",
                        "fit1.vcov.pos.def",  "fit2.vcov.pos.def",
                        "fit1B.vcov.pos.def",  "fit2B.vcov.pos.def",
                        "fit1.converge",  "fit2.converge",
                        "fit1B.converge",  "fit2B.converge")
  first.out
}






###Usage: produce all version of ts fit indices 
#### Argument: components.list: a list of all the correction terms and various checks produced by the ts.component() function
ts.fit <- function(components.list){
  len <- length(components.list)
  
  fit.list <- vector(mode="list", length=len)
  
  for(i in 1:len) {
    cond <- components.list[[i]]
    rmsea.fiml <- cond["rmsea.fiml",]
    cfi.fiml <- cond["cfi.fiml",]
    
    rmsea.uncor <- cond["rmsea.uncor",]
    cfi.uncor <- cond["cfi.uncor",]
    rmsea.denom <- (cond["dfh",]*cond["n",])
    
    ###cor_str version###
    
    t1.str <- pmax((cond["chisqc", ]-cond["c.str", ]), 0)
    t2.str <- pmax((cond["chisqc", ]-cond["c.str", ]), 
                   (cond["chisqcB", ]-cond["cB.str", ]), 0)
    rmsea.cor.str <- sqrt(t1.str/rmsea.denom)
    
    cfi.cor.str <- 1-t1.str/t2.str
    cfi.cor.str[which(t2.str==0)] <- 1
    ###cor_str version###
    
    t1.unstr <- pmax((cond["chisqc", ]-cond["c.unstr", ]), 0)
    t2.unstr <- pmax((cond["chisqc", ]-cond["c.unstr", ]), 
                     (cond["chisqcB", ]-cond["cB.unstr", ]), 0)
    rmsea.cor.unstr <- sqrt(t1.unstr/rmsea.denom)
    
    cfi.cor.unstr <- 1-t1.unstr/t2.unstr
    cfi.cor.unstr[which(t2.unstr==0)] <- 1
    
    
    
    fit.ind <-rbind(rmsea.fiml, rmsea.uncor, rmsea.cor.str,rmsea.cor.unstr, 
                    cfi.fiml, cfi.uncor, cfi.cor.str,cfi.cor.unstr)
    fit.list[[i]] <- fit.ind
    
    
  }
  fit.list
  
}










###Usage: produce all the checks for fimlc fit indices 
#### Argument: components.list: a list of all the correction terms and various checks produced by the ts.component() function
########## fit.list : list of fit indices created by ts.fit() function
ts.checks <- function(components.list, fit.list){
  len <- length(components.list)
  check.list <- vector(mode="list", length=len)
  
  for(i in 1:len){
    cond <- components.list[[i]]
    cond.fit <- fit.list[[i]]
    
    cfi.equal.zero <- cond.fit[5:8,]==0
    rownames(cfi.equal.zero) <- paste(rownames(cfi.equal.zero), "equal.zero", sep=".")
    cfi.equal.one <-cond.fit[5:8,]==1
    rownames(cfi.equal.one) <- paste(rownames(cfi.equal.one), "equal.one", sep=".")
    
    
    
    old.checks <- cond[14:30, ]
    great.zero <- cond[10:13,] >0
    rownames(great.zero) <- paste(rownames(great.zero), "great.zero", sep=".")
    k.less.kb <- cond[10:11,] < cond[12:13, ] 
    rownames(k.less.kb) <- paste(rownames(k.less.kb), "c.less.kb" , sep=".")
    
    k.less.chi <- cond[10:11, ] < cond["chisqc", ]
    rownames(k.less.chi) <- paste(rownames(k.less.chi), "c.less.chi" , sep=".")
    kb.less.chiB <- cond[12:13, ] < cond["chisqcB", ]
    rownames(kb.less.chiB) <- paste(rownames(kb.less.chiB), "cB.less.chiB" , sep=".")
    new.checks <- rbind(great.zero, k.less.kb, k.less.chi, kb.less.chiB)
    new.checks <- new.checks[c("c.str.great.zero", 
                               "cB.str.great.zero",
                               "c.str.c.less.kb", 
                               "c.str.c.less.chi",
                               "cB.str.cB.less.chiB", 
                               "c.unstr.great.zero", 
                               "cB.unstr.great.zero",
                               "c.unstr.c.less.kb", 
                               "c.unstr.c.less.chi",
                               "cB.unstr.cB.less.chiB"),]
    cfi.str.pass.5 <- colSums(new.checks[1:5, ])==5
    cfi.unstr.pass.5 <- colSums(new.checks[6:10, ])==5
    cfi.checks <- rbind(cfi.str.pass.5, 
                        cfi.unstr.pass.5  )
    all.checks <- rbind(old.checks, new.checks, cfi.checks, cfi.equal.zero, cfi.equal.one)
    
    
    check.list[[i]] <- all.checks
  }
  check.list
}





####Usage: find a matrix of means based on a list of matrices
#Argument: lis: a list of matrices

list.mean <- function(lis ){
  apply(simplify2array(lis), 1:2, mean)
}


####Usage: find a matrix of sds based on a list of matrices
#Argument: lis: a list of matrices
list.sd <- function(lis ){
  apply(simplify2array(lis), 1:2, sd)
}







fimlc.imp <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,mimic="EQS",estimator="ML",missing="FIML") #normal data, EQS
  
  
  fit01<- lavaan:::lav_object_independence(fit1, se=T) #independence model 
  
  
  #fits <- lavaan:::lav_object_unrestricted(fit1, se=T) #saturated model
  
  #---------------------------------------NEW FIT INDICES----------------------------------#
  n <- nrow(dataset)
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







fimlc.imp2 <- function(fitted.mod, dataset){
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
  
  
  
  pos.def.implied <- c(is.positive.definite(round(inspect(fit1, "vcov"), 4)), 
                       is.positive.definite(round(inspect(fit01, "vcov"), 4)), 
                       is.positive.definite(round(inspect(fitc, "vcov"), 4)),
                       is.positive.definite(round(inspect(fitcB, "vcov"), 4)))
  names(pos.def.implied) <- c("fit.str.incomp.pos.def.implied","fit.base.incomp.pos.def.implied", 
                              "fit.str.comp.pos.def.implied" , "fit.base.comp.pos.def.implied")
  pos.def.implied
  
}


