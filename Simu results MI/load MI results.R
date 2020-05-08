setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI")


load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_WM_new.RData")



#################### MCAR study 1  #############################


####fit#####
#n200
load(file="fitMCAR_0PerMiss_1CR_SF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n200.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n200.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n200.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_1CR_SF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n500.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n500.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n500.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_1CR_SF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000.RData")

load(file="fitMCAR_0PerMiss_2CR_SF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000.RData")

load(file="fitMCAR_0PerMiss_1CR_DF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000.RData")

load(file="fitMCAR_0PerMiss_2CR_DF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000.RData")

#n1000000
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_MI_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_MI_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_MI_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_MI_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_MI_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_MI_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_MI_n1000000.RData")
















######################## MCAR study 2 #################################

####### fit ######
#n200
load(file="fitMCAR_0PerMiss_WM_MI_n200.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_MI_n200.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_MI_n200.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_MI_n200.RData")

#n500
load(file="fitMCAR_0PerMiss_WM_MI_n500.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_MI_n500.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_MI_n500.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_MI_n500.RData")

#n1000
load(file="fitMCAR_0PerMiss_WM_MI_n1000.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_MI_n1000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_MI_n1000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_MI_n1000.RData")

#n1000000
load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_MI_n1000000.RData")

load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_MI_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_MI_n1000000.RData")




