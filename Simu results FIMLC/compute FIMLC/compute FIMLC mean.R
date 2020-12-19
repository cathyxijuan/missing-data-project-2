source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC results.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/FIMLC mean results")
nam <- c("rmsea.fiml", "rmsea.uncor.fimlc",
         "rmsea.cor.obs.nonn_str", "rmsea.cor.exp.nonn_str", "rmsea.cor.obs.nonn_unstr", 
         "rmsea.cor.obs_str", "rmsea.cor.exp_str", "rmsea.cor.obs_unstr",
         "cfi.fiml", "cfi.uncor.fimlc",
         "cfi.cor.obs.nonn_str", "cfi.cor.exp.nonn_str", "cfi.cor.obs.nonn_unstr", 
         "cfi.cor.obs_str", "cfi.cor.exp_str", "cfi.cor.obs_unstr")


#################### MCAR study 1  #############################

####fit#####
#n150
fitMCAR_0PerMiss_1CR_SF_fimlc_n150_mean <- list.mean(fit_0PerMiss_1CR_SF_fimlc_n150)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n150)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n150)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n150)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n150)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n150_mean, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n150_mean.RData" ) 
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean.RData" )
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 




#n200
fitMCAR_0PerMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_0PerMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n200_mean, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n200_mean.RData" ) 
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean.RData" )
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 


#n500
fitMCAR_0PerMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_0PerMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n500_mean, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n500_mean.RData" ) 
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean.RData" )
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 

#n1000
fitMCAR_0PerMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000_mean, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean.RData" )
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 


#n1000000
fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]

fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]

save(fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000_mean, file="fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean.RData" )
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean.RData" ) 

save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean.RData" )
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 















######################## MCAR study 2 #################################

####### fit ######
#n150
fitMCAR_0PerMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_0PerMiss_WM_fimlc_n150)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n150)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n150)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n150)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n150_mean, file="fitMCAR_0PerMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" )
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" )
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 


#n200
fitMCAR_0PerMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_0PerMiss_WM_fimlc_n200)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n200_mean, file="fitMCAR_0PerMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" )
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" )
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 


#n500
fitMCAR_0PerMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_0PerMiss_WM_fimlc_n500)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n500_mean, file="fitMCAR_0PerMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" )
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" )
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 



#n1000
fitMCAR_0PerMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_0PerMiss_WM_fimlc_n1000)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n1000_mean, file="fitMCAR_0PerMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" )
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" )
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 



#n1000000
fitMCAR_0PerMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_0PerMiss_WM_fimlc_n1000000)[nam,]

fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

save(fitMCAR_0PerMiss_WM_fimlc_n1000000_mean, file="fitMCAR_0PerMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" )
save(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 

save(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" )
save(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 
















#################### MAR Strong study 1  #############################

####fit#####
#n150
fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n150)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n150)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n150)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n150)[nam,]

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean.RData" )
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 


#n200
fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean.RData" )
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 


#n500
fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean.RData" )
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 

#n1000
fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean.RData" )
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 


#n1000000
fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]

fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean.RData" )
save(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean.RData" )
save(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 









#################### MAR Weak study 1  #############################

####fit#####
#n150
fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n150)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n150)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n150)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n150)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n150)[nam,]

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean.RData" )
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean.RData" ) 


#n200
fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200)[nam,]

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean.RData" )
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean.RData" ) 


#n500
fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500)[nam,]

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean.RData" )
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean.RData" ) 

#n1000
fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000)[nam,]

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean.RData" )
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean.RData" ) 


#n1000000
fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000)[nam,]

fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]
fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000)[nam,]

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean.RData" )
save(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean.RData" )
save(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean.RData" ) 









######################## Weak MAR study 2 #################################

####### fit ######
#n150
fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n150)[nam,]

fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n150)[nam,]
fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n150)[nam,]

save(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" )
save(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 

save(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" )
save(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, file="fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean.RData" ) 

#n200
fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

save(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" )
save(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 

save(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" )
save(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 


#n500
fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

save(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" )
save(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 

save(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" )
save(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 



#n1000
fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

save(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" )
save(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 

save(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" )
save(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 



#n1000000
fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

save(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" )
save(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" )
save(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 




######################## Strong MAR study 2 #################################

####### fit ######
#n200
fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200)[nam,]
fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200)[nam,]

save(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" )
save(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 

save(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" )
save(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, file="fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean.RData" ) 


#n500
fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500)[nam,]
fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500)[nam,]

save(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" )
save(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 

save(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" )
save(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean, file="fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean.RData" ) 



#n1000
fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]
fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000)[nam,]

save(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" )
save(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 

save(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" )
save(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, file="fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean.RData" ) 



#n1000000
fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]
fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean <- list.mean(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000)[nam,]

save(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" )
save(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 

save(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" )
save(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 
save(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, file="fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean.RData" ) 


