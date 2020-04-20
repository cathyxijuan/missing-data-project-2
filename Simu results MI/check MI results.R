source("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/load MI results.R")

fitNoMissing_2CR_SF_new
fitNoMissing_2CR_DF_new
fitNoMissing_1CR_SF_new
fitNoMissing_1CR_DF_new
fitNoMissing_WM_new


fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200), 1:2, mean)

fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_mean <- apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500), 1:2, mean)


fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_mean <- apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000), 1:2, mean)



fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_mean[1:2,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_mean[1:2,]
fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_mean[1:2,]
fitNoMissing_1CR_DF_new

