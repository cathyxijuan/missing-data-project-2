source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")

setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI")
source("load MI results.R")

fitNoMissing_2CR_SF_new
fitNoMissing_2CR_DF_new
fitNoMissing_1CR_SF_new
fitNoMissing_1CR_DF_new
fitNoMissing_WM_new



#mean
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000000

fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000000

fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000000

fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000000
fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000000
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000000
fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000000
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000000

fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000000

fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000000

fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000000

fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000000
fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000000
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000000
fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000000
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000000






#sd

fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500), 1:2, sd)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500), 1:2, sd)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000_sd <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000), 1:2, sd)










fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_mean[1,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_mean[1,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_mean[1,]
fitNoMissing_1CR_DF_new[1,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_rmsea <- rbind(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_mean[1,],
                                                    fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_mean[1,], 
                                                    fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_mean[1,], 
                                                    fitNoMissing_1CR_DF_new[1,])
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_cfi <- rbind(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_mean[2,],
                                                    fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_mean[2,], 
                                                    fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_mean[2,], 
                                                    fitNoMissing_1CR_DF_new[2,])


fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000), 1:2, mean)



fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200_mean[1:2,]
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500_mean[1:2,]
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000_mean[1:2,]
fitNoMissing_2CR_DF_new


### making tables ###
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000_mean <- list.mean(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000)

fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000_mean <- list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000)

fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200_mean[c(3,1),11:15]

fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_rmsea_mean <- rbind(fitNoMissing_2CR_SF_new[1,11:15],
                                                   fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200_mean[c(3,1),11:15],
                                                   fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500_mean[c(3,1),11:15],
                                                   fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000_mean[c(3,1),11:15])

fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_rmsea_mean <- rbind(fitNoMissing_2CR_SF_new[1,11:15],
                                                         fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200_mean[c(3,1),11:15],
                                                         fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500_mean[c(3,1),11:15],
                                                         fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000_mean[c(3,1),11:15])
fitMCAR_4VarMiss_2CR_SF_MI_rmsea_mean <- cbind(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_rmsea_mean , 
                                               fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_rmsea_mean)

fitNoMissing_2CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[1,11:15], mode = "numeric"), 2*6), 
                                        nrow=6,
                                        ncol=5*2, 
                                        byrow=T)
abs(fitNoMissing_2CR_SF_new_RMSEA-fitMCAR_4VarMiss_2CR_SF_MI_rmsea_mean[-1,])<0.005
dif<- abs(fitNoMissing_2CR_SF_new_RMSEA-fitMCAR_4VarMiss_2CR_SF_MI_rmsea_mean[-1,])

fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_cfi_mean <- rbind(fitNoMissing_2CR_SF_new[2,11:15],
                                                       fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200_mean[c(4,2),11:15],
                                                       fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500_mean[c(4,2),11:15],
                                                       fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000_mean[c(4,2),11:15])

fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_cfi_mean <- rbind(fitNoMissing_2CR_SF_new[2,11:15],
                                                       fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200_mean[c(4,2),11:15],
                                                       fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500_mean[c(4,2),11:15],
                                                       fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000_mean[c(4,2),11:15])
fitMCAR_4VarMiss_2CR_SF_MI_cfi_mean <- cbind(fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_cfi_mean , 
                                             fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_cfi_mean)

fitNoMissing_2CR_SF_new_cfi <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[2,11:15], mode = "numeric"), 2*6), 
                                      nrow=6,
                                      ncol=5*2, 
                                      byrow=T)
abs(fitNoMissing_2CR_SF_new_cfi-fitMCAR_4VarMiss_2CR_SF_MI_cfi_mean[-1,])<0.005

write.csv(fitMCAR_4VarMiss_2CR_SF_MI_rmsea_mean, file="fitMCAR_4VarMiss_2CR_SF_MI_rmsea_mean.csv")
write.csv(fitMCAR_4VarMiss_2CR_SF_MI_cfi_mean, file="fitMCAR_4VarMiss_2CR_SF_MI_cfi_mean.csv")




####### New tablles...

fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000_mean <- list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000)

fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000_mean <- list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000)



fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200_mean[c(3,1),11:15]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_rmsea_mean <- rbind(fitNoMissing_2CR_SF_new[1,11:15],
                                                         fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200_mean[c(3,1),11:15],
                                                         fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500_mean[c(3,1),11:15],
                                                         fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000_mean[c(3,1),11:15])

fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_rmsea_mean <- rbind(fitNoMissing_2CR_SF_new[1,11:15],
                                                         fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200_mean[c(3,1),11:15],
                                                         fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500_mean[c(3,1),11:15],
                                                         fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000_mean[c(3,1),11:15])
fitMCAR_2VarMiss_2CR_SF_MI_rmsea_mean <- cbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_rmsea_mean , 
                                               fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_rmsea_mean)

fitNoMissing_2CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[1,11:15], mode = "numeric"), 2*6), 
                                        nrow=6,
                                        ncol=5*2, 
                                        byrow=T)
abs(fitNoMissing_2CR_SF_new_RMSEA-fitMCAR_2VarMiss_2CR_SF_MI_rmsea_mean[-1,])<0.005
dif<- abs(fitNoMissing_2CR_SF_new_RMSEA-fitMCAR_2VarMiss_2CR_SF_MI_rmsea_mean[-1,])

fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_cfi_mean <- rbind(fitNoMissing_2CR_SF_new[2,11:15],
                                                       fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200_mean[c(4,2),11:15],
                                                       fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500_mean[c(4,2),11:15],
                                                       fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000_mean[c(4,2),11:15])

fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_cfi_mean <- rbind(fitNoMissing_2CR_SF_new[2,11:15],
                                                       fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200_mean[c(4,2),11:15],
                                                       fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500_mean[c(4,2),11:15],
                                                       fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000_mean[c(4,2),11:15])
fitMCAR_2VarMiss_2CR_SF_MI_cfi_mean <- cbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_cfi_mean , 
                                             fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_cfi_mean)

fitNoMissing_2CR_SF_new_cfi <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[2,11:15], mode = "numeric"), 2*6), 
                                      nrow=6,
                                      ncol=5*2, 
                                      byrow=T)
abs(fitNoMissing_2CR_SF_new_cfi-fitMCAR_2VarMiss_2CR_SF_MI_cfi_mean[-1,])<0.005

write.csv(fitMCAR_2VarMiss_2CR_SF_MI_rmsea_mean, file="fitMCAR_2VarMiss_2CR_SF_MI_rmsea_mean.csv")
write.csv(fitMCAR_2VarMiss_2CR_SF_MI_cfi_mean, file="fitMCAR_2VarMiss_2CR_SF_MI_cfi_mean.csv")
