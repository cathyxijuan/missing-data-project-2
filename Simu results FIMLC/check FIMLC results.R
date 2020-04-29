source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC results.R")
nam <- c("rmsea.fiml", "rmsea.uncor.fimlc",
         "rmsea.cor.obs.nonn_str", "rmsea.cor.exp.nonn_str", "rmsea.cor.obs.nonn_unstr", 
         "rmsea.cor.obs_str", "rmsea.cor.exp_str", "rmsea.cor.obs_unstr",
         "cfi.fiml", "cfi.uncor.fimlc",
         "cfi.cor.obs.nonn_str", "cfi.cor.exp.nonn_str", "cfi.cor.obs.nonn_unstr", 
         "cfi.cor.obs_str", "cfi.cor.exp_str", "cfi.cor.obs_unstr")

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
fitMCAR_0PerMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_n500), 1:2, mean)
fitMCAR_0PerMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_n1000), 1:2, mean)

fitMCAR_0PerMiss_2CR_SF_fimlc_n200_mean[1:2,] 
fitMCAR_0PerMiss_2CR_SF_fimlc_n500_mean[1:2,] 



fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)


fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)


fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200), 1:2, mean)[nam,]

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500), 1:2, mean)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)[nam,]

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- rbind(fitNoMissing_2CR_SF_new["rmsea",] , 
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[1:8, ],
                                                           fitNoMissing_2CR_SF_new["cfi",] ,
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[9:16, ])

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- rbind(fitNoMissing_2CR_SF_new["rmsea",] , 
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[1:8, ],
                                                           fitNoMissing_2CR_SF_new["cfi",] , 
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[9:16, ])
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- rbind(fitNoMissing_2CR_SF_new["rmsea",] , 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[1:8, ],
                                                            fitNoMissing_2CR_SF_new["cfi",] , 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[9:16, ])


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_rmsea <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[1:9, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_rmsea <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[2:9, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_rmsea <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[2:9, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_cfi <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[10:18, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_cfi <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[11:18, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_cfi <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[11:18, ]


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea <- rbind(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_rmsea, 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_rmsea, 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_rmsea)

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea_part <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea[,11:15]


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi <- rbind(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_cfi, 
                                                          fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_cfi, 
                                                          fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_cfi)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi_part <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi[,11:15]
write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea_part, 
          file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea_part.csv" )
write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi_part, 
          file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi_part.csv" )
##look at the differences###

apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA
apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA
apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA




#### SD ##############

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd
