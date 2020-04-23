source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC results.R")


fitNoMissing_2CR_SF_new
fitMCAR_0PerMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_n200), 1:2, mean)

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)


rbind(fitNoMissing_2CR_SF_new[1, ],fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean[1:8,])
rbind(fitNoMissing_2CR_SF_new[1, ],fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean[1:8,])


fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd
