source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS rmse.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC rmse.R")
library(dplyr)
library(ggplot2)
library(reshape2)




#######n=200
r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=200)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=200)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=200)

study2_fitMCAR_MinPat_2VarMiss_WM_n200 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=200)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=200)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=200)

study2_fitMCAR_MinPat_4VarMiss_WM_n200 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=200)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=200)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=200)

study2_fitMCAR_MinPat_6VarMiss_WM_n200 <- rbind(r1, r2, r3)

study2_fitMCAR_MinPat_WM_n200 <-rbind(study2_fitMCAR_MinPat_2VarMiss_WM_n200,
                                      study2_fitMCAR_MinPat_4VarMiss_WM_n200,
                                      study2_fitMCAR_MinPat_6VarMiss_WM_n200)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=200)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=200)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=200)

study2_fitMCAR_MaxPat_2VarMiss_WM_n200 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=200)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=200)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=200)

study2_fitMCAR_MaxPat_4VarMiss_WM_n200 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=200)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=200)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=200)

study2_fitMCAR_MaxPat_6VarMiss_WM_n200 <- rbind(r1, r2, r3)

study2_fitMCAR_MaxPat_WM_n200 <-rbind(study2_fitMCAR_MaxPat_2VarMiss_WM_n200,
                                      study2_fitMCAR_MaxPat_4VarMiss_WM_n200,
                                      study2_fitMCAR_MaxPat_6VarMiss_WM_n200)

study2_fitMCAR_WM_n200 <- rbind(study2_fitMCAR_MinPat_WM_n200,study2_fitMCAR_MaxPat_WM_n200)



###############
##############
#############

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=200)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=200)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=200)

study2_fitMAR_Weak_minPat_2VarMiss_WM_n200 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=200)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=200)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=200)

study2_fitMAR_Weak_minPat_4VarMiss_WM_n200 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=200)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=200)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=200)

study2_fitMAR_Weak_minPat_6VarMiss_WM_n200 <- rbind(r1, r2, r3)

study2_fitMAR_Weak_minPat_WM_n200 <-rbind(study2_fitMAR_Weak_minPat_2VarMiss_WM_n200,
                                          study2_fitMAR_Weak_minPat_4VarMiss_WM_n200,
                                          study2_fitMAR_Weak_minPat_6VarMiss_WM_n200)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=200)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=200)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=200)

study2_fitMAR_Weak_maxPat_2VarMiss_WM_n200 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=200)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=200)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=200)

study2_fitMAR_Weak_maxPat_4VarMiss_WM_n200 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=200)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=200)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=200)

study2_fitMAR_Weak_maxPat_6VarMiss_WM_n200 <- rbind(r1, r2, r3)

study2_fitMAR_Weak_maxPat_WM_n200 <-rbind(study2_fitMAR_Weak_maxPat_2VarMiss_WM_n200,
                                          study2_fitMAR_Weak_maxPat_4VarMiss_WM_n200,
                                          study2_fitMAR_Weak_maxPat_6VarMiss_WM_n200)

study2_fitMAR_Weak_WM_n200 <- rbind(study2_fitMAR_Weak_minPat_WM_n200,study2_fitMAR_Weak_maxPat_WM_n200)





###############
##############
#############

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=200)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=200)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=200)

study2_fitMAR_Strong_minPat_2VarMiss_WM_n200 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=200)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=200)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=200)

study2_fitMAR_Strong_minPat_4VarMiss_WM_n200 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=200)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=200)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=200)

study2_fitMAR_Strong_minPat_6VarMiss_WM_n200 <- rbind(r1, r2, r3)

study2_fitMAR_Strong_minPat_WM_n200 <-rbind(study2_fitMAR_Strong_minPat_2VarMiss_WM_n200,
                                            study2_fitMAR_Strong_minPat_4VarMiss_WM_n200,
                                            study2_fitMAR_Strong_minPat_6VarMiss_WM_n200)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=200)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=200)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=200)

study2_fitMAR_Strong_maxPat_2VarMiss_WM_n200 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=200)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=200)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=200)

study2_fitMAR_Strong_maxPat_4VarMiss_WM_n200 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n200_rmse, fit_0PerMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=200)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=200)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse, fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=200)

study2_fitMAR_Strong_maxPat_6VarMiss_WM_n200 <- rbind(r1, r2, r3)

study2_fitMAR_Strong_maxPat_WM_n200 <-rbind(study2_fitMAR_Strong_maxPat_2VarMiss_WM_n200,
                                            study2_fitMAR_Strong_maxPat_4VarMiss_WM_n200,
                                            study2_fitMAR_Strong_maxPat_6VarMiss_WM_n200)

study2_fitMAR_Strong_WM_n200 <- rbind(study2_fitMAR_Strong_minPat_WM_n200,study2_fitMAR_Strong_maxPat_WM_n200)

study2_WM_n200 <- rbind(study2_fitMCAR_WM_n200, 
                        study2_fitMAR_Weak_WM_n200,
                        study2_fitMAR_Strong_WM_n200)




#################
#################
#################
#################
#################
#######n=500
r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=500)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=500)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=500)

study2_fitMCAR_MinPat_2VarMiss_WM_n500 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=500)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=500)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=500)

study2_fitMCAR_MinPat_4VarMiss_WM_n500 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=500)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=500)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=500)

study2_fitMCAR_MinPat_6VarMiss_WM_n500 <- rbind(r1, r2, r3)

study2_fitMCAR_MinPat_WM_n500 <-rbind(study2_fitMCAR_MinPat_2VarMiss_WM_n500,
                                      study2_fitMCAR_MinPat_4VarMiss_WM_n500,
                                      study2_fitMCAR_MinPat_6VarMiss_WM_n500)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=500)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=500)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=500)

study2_fitMCAR_MaxPat_2VarMiss_WM_n500 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=500)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=500)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=500)

study2_fitMCAR_MaxPat_4VarMiss_WM_n500 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=500)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=500)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=500)

study2_fitMCAR_MaxPat_6VarMiss_WM_n500 <- rbind(r1, r2, r3)

study2_fitMCAR_MaxPat_WM_n500 <-rbind(study2_fitMCAR_MaxPat_2VarMiss_WM_n500,
                                      study2_fitMCAR_MaxPat_4VarMiss_WM_n500,
                                      study2_fitMCAR_MaxPat_6VarMiss_WM_n500)

study2_fitMCAR_WM_n500 <- rbind(study2_fitMCAR_MinPat_WM_n500,study2_fitMCAR_MaxPat_WM_n500)



###############
##############
#############

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=500)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=500)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=500)

study2_fitMAR_Weak_minPat_2VarMiss_WM_n500 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=500)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=500)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=500)

study2_fitMAR_Weak_minPat_4VarMiss_WM_n500 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=500)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=500)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=500)

study2_fitMAR_Weak_minPat_6VarMiss_WM_n500 <- rbind(r1, r2, r3)

study2_fitMAR_Weak_minPat_WM_n500 <-rbind(study2_fitMAR_Weak_minPat_2VarMiss_WM_n500,
                                          study2_fitMAR_Weak_minPat_4VarMiss_WM_n500,
                                          study2_fitMAR_Weak_minPat_6VarMiss_WM_n500)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=500)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=500)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=500)

study2_fitMAR_Weak_maxPat_2VarMiss_WM_n500 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=500)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=500)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=500)

study2_fitMAR_Weak_maxPat_4VarMiss_WM_n500 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=500)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=500)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=500)

study2_fitMAR_Weak_maxPat_6VarMiss_WM_n500 <- rbind(r1, r2, r3)

study2_fitMAR_Weak_maxPat_WM_n500 <-rbind(study2_fitMAR_Weak_maxPat_2VarMiss_WM_n500,
                                          study2_fitMAR_Weak_maxPat_4VarMiss_WM_n500,
                                          study2_fitMAR_Weak_maxPat_6VarMiss_WM_n500)

study2_fitMAR_Weak_WM_n500 <- rbind(study2_fitMAR_Weak_minPat_WM_n500,study2_fitMAR_Weak_maxPat_WM_n500)





###############
##############
#############

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=500)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=500)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=500)

study2_fitMAR_Strong_minPat_2VarMiss_WM_n500 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=500)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=500)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=500)

study2_fitMAR_Strong_minPat_4VarMiss_WM_n500 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=500)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=500)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=500)

study2_fitMAR_Strong_minPat_6VarMiss_WM_n500 <- rbind(r1, r2, r3)

study2_fitMAR_Strong_minPat_WM_n500 <-rbind(study2_fitMAR_Strong_minPat_2VarMiss_WM_n500,
                                            study2_fitMAR_Strong_minPat_4VarMiss_WM_n500,
                                            study2_fitMAR_Strong_minPat_6VarMiss_WM_n500)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=500)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=500)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=500)

study2_fitMAR_Strong_maxPat_2VarMiss_WM_n500 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=500)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=500)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=500)

study2_fitMAR_Strong_maxPat_4VarMiss_WM_n500 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n500_rmse, fit_0PerMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=500)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=500)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse, fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=500)

study2_fitMAR_Strong_maxPat_6VarMiss_WM_n500 <- rbind(r1, r2, r3)

study2_fitMAR_Strong_maxPat_WM_n500 <-rbind(study2_fitMAR_Strong_maxPat_2VarMiss_WM_n500,
                                            study2_fitMAR_Strong_maxPat_4VarMiss_WM_n500,
                                            study2_fitMAR_Strong_maxPat_6VarMiss_WM_n500)

study2_fitMAR_Strong_WM_n500 <- rbind(study2_fitMAR_Strong_minPat_WM_n500,study2_fitMAR_Strong_maxPat_WM_n500)

study2_WM_n500 <- rbind(study2_fitMCAR_WM_n500, 
                        study2_fitMAR_Weak_WM_n500,
                        study2_fitMAR_Strong_WM_n500)




################
###########
##############
#############
##############
#######n1000
r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=1000)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=1000)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=1000)

study2_fitMCAR_MinPat_2VarMiss_WM_n1000 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=1000)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=1000)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=1000)

study2_fitMCAR_MinPat_4VarMiss_WM_n1000 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=1000)
r2 <- s2.comb(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=1000)
r3 <- s2.comb(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=1000)

study2_fitMCAR_MinPat_6VarMiss_WM_n1000 <- rbind(r1, r2, r3)

study2_fitMCAR_MinPat_WM_n1000 <-rbind(study2_fitMCAR_MinPat_2VarMiss_WM_n1000,
                                       study2_fitMCAR_MinPat_4VarMiss_WM_n1000,
                                       study2_fitMCAR_MinPat_6VarMiss_WM_n1000)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=1000)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=1000)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=1000)

study2_fitMCAR_MaxPat_2VarMiss_WM_n1000 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=1000)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=1000)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=1000)

study2_fitMCAR_MaxPat_4VarMiss_WM_n1000 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=1000)
r2 <- s2.comb(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=1000)
r3 <- s2.comb(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="MCAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=1000)

study2_fitMCAR_MaxPat_6VarMiss_WM_n1000 <- rbind(r1, r2, r3)

study2_fitMCAR_MaxPat_WM_n1000 <-rbind(study2_fitMCAR_MaxPat_2VarMiss_WM_n1000,
                                       study2_fitMCAR_MaxPat_4VarMiss_WM_n1000,
                                       study2_fitMCAR_MaxPat_6VarMiss_WM_n1000)

study2_fitMCAR_WM_n1000 <- rbind(study2_fitMCAR_MinPat_WM_n1000,study2_fitMCAR_MaxPat_WM_n1000)



###############
##############
#############

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=1000)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=1000)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=1000)

study2_fitMAR_Weak_minPat_2VarMiss_WM_n1000 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=1000)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=1000)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=1000)

study2_fitMAR_Weak_minPat_4VarMiss_WM_n1000 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=1000)
r2 <- s2.comb(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=1000)
r3 <- s2.comb(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=1000)

study2_fitMAR_Weak_minPat_6VarMiss_WM_n1000 <- rbind(r1, r2, r3)

study2_fitMAR_Weak_minPat_WM_n1000 <-rbind(study2_fitMAR_Weak_minPat_2VarMiss_WM_n1000,
                                           study2_fitMAR_Weak_minPat_4VarMiss_WM_n1000,
                                           study2_fitMAR_Weak_minPat_6VarMiss_WM_n1000)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=1000)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=1000)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=1000)

study2_fitMAR_Weak_maxPat_2VarMiss_WM_n1000 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=1000)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=1000)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=1000)

study2_fitMAR_Weak_maxPat_4VarMiss_WM_n1000 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=1000)
r2 <- s2.comb(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=1000)
r3 <- s2.comb(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Weak MAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=1000)

study2_fitMAR_Weak_maxPat_6VarMiss_WM_n1000 <- rbind(r1, r2, r3)

study2_fitMAR_Weak_maxPat_WM_n1000 <-rbind(study2_fitMAR_Weak_maxPat_2VarMiss_WM_n1000,
                                           study2_fitMAR_Weak_maxPat_4VarMiss_WM_n1000,
                                           study2_fitMAR_Weak_maxPat_6VarMiss_WM_n1000)

study2_fitMAR_Weak_WM_n1000 <- rbind(study2_fitMAR_Weak_minPat_WM_n1000,study2_fitMAR_Weak_maxPat_WM_n1000)





###############
##############
#############

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=2,  samp=1000)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=2,  samp=1000)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=2,  samp=1000)

study2_fitMAR_Strong_minPat_2VarMiss_WM_n1000 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=4,  samp=1000)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=4,  samp=1000)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=4,  samp=1000)

study2_fitMAR_Strong_minPat_4VarMiss_WM_n1000 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=0, num.var.miss=6,  samp=1000)
r2 <- s2.comb(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=20, num.var.miss=6,  samp=1000)
r3 <- s2.comb(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="min",
              per.miss=50, num.var.miss=6,  samp=1000)

study2_fitMAR_Strong_minPat_6VarMiss_WM_n1000 <- rbind(r1, r2, r3)

study2_fitMAR_Strong_minPat_WM_n1000 <-rbind(study2_fitMAR_Strong_minPat_2VarMiss_WM_n1000,
                                             study2_fitMAR_Strong_minPat_4VarMiss_WM_n1000,
                                             study2_fitMAR_Strong_minPat_6VarMiss_WM_n1000)



################
################

r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=2,  samp=1000)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=2,  samp=1000)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=2,  samp=1000)

study2_fitMAR_Strong_maxPat_2VarMiss_WM_n1000 <- rbind(r1, r2, r3)




r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=4,  samp=1000)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=4,  samp=1000)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=4,  samp=1000)

study2_fitMAR_Strong_maxPat_4VarMiss_WM_n1000 <- rbind(r1, r2, r3)


r1 <- s2.comb(fit_0PerMiss_WM_fimlc_n1000_rmse, fit_0PerMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=0, num.var.miss=6,  samp=1000)
r2 <- s2.comb(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=20, num.var.miss=6,  samp=1000)
r3 <- s2.comb(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse, fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
              mech="Strong MAR",  pattern="max",
              per.miss=50, num.var.miss=6,  samp=1000)

study2_fitMAR_Strong_maxPat_6VarMiss_WM_n1000 <- rbind(r1, r2, r3)

study2_fitMAR_Strong_maxPat_WM_n1000 <-rbind(study2_fitMAR_Strong_maxPat_2VarMiss_WM_n1000,
                                             study2_fitMAR_Strong_maxPat_4VarMiss_WM_n1000,
                                             study2_fitMAR_Strong_maxPat_6VarMiss_WM_n1000)

study2_fitMAR_Strong_WM_n1000 <- rbind(study2_fitMAR_Strong_minPat_WM_n1000,study2_fitMAR_Strong_maxPat_WM_n1000)

study2_WM_n1000 <- rbind(study2_fitMCAR_WM_n1000, 
                         study2_fitMAR_Weak_WM_n1000,
                         study2_fitMAR_Strong_WM_n1000)





study2_rmse_results <- rbind(study2_WM_n200,study2_WM_n500,study2_WM_n1000)

setwd("/Volumes/SP PHD U3/missing-data-project-2/Regression for simu")
save(study2_rmse_results , file="study2_rmse_results.RData")
write.csv(study2_rmse_results, file="study2_rmse_results.csv", row.names = F)






###################### reorganizing some variables:
library(dplyr)
load("study2_rmse_results.RData")
study2_rmse_results$per.miss <- recode(study2_rmse_results$per.miss,`0`=0, `20`=1, `50`=2)
study2_rmse_results$mech <- recode(study2_rmse_results$mech, `MCAR`=0, `Weak MAR`=1, `Strong MAR`=2)
factor(study2_rmse_results$mech)
study2_rmse_results$fac.corr <- recode(study2_rmse_results$fac.corr, 
                                       `1`=0, `0.9`=1, `0.8`=2,
                                       `0.7`=3, `0.6`=4, `0.5`=5,
                                       `0.4`=6, `0.3`=7, `0.2`=8)
study2_rmse_results$num.var.miss <- recode(study2_rmse_results$num.var.miss, 
                                           `2`=0, `4`=1, `6`=2)
study2_rmse_results$pattern <- relevel(as.factor(study2_rmse_results$pattern) , ref="min")

study2_rmse_results_recode <- study2_rmse_results
str(study2_rmse_results_recode)
setwd("/Volumes/SP PHD U3/missing-data-project-2/Regression for simu")
save(study2_rmse_results_recode, file="study2_rmse_results_recode.RData")
write.csv(study2_rmse_results_recode, file="study2_rmse_results_recode.csv", row.names = F)

