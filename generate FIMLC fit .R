setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500.RData")

###Usage: produce all version of fimlc fit indices 
#### Argument: components.list: a list of all the correction terms and various checks produced by the fimlc.component() function
fimlc.fit <- function(components.list){
  len <- length(components.list)
  
  fit.list <- vector(mode="list", length=len)
  
  for(i in 1:len) {
    cond <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500[[i]]
    rmsea.fiml <- cond["rmsea.fiml",]
    cfi.fiml <- cond["cfi.fiml",]
    
    
    rmsea.denom <- (cond["dfh",]*cond["n",])
    ###uncor version##
    t1 <- pmax((cond["chisqc", ]-cond["dfh",]), 0)
    
    t2 <- pmax((cond["chisqc", ]-cond["dfh",]), (cond["chisqcB", ]-cond["dfb",]),  0)
    
    rmsea.uncor.fimlc <- sqrt(t1/rmsea.denom)
    
    cfi.uncor.fimlc <- 1-t1/t2
    
    
    ###cor.obs_str version###
    
    t1.obs_str <- pmax((cond["chisqc", ]-cond["k.obs_str", ]), 0)
    t2.obs_str <- pmax((cond["chisqc", ]-cond["k.obs_str", ]), (cond["chisqcB", ]-cond["kb.obs_str", ]), 0)
    rmsea.cor.obs_str <- sqrt(t1.obs_str/rmsea.denom)
    cfi.cor.obs_str <- 1-t1.obs_str/t2.obs_str
    
    ###cor.obs.nonn_str version###
    
    t1.obs.nonn_str <- pmax((cond["chisqc", ]-cond["k.obs.nonn_str", ]), 0)
    t2.obs.nonn_str <- pmax((cond["chisqc", ]-cond["k.obs.nonn_str", ]), 
                            (cond["chisqcB", ]-cond["kb.obs.nonn_str", ]), 0)
    rmsea.cor.obs.nonn_str <- sqrt(t1.obs.nonn_str/rmsea.denom)
    cfi.cor.obs.nonn_str <- 1-t1.obs.nonn_str/t2.obs.nonn_str
    
    
    
    
    ###cor.exp_str version###
    
    t1.exp_str <- pmax((cond["chisqc", ]-cond["k.exp_str", ]), 0)
    t2.exp_str <- pmax((cond["chisqc", ]-cond["k.exp_str", ]), (cond["chisqcB", ]-cond["kb.exp_str", ]), 0)
    rmsea.cor.exp_str <- sqrt(t1.exp_str/rmsea.denom)
    cfi.cor.exp_str <- 1-t1.exp_str/t2.exp_str
    
    ###cor.exp.nonn_str version###
    
    t1.exp.nonn_str <- pmax((cond["chisqc", ]-cond["k.exp.nonn_str", ]), 0)
    t2.exp.nonn_str <- pmax((cond["chisqc", ]-cond["k.exp.nonn_str", ]), (cond["chisqcB", ]-cond["kb.exp.nonn_str", ]), 0)
    rmsea.cor.exp.nonn_str <- sqrt(t1.exp.nonn_str/rmsea.denom)
    cfi.cor.exp.nonn_str <- 1-t1.exp.nonn_str/t2.exp.nonn_str
    
    
    ###cor.obs_unstr version###
    
    t1.obs_unstr <- pmax((cond["chisqc", ]-cond["k.obs_unstr", ]), 0)
    t2.obs_unstr <- pmax((cond["chisqc", ]-cond["k.obs_unstr", ]), (cond["chisqcB", ]-cond["kb.obs_unstr", ]), 0)
    rmsea.cor.obs_unstr <- sqrt(t1.obs_unstr/rmsea.denom)
    cfi.cor.obs_unstr <- 1-t1.obs_unstr/t2.obs_unstr
    
    ###cor.obs.nonn_unstr version###
    
    t1.obs.nonn_unstr <- pmax((cond["chisqc", ]-cond["k.obs.nonn_unstr", ]), 0)
    t2.obs.nonn_unstr <- pmax((cond["chisqc", ]-cond["k.obs.nonn_unstr", ]), 
                              (cond["chisqcB", ]-cond["kb.obs.nonn_unstr", ]), 0)
    rmsea.cor.obs.nonn_unstr <- sqrt(t1.obs.nonn_unstr/rmsea.denom)
    cfi.cor.obs.nonn_unstr <- 1-t1.obs.nonn_unstr/t2.obs.nonn_unstr
    
    
    
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

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500 <- fimlc.fit(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500)









