source("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/load MI results.R")

fitNoMissing_2CR_SF_new
fitNoMissing_2CR_DF_new
fitNoMissing_1CR_SF_new
fitNoMissing_1CR_DF_new
fitNoMissing_WM_new

fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200[[1]][1:2,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200[[2]][1:2,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200[[3]][1:2,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200[[4]][1:2,]
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200[[1]][1:2,]
fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200[[2]][1:2,]

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