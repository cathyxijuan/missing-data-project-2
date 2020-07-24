source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")

source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS mean.R")

setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/make TS tables")
library(xtable)



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


#####STUDY 1
sink("TS Study 1 Mean Tables.txt")
ts.s1.table(fitMCAR_0PerMiss_1CR_SF_ts_n200_mean ,
               fitMCAR_0PerMiss_1CR_SF_ts_n500_mean ,
               fitMCAR_0PerMiss_1CR_SF_ts_n1000_mean ,
               fitMCAR_0PerMiss_1CR_SF_ts_n1000000_mean , 
               label.name = "fitMCAR_0PerMiss_1CR_SF_ts_n200_mean ", 
               caption.before = "Average estimate of", 
               caption.after = "complete data.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,     bold.note=" ")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n500_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000_mean,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000_mean,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")




ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")




ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")




ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n500_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000_mean,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

sink()



































###study 2
sink("TS Study 2 Mean Tables.txt")


ts.s2.table(fitMCAR_0PerMiss_WM_ts_n200_mean, 
               fitMCAR_0PerMiss_WM_ts_n500_mean,
               fitMCAR_0PerMiss_WM_ts_n1000_mean, 
               fitMCAR_0PerMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_0PerMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "complete data.", w.in.num = 100,         bold.note=" ")



ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100, bold.note=" ")

ts.s2.table(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100, bold.note=" ")



ts.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100, bold.note=" ")

ts.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100, bold.note=" ")

ts.s2.table(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100, bold.note=" ")

ts.s2.table(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100, bold.note=" ")






ts.s2.table(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, small number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, small number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s2.table(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, small number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, small number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s2.table(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, small number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, small number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s2.table(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, large number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, large number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s2.table(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, large number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, large number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s2.table(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, small number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, small number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s2.table(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, small number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, small number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")


ts.s2.table(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, small number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, small number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s2.table(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, large number of patterns, two variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, large number of patterns, two variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")



ts.s2.table(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, large number of patterns, four variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, large number of patterns, four variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 20\\% missing in each.", w.in.num = 100,         bold.note=" ")

ts.s2.table(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_mean, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_mean,
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_mean, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_mean", 
               caption.before = "Average estimate of", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 50\\% missing in each.", w.in.num = 100,         bold.note=" ")

sink()



