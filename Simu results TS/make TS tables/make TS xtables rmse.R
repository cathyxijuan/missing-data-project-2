source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS rmse.R")


setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/make TS tables")
library(xtable)


sink("TS rmse study1 Tables.txt")


ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse, 
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_rmse, 
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse, 
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_rmse, 
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse, 
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_rmse, 
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse, 
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_rmse, 
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse,
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on the same factor, four variables with missing data")


ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse, 
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_rmse, 
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse, 
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_rmse, 
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, two correlated residuals, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse, 
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_rmse, 
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse, 
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_rmse, 
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, two correlated residuals, misfit and missing data are on the same factor, four variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse, 
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_rmse, 
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse, 
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_rmse, 
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse, 
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n500_rmse, 
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse, 
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n500_rmse, 
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, one correlated residual, misfit and missing data are on different factors, four variables with missing data")


ts.s1.sd.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse, 
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_rmse, 
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse, 
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_rmse, 
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, two correlated residuals, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse, 
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n500_rmse, 
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse, 
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse, 
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500_rmse, 
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
              caption.after = "MCAR data, two correlated residuals, misfit and missing data are on different factors, four variables with missing data")




ts.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, one correlated residual, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, one correlated residual, misfit and missing data are on the same factor, four variables with missing data")


ts.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, two correlated residuals, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, two correlated residuals, misfit and missing data are on the same factor, four variables with missing data")



ts.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, one correlated residual, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, one correlated residual, misfit and missing data are on different factors, four variables with missing data")


ts.s1.sd.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, two correlated residuals, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, two correlated residuals, misfit and missing data are on different factors, four variables with missing data")


ts.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, one correlated residual, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse,
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, one correlated residual, misfit and missing data are on the same factor, four variables with missing data")


ts.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, two correlated residuals, misfit and missing data are on the same factor, two variables with missing data")



ts.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, two correlated residuals, misfit and missing data are on the same factor, four variables with missing data")



ts.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, one correlated residual, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, one correlated residual, misfit and missing data are on different factors, four variables with missing data")


ts.s1.sd.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, two correlated residuals, misfit and missing data are on different factors, two variables with missing data")



ts.s1.sd.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n500_rmse, 
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, two correlated residuals, misfit and missing data are on different factors, four variables with missing data")


sink()












sink("TS rmse study2 Tables.txt")


ts.s2.sd.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, small number of patterns, two variables with missing data")


ts.s2.sd.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, large number of patterns, two variables with missing data")






ts.s2.sd.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, small number of patterns, four variables with missing data")


ts.s2.sd.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_rmse, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, large number of patterns, four variables with missing data")

ts.s2.sd.table(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, small number of patterns, six variables with missing data")


ts.s2.sd.table(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "MCAR data, large number of patterns, six variables with missing data")





ts.s2.sd.table(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse,
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, small number of patterns, two variables with missing data")


ts.s2.sd.table(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, large number of patterns, two variables with missing data")



ts.s2.sd.table(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, small number of patterns, six variables with missing data")


ts.s2.sd.table(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "weak MAR data, large number of patterns, six variables with missing data")

ts.s2.sd.table(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, small number of patterns, two variables with missing data")


ts.s2.sd.table(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse,
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, large number of patterns, two variables with missing data")



ts.s2.sd.table(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, small number of patterns, six variables with missing data")


ts.s2.sd.table(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               w.in.num.r = 0.03, w.in.num.c = 0.03,bold.note.r="Bold values are those with standard errors beyond $\\pm 0.03.$ ",
               label.name = "fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of", 
               caption.after = "strong MAR data, large number of patterns, six variables with missing data")
sink()
