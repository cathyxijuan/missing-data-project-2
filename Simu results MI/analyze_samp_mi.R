load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n200.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n500.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n1000.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n200.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n500.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n1000.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n200.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n500.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n1000.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n200.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n500.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n1000.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Plot FIMLC and TS/fitNoMissing_2CR_DF_matrix.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/Plot FIMLC and TS/fitNoMissing_2CR_SF_matrix.RData")
source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")



fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n200_dif <- 
  list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n200)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_SF_matrix[c(1, 9),]

fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n500_dif <- 
  list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n500)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_SF_matrix[c(1, 9),]

fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n1000_dif <- 
  list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n1000)[c("rmsea.mi", "cfi.mi"), ]-fitNoMissing_2CR_SF_matrix[c(1, 9),]

fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n200_dif <- 
  list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n200)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_SF_matrix[c(1, 9),]

fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n500_dif <- 
  list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n500)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_SF_matrix[c(1, 9),]

fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n1000_dif <- 
  list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n1000)[c("rmsea.mi", "cfi.mi"), ]-fitNoMissing_2CR_SF_matrix[c(1, 9),]



fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n200_dif <- 
  list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n200)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_DF_matrix[c(1, 9),]

fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n500_dif <- 
  list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n500)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_DF_matrix[c(1, 9),]

fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n1000_dif <- 
  list.mean(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n1000)[c("rmsea.mi", "cfi.mi"), ]-fitNoMissing_2CR_DF_matrix[c(1, 9),]

fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n200_dif <- 
  list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n200)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_DF_matrix[c(1, 9),]

fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n500_dif <- 
  list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n500)[c("rmsea", "cfi"), ]-fitNoMissing_2CR_DF_matrix[c(1, 9),]

fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n1000_dif <- 
  list.mean(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n1000)[c("rmsea.mi", "cfi.mi"), ]-fitNoMissing_2CR_DF_matrix[c(1, 9),]


fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_MI_n1000_dif <- 
  list.mean(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_MI_n500)[c("rmsea.mi", "cfi.mi"), ]-fitNoMissing_2CR_DF_matrix[c(1, 9),]
