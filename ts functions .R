

library(lavaan)
library(matrixcalc)

#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

load("simuDatawithMiss.RData") #this is N=1,000,000 #severly misspecified 
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 

#load("simuDatawithMiss2.RData") # slighly misspecified 
data1<-simuDatawithMiss[300:1000,] 
n <- nrow(data1)
#For complete data, the population RMSEA and CFI are 0.04452902 and 0.9791809 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.03199867 and 0.9847884 respectively. 



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'


ts.components <- function(fitted.mod, dataset){
  fit1<-cfa(model=fitted.mod,data=dataset,estimator="ML",missing="FIML") #normal data
  
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
  
  pos.def.weight <- c(is.positive.definite(x=round(Wm.unstr, 6)), 
                      is.positive.definite(x=round(Wc_unstr, 6)), 
                      is.positive.definite(x=round(Wc_str, 6)), 
                      is.positive.definite(x=round(WcB_unstr, 6)), 
                      is.positive.definite(x=round(WcB_str, 6)))
  
  pos.def.implied <-c(is.positive.definite(x=round(inspect(fit1, "implied")$cov,6)), 
                      is.positive.definite(x=round(inspect(fit2, "implied")$cov,6)),
                      is.positive.definite(x=round(inspect(fit1B, "implied")$cov,6)),
                      is.positive.definite(x=round(inspect(fit2B, "implied")$cov,6)))
  
  
  pos.def.vcov <- c(is.positive.definite(round(inspect(fit1, "vcov"), 6)), 
                    is.positive.definite(round(inspect(fit2, "vcov"), 6)), 
                    is.positive.definite(round(inspect(fit1B, "vcov"), 6)),
                    is.positive.definite(round(inspect(fit2B, "vcov"), 6)))
  
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
  names(first.out) <- c("rmsea.fiml", "cfi.fiml","rmsea.uncor","cfi.uncor",
                        "n",
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

fit.comp <- ts.components(fitted.mod,data1)









###Usage: produce all version of ts fit indices 
#### Argument: components.list: a list of all the correction terms and various checks produced by the fimlc.component() function
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
ts.checks <- function(components.list){
  len <- length(components.list)
  check.list <- vector(mode="list", length=len)
  
  for(i in 1:len){
    cond <- components.list[[1]]
    
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
    cfi.ok.str <- colSums(new.checks[1:5, ])==5
    cfi.ok.unstr <- colSums(new.checks[6:10, ])==5
    cfi.checks <- rbind(cfi.ok.str, 
                        cfi.ok.unstr  )
    all.checks <- rbind(old.checks, new.checks, cfi.checks)
    
    check.list[[i]] <- all.checks
  }
  check.list
}

