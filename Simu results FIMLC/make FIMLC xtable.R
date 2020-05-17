source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")
#source("compute FIMLC means.R")
#source("compute FIMLC dif.R")
library(xtable)
#options(scipen=999)

sink("FIMLC LaTex Tables.txt")
#Study 1 MCAR

fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
                               two variables with missing data with 20\\% missing in each.")





fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor, 
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               two variables with missing data with 50\\% missing in each.")



fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")




fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on the same factor, 
               four variables with missing data with 50\\% missing in each.")




fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on the same factor,
               four variables with missing data with 50\\% missing in each.")


fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               two variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")

fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, one correlated residual,  misfit and missing data on different factors, 
               four variables with missing data with 50\\% missing in each.")

fimlc.s1.table(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 20\\% missing in each.")


fimlc.s1.table(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif,
               fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_dif, 
               label.name = "fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, two correlated residuals, misfit and missing data on different factors,
               four variables with missing data with 50\\% missing in each.")





###study 2 MCAR


fimlc.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, minimum pattern, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, minimum pattern, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, minimum pattern, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, minimum pattern, four variables with missing data with 50\\% missing in each.")







fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, maximum pattern, two variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, maximum pattern, two variables with missing data with 50\\% missing in each.")



fimlc.s2.table(fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, maximum pattern, four variables with missing data with 20\\% missing in each.")

fimlc.s2.table(fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif,
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif, 
               fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif, 
               label.name = "fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif", 
               caption.before = "Bias in", 
               caption.after = "MCAR, maximum pattern, four variables with missing data with 50\\% missing in each.")


sink()








###### old code for making the functions#######
# caption.before=" "
# caption.after=" "
# label.name="test"
# 
# w.in.num <- 0.01
# rownam <- rep(c(" ","FIML", "FIML-C w/o SSC", 
#                 "FIML-C w/ SSC V1", "FIML-C w/ SSC V2",
#                 "FIML-C w/ SSC V3", "FIML-C w/ SSC V4",
#                 "FIML-C w/ SSC V5", "FIML-C w/ SSC V6"), 4)
# colnam <- c(" ", paste("FC=", c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.4, 0.2), sep=""))
# resultn200 <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n200_dif
# resultn500 <-  fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n500_dif
# resultn1000 <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000_dif
# resultn1000000 <-  fitMCAR_MinPat_20PerMiss_2VarMiss_WM_fimlc_n1000000_dif
# resultn200_r <- resultn200[1:8, ]
# resultn500_r <- resultn500[1:8, ]
# resultn1000_r <- resultn1000[1:8, ]
# resultn1000000_r <- resultn1000000[1:8, ]
# resultn200_c <- resultn200[9:16, ]
# resultn500_c <- resultn500[9:16, ]
# resultn1000_c <- resultn1000[9:16, ]
# resultn1000000_c <- resultn1000000[9:16, ]
# n200.nam <- c(rep(" ", 4), "n=200", rep(" ", 4))
# n500.nam <- c(rep(" ", 4), "n=500", rep(" ", 4))
# n1000.nam <- c(rep(" ", 4), "n=1000", rep(" ", 4))
# n1000000.nam <- c(rep(" ", 4), "n=1000000", rep(" ", 4))
# #RMSEA
# result_r<-rbind(resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
# 
# 
# result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
# length(n200.nam)
# ncol(result_r_test)
# 
# rmsea.tab.pre <- rbind(n200.nam, result_r_test[1:8,],
#                        n500.nam, result_r_test[9:16,] , 
#                        n1000.nam, result_r_test[17:24,], 
#                        n1000000.nam, result_r_test[25:32,])
# rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
# 
# colnames(rmsea.tab.final) <- colnam
# rmsea.tab.final 
# 
# comment <- list(pos = list(0))
# comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
# comment$command <-paste0("\\hline \n \\multicolumn{10}{l}",
#                          "{\\footnotesize{Note: Bold values are those with raw bias beyond $\\pm 0.01.$ FIML=Full information maximum likelihood;}} \\\\", 
#                          "\n \\multicolumn{10}{l}",
#                          "{\\footnotesize{FIML-C=FIML-Corrected; FC=Factor correlation; SSC=Small sample correction;}} \\\\",
#                          "\n \\multicolumn{10}{l}",
#                          "{\\footnotesize{FIML-C w/o SSC=FIML-C without SSC; FIML-C w/ SSC V1-V6=FIML-C with SSC versions 1-6.}} \\\\ \n")
# 
# print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea", sep="."), align="ll|lllllllll",
#              caption=paste0(caption.before, " RMSEA Comparing FIML-C to FIML Method \\newline Simulation Study 2 Condition:  ", caption.after)), 
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
# 
# 
# 
# 
# result_c<-rbind(resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
# 
# result_c_test <- bold.cond(result_c,abs(result_c) > w.in.num )
# 
# 
# cfi.tab.pre <- rbind(n200.nam, result_c_test[1:8,],
#                      n500.nam, result_c_test[9:16,] , 
#                      n1000.nam, result_c_test[17:24,],
#                      n1000000.nam, result_c_test[25:32,])
# 
# cfi.tab.final <- cbind(rownam,cfi.tab.pre)
# 
# colnames(cfi.tab.final) <- colnam
# cfi.tab.final 
# 
# 
# print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi", sep="."), align="ll|lllllllll",
#              caption=paste0(caption.before, " CFI Comparing FIML-C to FIML Method \\newline Simulation Study 2 Condition:  ", caption.after)), 
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
# 









###
# caption.before=" "
# caption.after=" "
# label.name="test"
# 
# w.in.num <- 0.01
# rownam <- rep(c(" ","FIML", "FIML-C w/o SSC",
#                 "FIML-C w/ SSC V1", "FIML-C w/ SSC V2",
#                 "FIML-C w/ SSC V3", "FIML-C w/ SSC V4",
#                 "FIML-C w/ SSC V5", "FIML-C w/ SSC V6"), 4)
# colnam <- c(" ", paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep=""))
# resultn200 <- fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif
# resultn500 <-  fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif
# resultn1000 <- fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif
# resultn1000000 <-  fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif
# resultn200_r <- resultn200[1:8,1:5 ]
# resultn500_r <- resultn500[1:8, 1:5]
# resultn1000_r <- resultn1000[1:8, 1:5]
# resultn1000000_r <- resultn1000000[1:8,1:5 ]
# resultn200_c <- resultn200[9:16,1:5 ]
# resultn500_c <- resultn500[9:16, 1:5]
# resultn1000_c <- resultn1000[9:16, 1:5]
# resultn1000000_c <- resultn1000000[9:16,1:5 ]
# 
# resultn200_r2 <- resultn200[1:8,6:10 ]
# resultn500_r2 <- resultn500[1:8, 6:10]
# resultn1000_r2 <- resultn1000[1:8, 6:10]
# resultn1000000_r2 <- resultn1000000[1:8,6:10 ]
# resultn200_c2 <- resultn200[9:16,6:10 ]
# resultn500_c2 <- resultn500[9:16, 6:10]
# resultn1000_c2 <- resultn1000[9:16, 6:10]
# resultn1000000_c2 <- resultn1000000[9:16, 6:10]
# 
# resultn200_r3 <- resultn200[1:8,11:15 ]
# resultn500_r3 <- resultn500[1:8, 11:15]
# resultn1000_r3 <- resultn1000[1:8, 11:15]
# resultn1000000_r3 <- resultn1000000[1:8,11:15 ]
# resultn200_c3 <- resultn200[9:16,11:15 ]
# resultn500_c3 <- resultn500[9:16, 11:15]
# resultn1000_c3 <- resultn1000[9:16, 11:15]
# resultn1000000_c3 <- resultn1000000[9:16, 11:15]
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
# rmsea.tab.pre <- rbind(n200.nam, result_r_test[1:8,],
#                        n500.nam, result_r_test[9:16,] ,
#                        n1000.nam, result_r_test[17:24,],
#                        n1000000.nam, result_r_test[25:32,])
# rmsea.tab.pre2 <- rbind(n200.nam, result_r2_test[1:8,],
#                         n500.nam, result_r2_test[9:16,] ,
#                         n1000.nam, result_r2_test[17:24,],
#                         n1000000.nam, result_r2_test[25:32,])
# rmsea.tab.pre3 <- rbind(n200.nam, result_r3_test[1:8,],
#                         n500.nam, result_r3_test[9:16,] ,
#                         n1000.nam, result_r3_test[17:24,],
#                         n1000000.nam, result_r3_test[25:32,])
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
#                          "{\\footnotesize{FIML=Full information maximum likelihood; FIML-C=FIML-Corrected; }} \\\\",
#                          "\n \\multicolumn{6}{l}",
#                          "{\\footnotesize{CR=Correlated Residual; SSC=Small sample correction;}} \\\\",
#                          "\n \\multicolumn{6}{l}",
#                          "{\\footnotesize{FIML-C w/o SSC=FIML-C without SSC; }} \\\\ ",    
#                          "\n \\multicolumn{6}{l}",
#                          "{\\footnotesize{FIML-C w/ SSC V1-V6=FIML-C with SSC versions 1-6.}} \\\\ \n")
# 
# print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea.fc0", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " RMSEA Comparing FIML-C to FIML Method 
#                             \\newline Simulation Study 1 Condition: factor correlation of 0, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
# 
# print(xtable(rmsea.tab.final2, auto=T, label=paste(label.name, "rmsea.fc0.4.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " RMSEA Comparing FIML-C to FIML Method 
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.4, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
# 
# print(xtable(rmsea.tab.final2, auto=T, label=paste(label.name, "rmsea.fc0.8.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " RMSEA Comparing FIML-C to FIML Method 
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.8, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
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
# cfi.tab.pre <- rbind(n200.nam, result_c_test[1:8,],
#                      n500.nam, result_c_test[9:16,] ,
#                      n1000.nam, result_c_test[17:24,],
#                      n1000000.nam, result_c_test[25:32,])
# cfi.tab.pre2 <- rbind(n200.nam, result_c2_test[1:8,],
#                       n500.nam, result_c2_test[9:16,] ,
#                       n1000.nam, result_c2_test[17:24,],
#                       n1000000.nam, result_c2_test[25:32,])
# cfi.tab.pre3 <- rbind(n200.nam, result_c3_test[1:8,],
#                       n500.nam, result_c3_test[9:16,] ,
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
#              caption=paste0(caption.before, " CFI Comparing FIML-C to FIML Method 
#                             \\newline Simulation Study 1 Condition: factor correlation of 0, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
# 
# print(xtable(cfi.tab.final2, auto=T, label=paste(label.name, "cfi.fc0.4.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " CFI Comparing FIML-C to FIML Method 
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.4, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
# 
# print(xtable(cfi.tab.final3, auto=T, label=paste(label.name, "cfi.fc0.8.", sep="."), align="ll|ccccc",
#              caption=paste0(caption.before, " CFI Comparing FIML-C to FIML Method 
#                             \\newline Simulation Study 1 Condition: factor correlation of 0.8, ", caption.after)),
#       sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
#       hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
# 
# 
# 
# 
# 
# 
# fimlc.s1.table(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif,
#                fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500_dif,
#                fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000_dif,
#                fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000_dif, 
#                label.name = "fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200_dif", 
#                caption.before = "Bias in", 
#                caption.after = "MCAR, two variables with missing data with 20\\% missing in each, ")



