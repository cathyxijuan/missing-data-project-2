setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")

load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500.RData")



filmc.checks <- function(components.list){
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

