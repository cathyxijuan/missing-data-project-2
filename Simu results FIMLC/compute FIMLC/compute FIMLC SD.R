source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC results.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/FIMLC SD results")
nam <- c("rmsea.fiml", "rmsea.uncor.fimlc",
         "rmsea.cor.obs.nonn_str", "rmsea.cor.exp.nonn_str", "rmsea.cor.obs.nonn_unstr", 
         "rmsea.cor.obs_str", "rmsea.cor.exp_str", "rmsea.cor.obs_unstr",
         "cfi.fiml", "cfi.uncor.fimlc",
         "cfi.cor.obs.nonn_str", "cfi.cor.exp.nonn_str", "cfi.cor.obs.nonn_unstr", 
         "cfi.cor.obs_str", "cfi.cor.exp_str", "cfi.cor.obs_unstr")


#################### MCAR study 1  #############################

####fit#####
#n200
fitMCAR_0PerMiss_1CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_0PerMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n200_sd, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n200_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd.RData")

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd.RData")

#n500
fitMCAR_0PerMiss_1CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_0PerMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n500_sd, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n500_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd.RData")

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd.RData")


#n1000
fitMCAR_0PerMiss_1CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]


fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]


fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000_sd, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n1000_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd.RData")

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd.RData") 


#n1000000
fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_sd <- list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000_sd, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_sd.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_sd.RData")

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_sd.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_sd.RData") 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_sd.RData") 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_sd.RData") 
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_sd, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_sd.RData") 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_sd, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_sd.RData") 



######################## MCAR study 2 #################################

####### fit ######
#n200
fitMCAR_0PerMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_0PerMiss_WM_fimlc_n200)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n200_sd, file="fitMCAR_0PerMiss_WM_fimlc_n200_sd.RData") 

save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd.RData") 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd.RData")
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd.RData") 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd.RData") 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd.RData")

#n500
fitMCAR_0PerMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_0PerMiss_WM_fimlc_n500)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n500_sd, file="fitMCAR_0PerMiss_WM_fimlc_n500_sd.RData") 

save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd.RData") 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd.RData")
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd.RData") 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd.RData") 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd.RData")

#n1000
fitMCAR_0PerMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_0PerMiss_WM_fimlc_n1000)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n1000_sd, file="fitMCAR_0PerMiss_WM_fimlc_n1000_sd.RData") 

save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd.RData") 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd.RData")
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd.RData") 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd.RData") 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd.RData")

#n1000000
fitMCAR_0PerMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_0PerMiss_WM_fimlc_n1000000)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_sd <- list.sd(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n1000000_sd, file="fitMCAR_0PerMiss_WM_fimlc_n1000000_sd.RData") 

save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_sd.RData") 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_sd.RData") 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_sd.RData") 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_sd.RData")
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_sd.RData") 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_sd.RData") 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_sd.RData")
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_sd, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_sd.RData")





