setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS")

load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_WM_new.RData")
load("fitNoMissing_2CR_SF_matrix.RData")
load("fitNoMissing_2CR_DF_matrix.RData")
load("fitNoMissing_1CR_SF_matrix.RData")
load("fitNoMissing_1CR_DF_matrix.RData")
load("fitNoMissing_WM_matrix.RData")




#################### MCAR study 1  #############################


####fit#####
#n200
load(file="fitMCAR_0PerMiss_1CR_SF_ts_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_1CR_SF_ts_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n500.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_1CR_SF_ts_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000.RData")

#n1000000
load(file="fitMCAR_0PerMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000000.RData")




##compo##

#n200
load(file="fitMCAR_0PerMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_compo_n200.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_compo_n200.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_compo_n200.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_compo_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_compo_n500.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_compo_n500.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_compo_n500.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_compo_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_compo_n1000.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_compo_n1000.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_compo_n1000.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_compo_n1000.RData")

#n1000000
load(file="fitMCAR_0PerMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_compo_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_compo_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_compo_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_compo_n1000000.RData")



##checks##
#n200
load(file="fitMCAR_0PerMiss_1CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_checks_n200.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_checks_n200.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_checks_n200.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_checks_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_checks_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_1CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_checks_n500.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_checks_n500.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_checks_n500.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_checks_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_checks_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_1CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_checks_n1000.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_checks_n1000.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_checks_n1000.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_checks_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_checks_n1000.RData")

#n1000000
load(file="fitMCAR_0PerMiss_2CR_DF_ts_checks_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_checks_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_checks_n1000000.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_ts_checks_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_checks_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_checks_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_checks_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_checks_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_checks_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_checks_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_checks_n1000000.RData")










######################## MCAR study 2 #################################

####### fit ######
#n200
load(file="fitMCAR_0PerMiss_WM_ts_n200.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_WM_ts_n500.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n500.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_WM_ts_n1000.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000.RData")

#n1000000
load(file="fitMCAR_0PerMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000.RData")




####### compo ######
#n200
load(file="fitMCAR_0PerMiss_WM_ts_compo_n200.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n200.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_WM_ts_compo_n500.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n500.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_WM_ts_compo_n1000.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n1000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n1000.RData")

#n1000000
load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")



####### checks ######
#n200
load(file="fitMCAR_0PerMiss_WM_ts_checks_n200.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n200.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_WM_ts_checks_n500.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n500.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_WM_ts_checks_n1000.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n1000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n1000.RData")

#n1000000
load(file="fitMCAR_0PerMiss_WM_ts_checks_n1000000.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")















#################### MAR Strong study 1  #############################


####fit#####
#n200
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200.RData")

#n500
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n500.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n500.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n500.RData")

#n1000
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000.RData")

#n1000000
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000000.RData")




##compo##

#n200
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_compo_n200.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_compo_n200.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_compo_n200.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_compo_n200.RData")

#n500
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_compo_n500.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_compo_n500.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_compo_n500.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_compo_n500.RData")

#n1000
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_compo_n1000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_compo_n1000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_compo_n1000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_compo_n1000.RData")

#n1000000
load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_compo_n1000000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_compo_n1000000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_compo_n1000000.RData")

load(file="fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_compo_n1000000.RData")








#################### MAR Weak study 1  #############################


####fit#####
#n200
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200.RData")

#n500
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n500.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n500.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500.RData")

#n1000
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000.RData")

#n1000000
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000000.RData")




##compo##

#n200
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_compo_n200.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_compo_n200.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_compo_n200.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_compo_n200.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_compo_n200.RData")

#n500
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_compo_n500.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_compo_n500.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_compo_n500.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_compo_n500.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_compo_n500.RData")

#n1000
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_compo_n1000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_compo_n1000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_compo_n1000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_compo_n1000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_compo_n1000.RData")

#n1000000
load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_compo_n1000000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_compo_n1000000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_compo_n1000000.RData")

load(file="fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_compo_n1000000.RData")











######################## Strong MAR study 2 #################################

####### fit ######
#n200

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_n200.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_n200.RData")

#n500

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_n500.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_n500.RData")

#n1000

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_n1000.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000.RData")

#n1000000
load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_n1000000.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000.RData")




####### compo ######
#n200

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n200.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n200.RData")

#n500

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n500.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n500.RData")

#n1000

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n1000.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n1000.RData")

#n1000000

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")



####### checks ######
#n200

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n200.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n200.RData")

#n500

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n500.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n500.RData")

#n1000

load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n1000.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n1000.RData")

#n1000000
load(file="fitMAR_Strong_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")

load(file="fitMAR_Strong_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Strong_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")






######################## Weak MAR study 2 #################################

####### fit ######
#n200

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_n200.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_n200.RData")

#n500

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_n500.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_n500.RData")

#n1000

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_n1000.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000.RData")

#n1000000
load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_n1000000.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000.RData")




####### compo ######
#n200

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n200.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n200.RData")

#n500

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n500.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n500.RData")

#n1000

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n1000.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n1000.RData")

#n1000000

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_compo_n1000000.RData")



####### checks ######
#n200

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n200.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n200.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n200.RData")

#n500

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n500.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n500.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n500.RData")

#n1000

load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n1000.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n1000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n1000.RData")

#n1000000
load(file="fitMAR_Weak_MinPat_20PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MinPat_20PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MinPat_50PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")

load(file="fitMAR_Weak_MaxPat_20PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_2VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_4VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_20PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")
load(file="fitMAR_Weak_MaxPat_50PerMiss_6VarMiss_WM_ts_checks_n1000000.RData")



