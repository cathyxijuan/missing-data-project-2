source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC mean.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC SD.R")

setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/make FIMLC tables")
library(xtable)
#options(scipen=999)



####### Dif Tables #################################
sink("FIMLC MCAR Study 1 Bias Tables.txt")
#Study 1 MCAR

fimlc.s1.table(fit_0PerMiss_1CR_fimlc_n150_dif,
               fit_0PerMiss_1CR_fimlc_n200_dif ,
               fit_0PerMiss_1CR_fimlc_n500_dif ,
               fit_0PerMiss_1CR_fimlc_n1000_dif ,
               fit_0PerMiss_1CR_fimlc_n1000000_dif , 
               label.name = "fit_0PerMiss_1CR_fimlc_n200_dif ", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "one correlated residual, complete data.")

fimlc.s1.table(fit_0PerMiss_2CR_fimlc_n200_dif ,
               fit_0PerMiss_2CR_fimlc_n500_dif ,
               fit_0PerMiss_2CR_fimlc_n1000_dif ,
               fit_0PerMiss_2CR_fimlc_n1000000_dif , 
               label.name = "fit_0PerMiss_2CR_fimlc_n200_dif ", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "two correlated residuals, complete data.")


fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
                               two variables with missing data with 20\\% missing in each.")





fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")




fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.")




fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.")


fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.")

sink()






###study 2 MCAR

sink("FIMLC MCAR Study 2 Bias Tables.txt")

fimlc.s2.table(fitMCAR_0PerMiss_WM_fimlc_n200_dif, 
               fitMCAR_0PerMiss_WM_fimlc_n500_dif,
               fitMCAR_0PerMiss_WM_fimlc_n1000_dif, 
               fitMCAR_0PerMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_0PerMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "complete data.")




fimlc.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.table(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, small number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, small number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.")

sink()






#######Study 1 MAR#####
#######Study 1 MAR#####
#######Study 1 MAR#####
sink("FIMLC MAR Study 1 Bias Tables.txt")

fimlc.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")




fimlc.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.")




fimlc.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.")


fimlc.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.")




fimlc.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.")


fimlc.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.")

sink()











###study 2 MAR

sink("FIMLC MAR Study 2 Bias Tables.txt")

fimlc.s2.table(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.table(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, small number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, small number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.table(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")


fimlc.s2.table(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.table(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, small number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, small number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.table(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif,
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Empirical bias of the estimate of", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



sink()











####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############
####### Mean tables #############

sink("FIMLC MCAR mean tables.txt")
fimlc.s1.table(fitMCAR_0PerMiss_1CR_SF_fimlc_n200_mean ,
               fitMCAR_0PerMiss_1CR_SF_fimlc_n500_mean ,
               fitMCAR_0PerMiss_1CR_SF_fimlc_n1000_mean ,
               fitMCAR_0PerMiss_1CR_SF_fimlc_n1000000_mean , 
               label.name = "fitMCAR_0PerMiss_1CR_SF_fimlc_n200_mean ", 
               caption.before = "Empirical estimate of", 
               caption.after = "complete data.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,     bold.note=" ")



fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



###study 2 MCAR

fimlc.s2.table(fitMCAR_0PerMiss_WM_fimlc_n200_mean, 
               fitMCAR_0PerMiss_WM_fimlc_n500_mean,
               fitMCAR_0PerMiss_WM_fimlc_n1000_mean, 
               fitMCAR_0PerMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_0PerMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "complete data.", w.in.num = 100,         bold.note=" ")



fimlc.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s2.table(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100, bold.note=" ")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100, bold.note=" ")



fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100, bold.note=" ")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100, bold.note=" ")
fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100, bold.note=" ")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
               caption.before = "Empirical estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100, bold.note=" ")

sink()

















############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
############# SD TABLES
sink("FIMLC MCAR SD tables")
fimlc.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor, 
                  two variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
                  two variables with missing data with 50\\% missing in each.")



fimlc.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
                  four variables with missing data with 20\\% missing in each.")



fimlc.s1.sd.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd, 
                  label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual,  misfit and missing data on the same factor, 
                  four variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd, 
                  label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
                  four variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
                  four variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd,
                  label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
                  two variables with missing data with 20\\% missing in each.")

fimlc.s1.sd.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
                  two variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
                  two variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
                  four variables with missing data with 20\\% missing in each.")

fimlc.s1.sd.table(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
                  four variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
                  four variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
                  four variables with missing data with 50\\% missing in each.")



###study 2 MCAR




fimlc.s2.sd.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd,  
                  label.name = "fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.sd.table(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.sd.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.")


fimlc.s2.sd.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.")

sink()

