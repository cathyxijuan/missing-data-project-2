source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS rmse.R")


setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/make TS tables")
library(xtable)


sink("ts study1 rmse tables2")
ts.s1.table(fit_0PerMiss_1CR_ts_n150_rmse,
               fitMCAR_0PerMiss_1CR_SF_ts_n200_rmse,
               fitMCAR_0PerMiss_1CR_SF_ts_n500_rmse,
               fitMCAR_0PerMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMCAR_0PerMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num= 0.03,   bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "complete data, one correlated residual.")



ts.s1.table(fit_0PerMiss_2CR_ts_n150_rmse,
               fit_0PerMiss_2CR_ts_n200_rmse,
               fit_0PerMiss_2CR_ts_n500_rmse,
               fit_0PerMiss_2CR_ts_n1000_rmse,
               label.name = "   fit_0PerMiss_2CR_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num= 0.03,   bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "complete data, two correlated residuals.")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n150_rmse,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_rmse,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num= 0.03,   bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n150_rmse,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n500_rmse,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor, 
  two variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n150_rmse,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_rmse,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n150_rmse,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_rmse,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
  two variables with missing data with 50\\% missing in each.")



ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n150_rmse,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n500_rmse,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
  four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n150_rmse,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n500_rmse,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on the same factor, 
  four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n150_rmse,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n500_rmse,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
  four variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n150_rmse,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_rmse,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
  four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n150_rmse,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n500_rmse,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse,
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
  two variables with missing data with 20\\% missing in each.")

ts.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n150_rmse,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n500_rmse,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
  two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n150_rmse,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n500_rmse,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n150_rmse,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n500_rmse,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
  two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n150_rmse,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n500_rmse,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
  four variables with missing data with 20\\% missing in each.")

ts.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n150_rmse,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n500_rmse,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
  four variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n150_rmse,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n500_rmse,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
  four variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n150_rmse,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500_rmse,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
  four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor, 
  two variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
  two variables with missing data with 50\\% missing in each.")



ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on the same factor,
  four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on the same factor, 
  four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
  four variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on the same factor,
  four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
  two variables with missing data with 20\\% missing in each.")

ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
  two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
  two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual, misfit and missing data on different factors,
  four variables with missing data with 20\\% missing in each.")

ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, one correlated residual,  misfit and missing data on different factors, 
  four variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
  four variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, two correlated residuals, misfit and missing data on different factors,
  four variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor, 
  two variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
  two variables with missing data with 50\\% missing in each.")



ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on the same factor,
  four variables with missing data with 20\\% missing in each.")



ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n150_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on the same factor, 
  four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
  four variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n150_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on the same factor,
  four variables with missing data with 50\\% missing in each.")


ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
  two variables with missing data with 20\\% missing in each.")

ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
  two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
  two variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
  two variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual, misfit and missing data on different factors,
  four variables with missing data with 20\\% missing in each.")

ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n150_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_1CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, one correlated residual,  misfit and missing data on different factors, 
  four variables with missing data with 50\\% missing in each.")

ts.s1.table(fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
  four variables with missing data with 20\\% missing in each.")


ts.s1.table(fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n150_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n500_rmse,
               fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse,
               label.name = "fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, two correlated residuals, misfit and missing data on different factors,
  four variables with missing data with 50\\% missing in each.")



sink()









###study 2 MCAR


sink("ts study2 rmse tables2")

ts.s2.table(fit_0PerMiss_WM_ts_n150_rmse,
               fit_0PerMiss_WM_ts_n200_rmse, 
               fit_0PerMiss_WM_ts_n500_rmse,
               fit_0PerMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MinPat_0PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "complete data.")


ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n150_rmse, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MinPat_50PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, small number of patterns, two variables with missing data with 50\\% missing in each.")

ts.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n150_rmse,
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n150_rmse,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse,  
               label.name = "fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



ts.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, two variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n150_rmse,
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n150_rmse, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

ts.s2.table(fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "MCAR, large number of patterns, six variables with missing data with 50\\% missing in each.")

ts.s2.table(fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")

ts.s2.table(fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n150_rmse, 
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse,  
               label.name = "fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



ts.s2.table(fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n150_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n150_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

ts.s2.table(fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n150_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "weak MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n150_rmse, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, small number of patterns, two variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, small number of patterns, two variables with missing data with 50\\% missing in each.")

ts.s2.table(fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n150_rmse, 
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, small number of patterns, four variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n150_rmse,
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse,  
               label.name = "fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, small number of patterns, four variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")



ts.s2.table(fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n150_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, two variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n150_rmse,
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_2VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, two variables with missing data with 50\\% missing in each.")


ts.s2.table(fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n150_rmse,
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, four variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n150_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, four variables with missing data with 50\\% missing in each.")

ts.s2.table(fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n150_rmse,
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 20\\% missing in each.")

ts.s2.table(fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n150_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse, 
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse,
               fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse, 
               label.name = "fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse", 
               caption.before = "Root mean square error of the estimate of ",w.in.num = 0.03 , bold.note="Bold values are those with standard errors beyond $\\pm 0.03.$", 
               caption.after = "strong MAR, large number of patterns, six variables with missing data with 50\\% missing in each.")




sink()


