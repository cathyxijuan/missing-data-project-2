source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS")
source("load results.R")


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



fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi <- rbind(fitNoMissing_2CR_SF_new["cfi",],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean[5:8,],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean[5:8,],
                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean[5:8,])
write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_rmsea.csv")

write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_cfi.csv")


####checks###
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n200_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n200)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n500_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n500)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000_mean <- 
  list.mean(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000)


fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_mean <- rbind(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n200_mean,
                                                          fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n500_mean,
                                                          fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000_mean) 
fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_mean

write.csv(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_mean, file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_mean.csv")
