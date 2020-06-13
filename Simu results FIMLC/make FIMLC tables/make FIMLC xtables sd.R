source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC SD.R")

setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/make FIMLC tables")
library(xtable)
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
sink("FIMLC study1 SD tables")
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


fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor, 
                  two variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
                  two variables with missing data with 50\\% missing in each.")



fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
                  four variables with missing data with 20\\% missing in each.")



fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual,  misfit and missing data on the same factor, 
                  four variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
                  four variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
                  four variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
                  two variables with missing data with 20\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
                  two variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
                  two variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
                  four variables with missing data with 20\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
                  four variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
                  four variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
                  four variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor, 
                  two variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
                  two variables with missing data with 50\\% missing in each.")



fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
                  four variables with missing data with 20\\% missing in each.")



fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual,  misfit and missing data on the same factor, 
                  four variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
                  four variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
                  four variables with missing data with 50\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
                  two variables with missing data with 20\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
                  two variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
                  two variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
                  two variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
                  four variables with missing data with 20\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
                  four variables with missing data with 50\\% missing in each.")

fimlc.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
                  four variables with missing data with 20\\% missing in each.")


fimlc.s1.sd.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_sd,
                  fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_sd,
                  label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
                  four variables with missing data with 50\\% missing in each.")













###study 2 MCAR


sink("FIMLC study2 SD tables")

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

fimlc.s2.sd.table(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd,  
                  label.name = "fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.sd.table(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.sd.table(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")


fimlc.s2.sd.table(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "weak MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")


fimlc.s2.sd.table(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd,  
                  label.name = "fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.sd.table(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.sd.table(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")


fimlc.s2.sd.table(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.sd.table(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd, 
                  fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd,
                  fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_sd, 
                  label.name = "fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd", 
                  caption.before = "Empirical standard error of the estimate of ", 
                  caption.after = "strong MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")




sink()



