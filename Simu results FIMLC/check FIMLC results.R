source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC results.R")


fitNoMissing_2CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[1,], mode = "numeric"), 8), 
                                        nrow=8,
                                        ncol=ncol(fitNoMissing_2CR_SF_new), 
                                        byrow=T)

fitNoMissing_2CR_SF_new_CFI <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[2,], mode = "numeric"), 8), 
                                        nrow=8,
                                        ncol=ncol(fitNoMissing_2CR_SF_new), 
                                        byrow=T)

                                       
fitMCAR_0PerMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_n200), 1:2, mean)

apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_n200), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA


fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)

apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA
apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA
apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA




fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean[1:8,]-fitNoMissing_2CR_SF_new_RMSEA

rbind(fitNoMissing_2CR_SF_new[1, ],fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean[1:8,])
rbind(fitNoMissing_2CR_SF_new[1, ],fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean[1:8,])


fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd
