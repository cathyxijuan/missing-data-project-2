source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC mean.R")


setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/make FIMLC tables")
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

sink("FIMLC Study 1 Mean Tables2.txt")
#Study 1 MCAR

fimlc.s1.table2(fit_0PerMiss_1CR_fimlc_n150_mean,
                fit_0PerMiss_1CR_fimlc_n200_mean ,
                fit_0PerMiss_1CR_fimlc_n500_mean ,
                fit_0PerMiss_1CR_fimlc_n1000_mean ,
                fit_0PerMiss_1CR_fimlc_n1000000_mean , 
                label.name = "fit_0PerMiss_1CR_fimlc_n200_mean ", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "one correlated residual, complete data.")

fimlc.s1.table2(fit_0PerMiss_2CR_fimlc_n150_mean ,
                fit_0PerMiss_2CR_fimlc_n200_mean ,
                fit_0PerMiss_2CR_fimlc_n500_mean ,
                fit_0PerMiss_2CR_fimlc_n1000_mean ,
                fit_0PerMiss_2CR_fimlc_n1000000_mean , 
                label.name = "fit_0PerMiss_2CR_fimlc_n200_mean ", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "two correlated residuals, complete data.")


fimlc.s1.table2(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
                               two variables with missing data with 20\\% missing in each.")





fimlc.s1.table2(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table2(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table2(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")




fimlc.s1.table2(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.")




fimlc.s1.table2(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.")


fimlc.s1.table2(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")

fimlc.s1.table2(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")

fimlc.s1.table2(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.")

#######Study 1 MAR#####
#######Study 1 MAR#####
#######Study 1 MAR#####

fimlc.s1.table2(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table2(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table2(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")




fimlc.s1.table2(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.")




fimlc.s1.table2(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.")


fimlc.s1.table2(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")

fimlc.s1.table2(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")

fimlc.s1.table2(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.")




fimlc.s1.table2(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table2(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table2(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.")



fimlc.s1.table2(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.")


fimlc.s1.table2(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")

fimlc.s1.table2(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")

fimlc.s1.table2(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.")

fimlc.s1.table2(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table2(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n150_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_mean,
                fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.")

sink()















###study 2 MCAR

sink("FIMLC Study 2 Mean Tables2.txt")

fimlc.s2.table2(fitMCAR_0PerMiss_WM_fimlc_n150_mean, 
                fitMCAR_0PerMiss_WM_fimlc_n200_mean, 
                fitMCAR_0PerMiss_WM_fimlc_n500_mean,
                fitMCAR_0PerMiss_WM_fimlc_n1000_mean, 
                fitMCAR_0PerMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_0PerMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "complete data.")




fimlc.s2.table2(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean, 
                fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean, 
                fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean,
                fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.table2(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean,
                fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, small number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean,
                fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, small number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean,
                fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean,
                fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean,
                fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.table2(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean, 
                fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean,
                fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.")




###study 2 MAR


fimlc.s2.table2(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean,
                fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean,
                fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.table2(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean,
                fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, small number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, small number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.table2(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean,
                fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "weak MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")


fimlc.s2.table2(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean,
                fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean,
                fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean,
                fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


fimlc.s2.table2(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean,
                fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, small number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, small number of patterns, six variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table2(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

fimlc.s2.table2(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n150_mean,
                fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

fimlc.s2.table2(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n150_mean, 
                fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean, 
                fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_mean,
                fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_mean, 
                fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean, 
                label.name = "fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_mean", 
                caption.before = "Average estimate of",    w.in.num = 100,bold.note=" ",
                caption.after = "strong MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



sink()








