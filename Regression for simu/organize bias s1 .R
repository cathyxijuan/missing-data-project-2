source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC dif.R")
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
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMCAR_0PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif, 
        "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif, 
        "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif, 
        "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
        "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif, 
             "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)
 

study1_fitMCAR_2VarMiss_1CR_SF <- rbind(study1_fitMCAR_0PerMiss_2VarMiss_1CR_SF, 
                                        study1_fitMCAR_20PerMiss_2VarMiss_1CR_SF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_1CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMCAR_0PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif, 
             "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif, 
             "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_4VarMiss_1CR_SF <- rbind(study1_fitMCAR_0PerMiss_4VarMiss_1CR_SF, 
                                        study1_fitMCAR_20PerMiss_4VarMiss_1CR_SF, 
                                        study1_fitMCAR_50PerMiss_4VarMiss_1CR_SF)


study1_fitMCAR_1CR_SF <- rbind(study1_fitMCAR_2VarMiss_1CR_SF, study1_fitMCAR_4VarMiss_1CR_SF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMCAR_0PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif, 
             "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif, 
             "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_2VarMiss_2CR_SF <- rbind(study1_fitMCAR_0PerMiss_2VarMiss_2CR_SF, 
                                        study1_fitMCAR_20PerMiss_2VarMiss_2CR_SF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_2CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMCAR_0PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif, 
             "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
              "MCAR", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif, 
             "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif, 
              "MCAR", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
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
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMCAR_0PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_2VarMiss_1CR_DF <- rbind(study1_fitMCAR_0PerMiss_2VarMiss_1CR_DF, 
                                        study1_fitMCAR_20PerMiss_2VarMiss_1CR_DF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_1CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMCAR_0PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMCAR_50PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_4VarMiss_1CR_DF <- rbind(study1_fitMCAR_0PerMiss_4VarMiss_1CR_DF, 
                                        study1_fitMCAR_20PerMiss_4VarMiss_1CR_DF, 
                                        study1_fitMCAR_50PerMiss_4VarMiss_1CR_DF)


study1_fitMCAR_1CR_DF <- rbind(study1_fitMCAR_2VarMiss_1CR_DF, study1_fitMCAR_4VarMiss_1CR_DF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMCAR_0PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMCAR_50PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMCAR_2VarMiss_2CR_DF <- rbind(study1_fitMCAR_0PerMiss_2VarMiss_2CR_DF, 
                                        study1_fitMCAR_20PerMiss_2VarMiss_2CR_DF, 
                                        study1_fitMCAR_50PerMiss_2VarMiss_2CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMCAR_0PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_dif, 
              "MCAR", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMCAR_20PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_dif, 
             "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000_dif, 
              "MCAR", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_dif, 
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
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_1CR_SF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_4VarMiss_1CR_SF <- rbind(study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF, 
                                            study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF)


study1_fitMAR_Weak_1CR_SF <- rbind(study1_fitMAR_Weak_2VarMiss_1CR_SF, study1_fitMAR_Weak_4VarMiss_1CR_SF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_2CR_SF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_SF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
              "MAR_Weak", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Weak", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
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
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_1CR_DF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_4VarMiss_1CR_DF <- rbind(study1_fitMAR_Weak_0PerMiss_4VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF, 
                                            study1_fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF)


study1_fitMAR_Weak_1CR_DF <- rbind(study1_fitMAR_Weak_2VarMiss_1CR_DF, study1_fitMAR_Weak_4VarMiss_1CR_DF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Weak_2VarMiss_2CR_DF <- rbind(study1_fitMAR_Weak_0PerMiss_2VarMiss_2CR_DF, 
                                            study1_fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF, 
                                            study1_fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Weak_0PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_dif, 
              "MAR_Weak", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Weak", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_dif, 
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
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_1CR_SF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_4VarMiss_1CR_SF <- rbind(study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF, 
                                              study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF)


study1_fitMAR_Strong_1CR_SF <- rbind(study1_fitMAR_Strong_2VarMiss_1CR_SF, study1_fitMAR_Strong_4VarMiss_1CR_SF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_2CR_SF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_SF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
              "MAR_Strong", "SF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif, 
             "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif, 
              "MAR_Strong", "SF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
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
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_1CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_1CR_fimlc_n200_dif,fit_0PerMiss_1CR_ts_n200_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=200) 
r2 <- s1.comb(fit_0PerMiss_1CR_fimlc_n500_dif,fit_0PerMiss_1CR_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=500) 
r3 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000_dif,fit_0PerMiss_1CR_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_1CR_fimlc_n1000000_dif,fit_0PerMiss_1CR_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=1, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=1, samp=1000000)

study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_4VarMiss_1CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_4VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF)


study1_fitMAR_Strong_1CR_DF <- rbind(study1_fitMAR_Strong_2VarMiss_1CR_DF, study1_fitMAR_Strong_4VarMiss_1CR_DF)




#################################
#################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=2, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=2, num.cor=2, samp=1000000)

study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_2VarMiss_2CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_2VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF)




################################
r1 <- s1.comb(fit_0PerMiss_2CR_fimlc_n200_dif,fit_0PerMiss_2CR_ts_n200_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=200) 
r2 <- s1.comb(fit_0PerMiss_2CR_fimlc_n500_dif,fit_0PerMiss_2CR_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=500) 
r3 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000_dif,fit_0PerMiss_2CR_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000) 
r4 <- s1.comb(fit_0PerMiss_2CR_fimlc_n1000000_dif,fit_0PerMiss_2CR_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=0, num.var.miss=4, num.cor=2, samp=1000000) 

study1_fitMAR_Strong_0PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


r1 <-s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=20, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)



r1 <-s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200_dif, 
             "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=200)
r2 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n500_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=500)
r3 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000)
r4 <- s1.comb(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_dif, 
              "MAR_Strong", "DF", per.miss=50, num.var.miss=4, num.cor=2, samp=1000000)

study1_fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF <- rbind(r1, r2, r3, r4)


study1_fitMAR_Strong_4VarMiss_2CR_DF <- rbind(study1_fitMAR_Strong_0PerMiss_4VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF, 
                                              study1_fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF)


study1_fitMAR_Strong_2CR_DF <- rbind(study1_fitMAR_Strong_2VarMiss_2CR_DF, study1_fitMAR_Strong_4VarMiss_2CR_DF)


study1_fitMAR_Strong_DF <- rbind(study1_fitMAR_Strong_1CR_DF, study1_fitMAR_Strong_2CR_DF)

study1_fitMAR_Strong <- rbind(study1_fitMAR_Strong_SF, study1_fitMAR_Strong_DF)


study1_bias_results <- rbind(study1_fitMCAR, study1_fitMAR_Weak, study1_fitMAR_Strong)
setwd("/Volumes/SP PHD U3/missing-data-project-2/Regression for simu")
save(study1_bias_results, file="study1_bias_results.RData")
write.csv(study1_bias_results, file="study1_bias_results.csv", row.names = F)



###################### reorganizing some variables:
library(dplyr)
load("study1_bias_results.RData")
study1_bias_results$mech <- recode(study1_bias_results$mech, MCAR=0, MAR_Weak=1, MAR_Strong=2)
study1_bias_results$place <-as.factor(study1_bias_results$place) 
study1_bias_results$num.var.miss <- as.factor(study1_bias_results$num.var.miss)
study1_bias_results$per.miss <- recode(study1_bias_results$per.miss,`0`=0, `20`=1, `50`=2)
study1_bias_results$cor.resi <- recode(study1_bias_results$cor.resi, `0`=0, `0.1`=1, `0.2`=2, `0.3`=3, `0.4`=4)
study1_bias_results$fac.corr <- recode(study1_bias_results$fac.corr, `0`=0, `0.4`=1, `0.8`=2)
str(study1_bias_results)
as.factor(study1_bias_results$fac.corr)
study1_bias_results_recode <- study1_bias_results
setwd("/Volumes/SP PHD U3/missing-data-project-2/Regression for simu")
save(study1_bias_results_recode, file="study1_bias_results_recode.RData")
write.csv(study1_bias_results_recode, file="study1_bias_results_recode.csv", row.names = F)

