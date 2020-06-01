source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS sd.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS mean.R")

setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/make TS tables")
library(xtable)
#options(scipen=999)

####Bias tables 
sink("TS MCAR study1 tables.txt")
ts.s1.table(fitMCAR_0PerMiss_1CR_SF_ts_n200_dif,
            fitMCAR_0PerMiss_1CR_SF_ts_n500_dif,
            fitMCAR_0PerMiss_1CR_SF_ts_n1000_dif,
            fitMCAR_0PerMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_0PerMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "compete data.")

ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif,
            label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif,
            label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")
ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif,
            label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif,
            label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")
sink()





#####MCAR for study 2
sink("TS MCAR study2 tables.txt")

ts.s2.table(fitMCAR_0PerMiss_WM_ts_n200_dif,
            fitMCAR_0PerMiss_WM_ts_n500_dif,
            fitMCAR_0PerMiss_WM_ts_n1000_dif,
            fitMCAR_0PerMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_0PerMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "complete data.")


ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_dif,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_dif,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_dif,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.")


ts.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_dif,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_dif,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_dif,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of", caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_dif,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_dif,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_dif,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of", caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.")


ts.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_dif,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_dif,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_dif,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of", caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_dif,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_dif,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_dif,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of", caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.")


ts.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_dif,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_dif,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_dif,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of", caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_dif,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_dif,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_dif,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of", caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.")


ts.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_dif,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_dif,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_dif,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_dif,
            label.name="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_dif",
            caption.before = "Average bias of the estimate of", caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.")



sink()







########### MAR study1##############
sink("TS MAR study1 tables.txt")

ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")
ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
            fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
            fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
            fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
            fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
            fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
            fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
            fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
            fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")
ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
            fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
            fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif,
            label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif",
            caption.before = "Average bias of the estimate of",
            caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.")



sink()




















##### Mean tables ########
##### Mean tables ########
##### Mean tables ########
##### Mean tables ########
##### Mean tables ########
##### Mean tables ########
##### Mean tables ########
##### Mean tables ########

sink("TS Mean Tables.txt")
ts.s1.table(fitMCAR_0PerMiss_1CR_SF_ts_n200_mean,
            fitMCAR_0PerMiss_1CR_SF_ts_n500_mean,
            fitMCAR_0PerMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_0PerMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_0PerMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "compete data.", 
            w.in.num = 100, 
            bold.note="")

ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")
ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")

ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")
ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")






#####MCAR for study 2
ts.s2.table(fitMCAR_0PerMiss_WM_ts_n200_mean,
            fitMCAR_0PerMiss_WM_ts_n500_mean,
            fitMCAR_0PerMiss_WM_ts_n1000_mean,
            fitMCAR_0PerMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_0PerMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "complete data.", 
            w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of",
            caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of", caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of", caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of", caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of", caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of", caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of", caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average estimate of", caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")



sink()
















### ##################SD tables 
### ##################SD tables
### ##################SD tables
### ##################SD tables
### ##################SD tables
### ##################SD tables
### ##################SD tables
### ##################SD tables
### ##################SD tables
### ##################SD tables
### ##################SD tables

sink("TS SD Tables.txt")


ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_sd, 
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_sd, 
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_sd, 
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_sd, 
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_sd, 
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_sd, 
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_sd, 
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_sd, 
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_sd, 
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_sd, 
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on the same factor, four variables with missing data")


ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_sd, 
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_sd, 
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_sd, 
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_sd, 
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_sd, 
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, two correlated residuals, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_sd, 
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_sd, 
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_sd, 
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_sd, 
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_sd, 
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, two correlated residuals, misfit and missing data are on the same factor, four variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_sd, 
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_sd, 
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_sd, 
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_sd, 
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_sd, 
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_sd, 
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n500_sd, 
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000_sd, 
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_sd, 
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n500_sd, 
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on different factors, four variables with missing data")


ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_sd, 
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_sd, 
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_sd, 
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_sd, 
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_sd, 
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, two correlated residuals, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_sd, 
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n500_sd, 
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000_sd, 
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_sd, 
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500_sd, 
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000_sd, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, two correlated residuals, misfit and missing data are on different factors, four variables with missing data")





ts.s2.sd.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_sd, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_sd, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_sd, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_sd, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_sd,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_sd, 
               label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, small number of patterns, two variables with missing data")


ts.s2.sd.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_sd, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_sd, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_sd,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_sd, 
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, large number of patterns, two variables with missing data")


ts.s2.sd.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_sd, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_sd, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_sd,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_sd, 
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, small number of patterns, four variables with missing data")


ts.s2.sd.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_sd, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_sd, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_sd,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_sd, 
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, large number of patterns, four variables with missing data")

sink()

