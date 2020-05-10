source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS")
source("compute TS means.R")


fitNoMissing_2CR_SF_new
fitNoMissing_2CR_DF_new
fitNoMissing_1CR_SF_new
fitNoMissing_1CR_DF_new

fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000)



fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean <- 
  list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean <- 
  list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean <- 
  list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_rmsea <- rbind(fitNoMissing_2CR_SF_new["rmsea",],
                                                    fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean[1:4,],
                                                    fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean[1:4,],
                                                    fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean[1:4,])
fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_rmsea_part <-fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_rmsea[,11:15]

fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_cfi <- rbind(fitNoMissing_2CR_SF_new["cfi",],
                                                  fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean[5:8,],
                                                  fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean[5:8,],
                                                  fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean[5:8,])
fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_cfi_part <-fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_cfi[,11:15]



fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000)




fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea <- rbind(fitNoMissing_2CR_SF_new["rmsea",],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean[1:4,],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean[1:4,],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean[1:4,])
fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea_part <-fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea[,11:15]

fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi <- rbind(fitNoMissing_2CR_SF_new["cfi",],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean[5:8,],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean[5:8,],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean[5:8,])
fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi_part <-fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi[,11:15]


fitMCAR_4VarMiss_2CR_SF_ts_rmsea_part <- cbind(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_rmsea_part, 
                                               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea_part)
fitMCAR_4VarMiss_2CR_SF_ts_cfi_part <- cbind(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_cfi_part, 
                                             fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi_part)
colnames(fitMCAR_4VarMiss_2CR_SF_ts_rmsea_part)<- rep(paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep="") ,2)
colnames(fitMCAR_4VarMiss_2CR_SF_ts_cfi_part)<- rep(paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep="") ,2)
fitMCAR_4VarMiss_2CR_SF_ts_rmsea_part

write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea.csv")

write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi.csv")

write.csv(fitMCAR_4VarMiss_2CR_SF_ts_rmsea_part, file="fitMCAR_4VarMiss_2CR_SF_ts_rmsea_part.csv")

write.csv(fitMCAR_4VarMiss_2CR_SF_ts_cfi_part, file="fitMCAR_4VarMiss_2CR_SF_ts_cfi_part.csv")


##check difference ####
fitNoMissing_2CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[1,11:15], mode = "numeric"), 12), 
                                        nrow=12,
                                        ncol=10, 
                                        byrow=T)

fitNoMissing_2CR_SF_new_CFI <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[2,11:15], mode = "numeric"), 12), 
                                      nrow=12,
                                      ncol=10, 
                                      byrow=T)
dif <- round(abs(fitMCAR_4VarMiss_2CR_SF_ts_rmsea_part[-1,]-fitNoMissing_2CR_SF_new_RMSEA),4)

abs(fitMCAR_4VarMiss_2CR_SF_ts_rmsea_part[-1,]-fitNoMissing_2CR_SF_new_RMSEA) <0.005
which.min(dif[1:4,])
apply(dif[1:4,], 2, which.min)
apply(dif[5:8,], 2, which.min)
apply(dif[9:12,], 2, which.min)
dif.cfi <-round(abs(fitMCAR_4VarMiss_2CR_SF_ts_cfi_part[-1,]-fitNoMissing_2CR_SF_new_CFI), 4)
apply(dif.cfi[1:4,], 2, which.min)
apply(dif.cfi[5:8,], 2, which.min)
apply(dif.cfi[9:12,], 2, which.min)
abs(fitMCAR_4VarMiss_2CR_SF_ts_cfi_part[-1,]-fitNoMissing_2CR_SF_new_CFI) <0.005


####checks###
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n200_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n200)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n500_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n500)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000)


fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_mean <- rbind(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n200_mean[,11:15],
                                                          fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n500_mean[,11:15],
                                                          fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000_mean[,11:15]) 
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_mean


fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n200_mean <- 
  list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n200)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n500_mean <- 
  list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n500)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n1000_mean <- 
  list.mean(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n1000)


fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_mean <- rbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n200_mean[,11:15],
                                                          fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n500_mean[,11:15],
                                                          fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n1000_mean[,11:15]) 
fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_mean

fitMCAR_2VarMiss_2CR_SF_ts_checks_mean <- cbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_mean,
                                                fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_mean)

write.csv(fitMCAR_2VarMiss_2CR_SF_ts_checks_mean, file="fitMCAR_2VarMiss_2CR_SF_ts_checks_mean.csv")
