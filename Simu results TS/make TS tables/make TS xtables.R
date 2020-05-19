source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS sd.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS mean.R")

setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/make TS tables")
library(xtable)
#options(scipen=999)

####Bias tables 
#sink("TS LaTex Tables.txt")
# ts.s1.table(fitMCAR_0PerMiss_1CR_SF_ts_n200_dif,
#             fitMCAR_0PerMiss_1CR_SF_ts_n500_dif,
#             fitMCAR_0PerMiss_1CR_SF_ts_n1000_dif,
#             fitMCAR_0PerMiss_1CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_0PerMiss_1CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "compete data.")
# 
# fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_sd
# ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
#             fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
#             fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
#             fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
#             two variables with missing data with 20\\% missing in each.")
# 
# 
# 
# ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif,
#             fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_dif,
#             fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_dif,
#             fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
#             two variables with missing data with 50\\% missing in each.")
# ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
#             fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
#             fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
#             fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
#             two variables with missing data with 20\\% missing in each.")
# 
# 
# 
# ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif,
#             fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_dif,
#             fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_dif,
#             fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
#             two variables with missing data with 50\\% missing in each.")
# 
# 
# ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
#             fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
#             fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
#             fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
#             four variables with missing data with 20\\% missing in each.")
# 
# 
# 
# ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif,
#             fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_dif,
#             fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_dif,
#             fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
#             four variables with missing data with 50\\% missing in each.")
# 
# ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
#             fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
#             fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
#             fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
#             four variables with missing data with 20\\% missing in each.")
# 
# 
# 
# ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif,
#             fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif,
#             fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif,
#             fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif, 
#             label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
#             four variables with missing data with 50\\% missing in each.")
# 
# 
# ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
#             fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
#             fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
#             fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
#             label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
#             two variables with missing data with 20\\% missing in each.")
# 
# 
# 
# ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif,
#             fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_dif,
#             fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_dif,
#             fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_dif, 
#             label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
#             two variables with missing data with 50\\% missing in each.")
# ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
#             fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
#             fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
#             fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
#             label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
#             two variables with missing data with 20\\% missing in each.")
# 
# 
# 
# ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif,
#             fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_dif,
#             fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_dif,
#             fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_dif, 
#             label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_dif", 
#             caption.before = "Bias in", 
#             caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
#             two variables with missing data with 50\\% missing in each.")
# 
# 
# 
# 
# 
# 
# #####MCAR for study 2
# ts.s2.table(fitMCAR_0PerMiss_WM_ts_n200_dif,
#             fitMCAR_0PerMiss_WM_ts_n500_dif,
#             fitMCAR_0PerMiss_WM_ts_n1000_dif,
#             fitMCAR_0PerMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_0PerMiss_WM_ts_n200_dif",
#             caption.before = "Bias in",
#             caption.after = "complete data.")
# 
# 
# ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_dif,
#             fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_dif,
#             fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in",
#             caption.after = "MCAR, minimum pattern, two variables with missing data with 20\\% missing in each.")
# 
# 
# ts.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_dif,
#             fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_dif,
#             fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in", caption.after = "MCAR, minimum pattern, two variables with missing data with 50\\% missing in each.")
# 
# 
# ts.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_dif,
#             fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_dif,
#             fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in", caption.after = "MCAR, minimum pattern, four variables with missing data with 20\\% missing in each.")
# 
# 
# ts.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_dif,
#             fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_dif,
#             fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in", caption.after = "MCAR, minimum pattern, four variables with missing data with 50\\% missing in each.")
# 
# 
# ts.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_dif,
#             fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_dif,
#             fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in", caption.after = "MCAR, maximum pattern, two variables with missing data with 20\\% missing in each.")
# 
# 
# ts.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_dif,
#             fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_dif,
#             fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in", caption.after = "MCAR, maximum pattern, two variables with missing data with 50\\% missing in each.")
# 
# 
# ts.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_dif,
#             fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_dif,
#             fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in", caption.after = "MCAR, maximum pattern, four variables with missing data with 20\\% missing in each.")
# 
# 
# ts.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_dif,
#             fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_dif,
#             fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_dif,
#             fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_dif,
#             label.name="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_dif",
#             caption.before = "Bias in", caption.after = "MCAR, maximum pattern, four variables with missing data with 50\\% missing in each.")



#sink()




















##### Mean tables 

sink("TS Mean Tables.txt")
ts.s1.table(fitMCAR_0PerMiss_1CR_SF_ts_n200_mean,
            fitMCAR_0PerMiss_1CR_SF_ts_n500_mean,
            fitMCAR_0PerMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_0PerMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_0PerMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "compete data.", 
            w.in.num = 100, 
            bold.note="")

ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")
ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")

ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
            fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")
ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
            fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")



ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
            fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean,
            label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
            two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")






#####MCAR for study 2
ts.s2.table(fitMCAR_0PerMiss_WM_ts_n200_mean,
            fitMCAR_0PerMiss_WM_ts_n500_mean,
            fitMCAR_0PerMiss_WM_ts_n1000_mean,
            fitMCAR_0PerMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_0PerMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "complete data.", 
            w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of",
            caption.after = "MCAR, minimum pattern, two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of", caption.after = "MCAR, minimum pattern, two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of", caption.after = "MCAR, minimum pattern, four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of", caption.after = "MCAR, minimum pattern, four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of", caption.after = "MCAR, maximum pattern, two variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of", caption.after = "MCAR, maximum pattern, two variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of", caption.after = "MCAR, maximum pattern, four variables with missing data with 20\\% missing in each.",   w.in.num = 100,    bold.note="")


ts.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_mean,
            fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean,
            label.name="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean",
            caption.before = "Average Estimate of", caption.after = "MCAR, maximum pattern, four variables with missing data with 50\\% missing in each.",   w.in.num = 100,    bold.note="")



sink()
















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
               caption.after = "MCAR data, minimum pattern, two variables with missing data")


ts.s2.sd.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_sd, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_sd, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_sd,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_sd, 
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, maximum pattern, two variables with missing data")


ts.s2.sd.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_sd, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_sd, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_sd,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_sd, 
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, minimum pattern, four variables with missing data")


ts.s2.sd.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_sd, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_sd, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_sd, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_sd,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_sd, 
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_sd", 
               caption.before = "Empirical Standard Deviation of the Estimate of", 
               caption.after = "MCAR data, maximum pattern, four variables with missing data")

sink()

#Old code for making the functions
# caption.before=" "
# caption.after=" "
# label.name="test"
# 
# w.in.num <- 0.01
# rownam <- rep(c(" ","FIML", "TS w/o SSC", "TS w/ SSC V1", "TS w/ SSC V2"), 4)
# colnam <- c(" ", paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep=""))
# resultn200 <- fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif
# resultn500 <-  fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif
# resultn1000 <- fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif
# resultn1000000 <-  fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif
# resultn200_r <- resultn200[1:4,1:5 ]
# resultn500_r <- resultn500[1:4, 1:5]
# resultn1000_r <- resultn1000[1:4, 1:5]
# resultn1000000_r <- resultn1000000[1:4,1:5 ]
# resultn200_c <- resultn200[5:8,1:5 ]
# resultn500_c <- resultn500[5:8, 1:5]
# resultn1000_c <- resultn1000[5:8, 1:5]
# resultn1000000_c <- resultn1000000[5:8,1:5 ]
# 
# resultn200_r2 <- resultn200[1:4,6:10 ]
# resultn500_r2 <- resultn500[1:4, 6:10]
# resultn1000_r2 <- resultn1000[1:4, 6:10]
# resultn1000000_r2 <- resultn1000000[1:4,6:10 ]
# resultn200_c2 <- resultn200[5:8,6:10 ]
# resultn500_c2 <- resultn500[5:8, 6:10]
# resultn1000_c2 <- resultn1000[5:8, 6:10]
# resultn1000000_c2 <- resultn1000000[5:8, 6:10]
# 
# resultn200_r3 <- resultn200[1:4,11:15 ]
# resultn500_r3 <- resultn500[1:4, 11:15]
# resultn1000_r3 <- resultn1000[1:4, 11:15]
# resultn1000000_r3 <- resultn1000000[1:4,11:15 ]
# resultn200_c3 <- resultn200[5:8,11:15 ]
# resultn500_c3 <- resultn500[5:8, 11:15]
# resultn1000_c3 <- resultn1000[5:8, 11:15]
# resultn1000000_c3 <- resultn1000000[5:8, 11:15]
# 
# n200.nam <- c(rep(" ", 2), "n=200", rep(" ", 2))
# n500.nam <- c(rep(" ", 2), "n=500", rep(" ", 2))
# n1000.nam <- c(rep(" ", 2), "n=1000", rep(" ", 2))
# n1000000.nam <- c(rep(" ", 2), "n=1000000", rep(" ", 2))
# #RMSEA
# result_r<-rbind(resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
# result_r2<-rbind(resultn200_r2,resultn500_r2,  resultn1000_r2,resultn1000000_r2 )
# result_r3<-rbind(resultn200_r3,resultn500_r3,  resultn1000_r3,resultn1000000_r3 )
# 
# result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
# result_r2_test <- bold.cond(result_r2,abs(result_r2) > w.in.num )
# result_r3_test <- bold.cond(result_r3,abs(result_r3) > w.in.num )
# 
# rmsea.tab.pre <- rbind(n200.nam, result_r_test[1:4,],
#                        n500.nam, result_r_test[5:8,] ,
#                        n1000.nam, result_r_test[9:12,],
#                        n1000000.nam, result_r_test[13:16,])
# rmsea.tab.pre2 <- rbind(n200.nam, result_r2_test[1:4,],
#                         n500.nam, result_r2_test[5:8,] ,
#                         n1000.nam, result_r2_test[9:12,],
#                         n1000000.nam, result_r2_test[13:16,])
# rmsea.tab.pre3 <- rbind(n200.nam, result_r3_test[1:4,],
#                         n500.nam, result_r3_test[5:8,] ,
#                         n1000.nam, result_r3_test[9:12,],
#                         n1000000.nam, result_r3_test[13:16,])
# 
# 
# rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
# rmsea.tab.final2 <- cbind(rownam,rmsea.tab.pre2)
# rmsea.tab.final3 <- cbind(rownam,rmsea.tab.pre3)
# 
# colnames(rmsea.tab.final) <- colnam
# colnames(rmsea.tab.final2) <- colnam
# colnames(rmsea.tab.final3) <- colnam
# 
# 
# comment <- list(pos = list(0))
# comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
# comment$command <-paste0("\\hline \n \\multicolumn{6}{l}",
#                          "{\\footnotesize{Note: Bold values are those with raw bias beyond $\\pm 0.01.$ }} \\\\",
#                          "\n \\multicolumn{6}{l}",
#                          "{\\footnotesize{FIML=Full information maximum likelihood; TS=Two-stage; }} \\\\",
#                          "\n \\multicolumn{6}{l}",
#                          "{\\footnotesize{CR=Correlated Residual; SSC=Small sample correction;}} \\\\",
#                          "\n \\multicolumn{6}{l}",
#                          "{\\footnotesize{TS w/o SSC=TS without SSC; }} \\\\ ",
#                          "\n \\multicolumn{6}{l}",
#                          "{\\footnotesize{TS w/ SSC V1-V2=TS with SSC versions 1-2.}} \\\\ \n")
# 
# 
# 
# print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea.fc0", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " RMSEA Comparing TS to FIML Method
#                             \\newline Simulation Study 1 Condition: factor correlation of 0, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 5, 10,15), add.to.row=comment, floating=T, floating.environment = "sidewaystable")
# 
# 
# 
# 
# print(xtable(rmsea.tab.final2, auto=T, label=paste(label.name, "rmsea.fc0.4.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " RMSEA Comparing FIML-C to FIML Method
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.4, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after =c(-1, 0, 5, 10,15), add.to.row=comment)
# 
# print(xtable(rmsea.tab.final2, auto=T, label=paste(label.name, "rmsea.fc0.8.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " RMSEA Comparing FIML-C to FIML Method
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.8, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 5, 10,15), add.to.row=comment)
# 
# 
# 
# result_c<-rbind(resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
# result_c2<-rbind(resultn200_c2,resultn500_c2,  resultn1000_c2,resultn1000000_c2 )
# result_c3<-rbind(resultn200_c3,resultn500_c3,  resultn1000_c3,resultn1000000_c3 )
# 
# result_c_test <- bold.cond(result_c, abs(result_c) > w.in.num )
# result_c2_test <- bold.cond(result_c2, abs(result_c2) > w.in.num )
# result_c3_test <- bold.cond(result_c3, abs(result_c3) > w.in.num )
# 
# 
# cfi.tab.pre <- rbind(n200.nam, result_c_test[1:4,],
#                      n500.nam, result_c_test[5:8,] ,
#                      n1000.nam, result_c_test[17:24,],
#                      n1000000.nam, result_c_test[25:32,])
# cfi.tab.pre2 <- rbind(n200.nam, result_c2_test[1:4,],
#                       n500.nam, result_c2_test[5:8,] ,
#                       n1000.nam, result_c2_test[17:24,],
#                       n1000000.nam, result_c2_test[25:32,])
# cfi.tab.pre3 <- rbind(n200.nam, result_c3_test[1:4,],
#                       n500.nam, result_c3_test[5:8,] ,
#                       n1000.nam, result_c3_test[17:24,],
#                       n1000000.nam, result_c3_test[25:32,])
# 
# cfi.tab.final <- cbind(rownam,cfi.tab.pre)
# cfi.tab.final2 <- cbind(rownam,cfi.tab.pre2)
# cfi.tab.final3 <- cbind(rownam,cfi.tab.pre3)
# colnames(cfi.tab.final) <- colnam
# colnames(cfi.tab.final2) <- colnam
# colnames(cfi.tab.final3) <- colnam
# 
# 
# 
# print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi.fc0", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " CFI Comparing TS to FIML Method
#                             \\newline Simulation Study 1 Condition: factor correlation of 0, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 5, 10,15), add.to.row=comment)
# 
# print(xtable(cfi.tab.final2, auto=T, label=paste(label.name, "cfi.fc0.4.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " CFI Comparing TS to FIML Method
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.4, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 5, 10,15), add.to.row=comment)
# 
# print(xtable(cfi.tab.final3, auto=T, label=paste(label.name, "cfi.fc0.8.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " CFI Comparing TS to FIML Method
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.8, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 5, 10,15), add.to.row=comment)


