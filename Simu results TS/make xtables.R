source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS")
#source("compute TS means.R")
#source("compute TS dif.R")
library(xtable)
#options(scipen=999)


ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_dif, 
            label.name ="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_dif", caption.before="Average bias for ", 
            caption.after = "MCAR, minimum pattern, two variables with missing data with 20 percent missing in each, n=200")

ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_dif, 
            label.name ="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_dif",caption.before="Average bias for ", 
            caption.after = "MCAR, minimum pattern, two variables with missing data with 20 percent missing in each, n=500")

ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_dif, 
            label.name ="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_dif",caption.before="Average bias for ", 
            caption.after = "MCAR, minimum pattern, two variables with missing data with 20 percent missing in each, n=1000")

ts.s2.table(fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_dif, 
            label.name ="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_dif", caption.before="Average bias for ", 
            caption.after = "MCAR, minimum pattern, two variables with missing data with 20 percent missing in each, n=1000000")





w.in.num <- 0.01
rownam <- rep(c(" ","FIML", "TS w/o SSC", "TS w/ SSC V1", "TS w/ SSC V2"), 4)
colnam <- c(" ", paste("FC=", c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.4, 0.2), sep=""))
resultn200 <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_dif
resultn500 <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n500_dif
resultn1000 <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000_dif
resultn1000000 <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_dif
resultn200_r <- resultn200[1:4, ]
resultn500_r <- resultn500[1:4, ]
resultn1000_r <- resultn1000[1:4, ]
resultn1000000_r <- resultn1000000[1:4, ]
resultn200_c <- resultn200[5:8, ]
resultn500_c <- resultn500[5:8, ]
resultn1000_c <- resultn1000[5:8, ]
resultn1000000_c <- resultn1000000[5:8, ]
n200.nam <- c(rep(" ", 4), "n=200", rep(" ", 4))
n500.nam <- c(rep(" ", 4), "n=500", rep(" ", 4))
n1000.nam <- c(rep(" ", 4), "n=1000", rep(" ", 4))
n1000000.nam <- c(rep(" ", 4), "n=1000000", rep(" ", 4))
#RMSEA
result_r<-rbind(resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )

result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )

rmsea.tab.pre <- rbind(n200.nam, result_r_test[1:4,],n500.nam, result_r_test[5:8,] , n1000.nam, result_r_test[9:12,], n1000000.nam, result_r_test[13:16,])
rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)

colnames(rmsea.tab.final) <- colnam
rmsea.tab.final 


print(xtable(rmsea.tab.final, auto=T, label="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_dif_r", 
             caption="Simulation Study 2 Condition"), 
      sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
      hline.after = c(-1, 0, 5, 10,15,nrow(rmsea.tab.final) ))




result_c<-rbind(resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )

result_c_test <- bold.cond(result_c,abs(result_c) > w.in.num )


cfi.tab.pre <- rbind(n200.nam, result_c_test[1:4,],n500.nam, result_c_test[5:8,] , n1000.nam, result_c_test[9:12,], n1000000.nam, result_c_test[13:16,])
cfi.tab.final <- cbind(rownam,cfi.tab.pre)

colnames(cfi.tab.final) <- colnam
cfi.tab.final 


print(xtable(cfi.tab.final, auto=T, label="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_dif_c", 
             caption="Simulation Study 2 Condition"), 
      sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
      hline.after = c(-1, 0, 5, 10,15,nrow(cfi.tab.final) ))


