setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI")


load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_WM_new.RData")



load("fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_MI_n1000.RData")
load("fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_MI_n1000.RData")

load("fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200.RData")
load("fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500.RData")
load("fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000.RData")
load("fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n200.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n500.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000000.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n200.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n500.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n200.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n500.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000000.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n200.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n500.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000000.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n200.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n500.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n200.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n500.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000000.RData")
load("fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n200.RData")
load("fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n500.RData")
load("fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000.RData")
load("fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n200.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n500.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000.RData")
load("fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000000.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n200.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n500.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000.RData")
load("fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n200.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n500.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000.RData")
load("fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000000.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000000.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000000.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000000.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_MI_n200.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_MI_n500.RData")


load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_MI_n200.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_MI_n500.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_MI_n500.RData")


fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_MI_n200[[1]][1:2,]
fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_MI_n200[[2]][1:2,]

fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_MI_n200[[1]][1:2,]
fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_MI_n200[[2]][1:2,]

fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_MI_n500[[1]][1:2,]
fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_MI_n500[[2]][1:2,]
fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_MI_n500[[3]][1:2,]

