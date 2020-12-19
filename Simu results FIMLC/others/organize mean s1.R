source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS mean.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC mean.R")
library(dplyr)
library(ggplot2)
library(reshape2)


# per.miss, num.var.miss, num.cor, samp
##### STUDY 1 MCAR 
##### STUDY 1 MCAR 
##### STUDY 1 MCAR 
##### STUDY 1 MCAR 
##### STUDY 1 MCAR 
##### STUDY 1 MCAR 
# r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
# r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
# r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
# r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 
# 
# study1_fitMCAR_0PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_2VarMiss_1CR_SF <- rbind( study1_fitMCAR_20PerMiss_2VarMiss_1CR_SF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_1CR_SF)




################################
# r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
# r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
# r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
# r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 
# 
# study1_fitMCAR_0PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_4VarMiss_1CR_SF <- rbind(study1_fitMCAR_20PerMiss_4VarMiss_1CR_SF, 
                                        study1_fitMCAR_50PerMiss_4VarMiss_1CR_SF)


study1_fitMCAR_1CR_SF <- rbind(study1_fitMCAR_2VarMiss_1CR_SF, study1_fitMCAR_4VarMiss_1CR_SF)




#################################
#################################
# r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
# r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
# r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
# r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
#               "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 
# 
# study1_fitMCAR_0PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_2VarMiss_2CR_SF <- rbind(study1_fitMCAR_0PerMiss_2VarMiss_2CR_SF, 
                                        study1_fitMCAR_20PerMiss_2VarMiss_2CR_SF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_2CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMCAR_0PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean, 
             "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMCAR_50PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_4VarMiss_2CR_SF <- rbind(study1_fitMCAR_0PerMiss_4VarMiss_2CR_SF, 
                                        study1_fitMCAR_20PerMiss_4VarMiss_2CR_SF, 
                                        study1_fitMCAR_50PerMiss_4VarMiss_2CR_SF)


study1_fitMCAR_2CR_SF <- rbind(study1_fitMCAR_2VarMiss_2CR_SF, study1_fitMCAR_4VarMiss_2CR_SF)


study1_fitMCAR_SF <- rbind(study1_fitMCAR_1CR_SF, study1_fitMCAR_2CR_SF)






############################
############################
############################
############################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMCAR_0PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_2VarMiss_1CR_DF <- rbind(study1_fitMCAR_0PerMiss_2VarMiss_1CR_DF, 
                                        study1_fitMCAR_20PerMiss_2VarMiss_1CR_DF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_1CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMCAR_0PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_4VarMiss_1CR_DF <- rbind(study1_fitMCAR_0PerMiss_4VarMiss_1CR_DF, 
                                        study1_fitMCAR_20PerMiss_4VarMiss_1CR_DF, 
                                        study1_fitMCAR_50PerMiss_4VarMiss_1CR_DF)


study1_fitMCAR_1CR_DF <- rbind(study1_fitMCAR_2VarMiss_1CR_DF, study1_fitMCAR_4VarMiss_1CR_DF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMCAR_0PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_2VarMiss_2CR_DF <- rbind(study1_fitMCAR_0PerMiss_2VarMiss_2CR_DF, 
                                        study1_fitMCAR_20PerMiss_2VarMiss_2CR_DF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_2CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMCAR_0PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean, 
             "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMCAR_50PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_4VarMiss_2CR_DF <- rbind(study1_fitMCAR_0PerMiss_4VarMiss_2CR_DF, 
                                        study1_fitMCAR_20PerMiss_4VarMiss_2CR_DF, 
                                        study1_fitMCAR_50PerMiss_4VarMiss_2CR_DF)


study1_fitMCAR_2CR_DF <- rbind(study1_fitMCAR_2VarMiss_2CR_DF, study1_fitMCAR_4VarMiss_2CR_DF)


study1_fitMCAR_DF <- rbind(study1_fitMCAR_1CR_DF, study1_fitMCAR_2CR_DF)

study1_fitMCAR <- rbind(study1_fitMCAR_SF, study1_fitMCAR_DF)














##### STUDY 1 MAR_Weak 
##### STUDY 1 MAR_Weak 
##### STUDY 1 MAR_Weak 
##### STUDY 1 MAR_Weak 
##### STUDY 1 MAR_Weak 
##### STUDY 1 MAR_Weak 
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_1CR_SF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_4VarMiss_1CR_SF <- rbind(study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF)


study1_fitMAR_Weak_1CR_SF <- rbind(study1_fitMAR_Weak_2VarMiss_1CR_SF, study1_fitMAR_Weak_4VarMiss_1CR_SF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_2CR_SF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_SF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_4VarMiss_2CR_SF <- rbind(study1_fitMAR_Weak_0PerMiss_4VarMiss_2CR_SF, 
                                            study1_fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF, 
                                            study1_fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF)


study1_fitMAR_Weak_2CR_SF <- rbind(study1_fitMAR_Weak_2VarMiss_2CR_SF, study1_fitMAR_Weak_4VarMiss_2CR_SF)


study1_fitMAR_Weak_SF <- rbind(study1_fitMAR_Weak_1CR_SF, study1_fitMAR_Weak_2CR_SF)






############################
############################
############################
############################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_1CR_DF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_4VarMiss_1CR_DF <- rbind(study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF)


study1_fitMAR_Weak_1CR_DF <- rbind(study1_fitMAR_Weak_2VarMiss_1CR_DF, study1_fitMAR_Weak_4VarMiss_1CR_DF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_2CR_DF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_DF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_4VarMiss_2CR_DF <- rbind(study1_fitMAR_Weak_0PerMiss_4VarMiss_2CR_DF, 
                                            study1_fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF, 
                                            study1_fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF)


study1_fitMAR_Weak_2CR_DF <- rbind(study1_fitMAR_Weak_2VarMiss_2CR_DF, study1_fitMAR_Weak_4VarMiss_2CR_DF)


study1_fitMAR_Weak_DF <- rbind(study1_fitMAR_Weak_1CR_DF, study1_fitMAR_Weak_2CR_DF)

study1_fitMAR_Weak <- rbind(study1_fitMAR_Weak_SF, study1_fitMAR_Weak_DF)









##### STUDY 1 MAR_Strong 
##### STUDY 1 MAR_Strong 
##### STUDY 1 MAR_Strong 
##### STUDY 1 MAR_Strong 
##### STUDY 1 MAR_Strong 
##### STUDY 1 MAR_Strong 
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_1CR_SF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_4VarMiss_1CR_SF <- rbind(study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF)


study1_fitMAR_Strong_1CR_SF <- rbind(study1_fitMAR_Strong_2VarMiss_1CR_SF, study1_fitMAR_Strong_4VarMiss_1CR_SF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_2CR_SF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_SF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_4VarMiss_2CR_SF <- rbind(study1_fitMAR_Strong_0PerMiss_4VarMiss_2CR_SF, 
                                              study1_fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF, 
                                              study1_fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF)


study1_fitMAR_Strong_2CR_SF <- rbind(study1_fitMAR_Strong_2VarMiss_2CR_SF, study1_fitMAR_Strong_4VarMiss_2CR_SF)


study1_fitMAR_Strong_SF <- rbind(study1_fitMAR_Strong_1CR_SF, study1_fitMAR_Strong_2CR_SF)






############################
############################
############################
############################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_1CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_mean,fit_0PerMiss_1CR_ts_n200_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_mean,fit_0PerMiss_1CR_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_mean,fit_0PerMiss_1CR_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_mean,fit_0PerMiss_1CR_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_4VarMiss_1CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF)


study1_fitMAR_Strong_1CR_DF <- rbind(study1_fitMAR_Strong_2VarMiss_1CR_DF, study1_fitMAR_Strong_4VarMiss_1CR_DF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_2CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_mean,fit_0PerMiss_2CR_ts_n200_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_mean,fit_0PerMiss_2CR_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_mean,fit_0PerMiss_2CR_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_mean,fit_0PerMiss_2CR_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n500_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_4VarMiss_2CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_4VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF)


study1_fitMAR_Strong_2CR_DF <- rbind(study1_fitMAR_Strong_2VarMiss_2CR_DF, study1_fitMAR_Strong_4VarMiss_2CR_DF)


study1_fitMAR_Strong_DF <- rbind(study1_fitMAR_Strong_1CR_DF, study1_fitMAR_Strong_2CR_DF)

study1_fitMAR_Strong <- rbind(study1_fitMAR_Strong_SF, study1_fitMAR_Strong_DF)