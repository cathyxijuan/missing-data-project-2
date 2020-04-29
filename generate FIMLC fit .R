setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500.RData")

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

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500 <- fimlc.fit(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500)








load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500.RData")
cond <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500[[2]]
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
fit.ind





#checks 

cond <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500[[1]]
cond.fit <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500[[1]]

cfi.equal.zero <- cond.fit[9:16,]==0
rownames(cfi.equal.zero) <- paste(rownames(cfi.equal.zero), "equal.zero", sep=".")
cfi.equal.one <-cond.fit[9:16,]==1
rownames(cfi.equal.one) <- paste(rownames(cfi.equal.one), "equal.zero", sep=".")

old.checks <- cond[20:39, ]
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
cfi.obs_str <- colSums(new.checks[1:5, ])==5
cfi.obs.nonn_str <- colSums(new.checks[6:10, ])==5
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



