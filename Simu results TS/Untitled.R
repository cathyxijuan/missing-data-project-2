caption.before=" "
caption.after=" "
label.name="test"


resultn200 <- fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n200_dif
resultn500 <-  fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n500_dif
resultn1000 <- fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000_dif
resultn1000000 <-  fitMCAR_20PerMiss_2VarMiss_1CR_SF_ts_n1000000_dif
w.in.num <- 0.01
rownam <- c(" ", rep(c(" ","FIML", "TS w/o SSC", "TS w/ SSC V1", "TS w/ SSC V2"), 4))
colnam <- c(" ", rep(paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep=""),3))
resultn200_r <- resultn200[1:4, ]
resultn500_r <- resultn500[1:4, ]
resultn1000_r <- resultn1000[1:4,]
resultn1000000_r <- resultn1000000[1:4,]
resultn200_c <- resultn200[5:8,]
resultn500_c <- resultn500[5:8, ]
resultn1000_c <- resultn1000[5:8, ]
resultn1000000_c <- resultn1000000[5:8,  ]


fc.nam <-c( c(rep(" ", 2), "FC=0", rep(" ", 2)),
            c(rep(" ", 2), "FC=0.4", rep(" ", 2)),
            c(rep(" ", 2), "FC=0.8", rep(" ", 2)))
n200.nam <- c(rep(" ", 2), "n=200", rep(" ", 2))
n500.nam <- c(rep(" ", 2), "n=500", rep(" ", 2))
n1000.nam <- c(rep(" ", 2), "n=1000", rep(" ", 2))
n1000000.nam <- c(rep(" ", 2), "n=1000000", rep(" ", 2))
#RMSEA
result_r<-rbind(resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )


result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )


rmsea.tab.pre <- rbind(fc.nam, n200.nam, result_r_test[1:4,],
                       n500.nam, result_r_test[5:8,] ,
                       n1000.nam, result_r_test[9:12,],
                       n1000000.nam, result_r_test[13:16,])



rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)


colnames(rmsea.tab.final) <- colnam



comment <- list(pos = list(0))
comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
comment$command <-paste0("\\hline \n \\multicolumn{15}{l}",
                         "{\\footnotesize{Note: Bold values are those with raw bias beyond $\\pm 0.01.$ FIML=Full information maximum likelihood;}} \\\\",
                         "\n \\multicolumn{15}{l}",
                         "{\\footnotesize{TS=Two-stage; CR=Correlated Residual; FC=Factor Correlation; SSC=Small sample correction;}} \\\\",
                         "\n \\multicolumn{15}{l}",
                         "{\\footnotesize{TS w/o SSC=TS without SSC; TS w/ SSC V1-V2=TS with SSC versions 1-2.}} \\\\ \n")



print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea", sep="."), align="llccccc|ccccc|ccccc",
             caption=paste0(caption.before, " RMSEA Comparing TS to FIML Method
                            \\newline Simulation Study 1 Condition: ", caption.after)),
      sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
      hline.after = c(-1, 1, 6, 11,16), add.to.row=comment, floating=T, floating.environment = "sidewaystable")






result_c<-rbind(resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )


result_c_test <- bold.cond(result_c, abs(result_c) > w.in.num )



cfi.tab.pre <- rbind(fc.nam,n200.nam, result_c_test[1:4,],
                     n500.nam, result_c_test[5:8,] ,
                     n1000.nam, result_c_test[9:12,],
                     n1000000.nam, result_c_test[13:16,])

cfi.tab.final <- cbind(rownam,cfi.tab.pre)

colnames(cfi.tab.final) <- colnam



print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi", sep="."), align="llccccc|ccccc|ccccc",
             caption=paste0(caption.before, " CFI Comparing TS to FIML Method
                            \\newline Simulation Study 1 Condition: ", caption.after)),
      sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
      hline.after = c(-1, 0, 5, 10,15), add.to.row=comment, floating=T, floating.environment = "sidewaystable")




ts.s1.table <- function(result.n200, result.n500, result.n1000, result.n1000000, 
                        label.name="test", caption.before=" ", caption.after=" "){

  resultn200 <- result.n200
  resultn500 <-  result.n500
  resultn1000 <- result.n1000
  resultn1000000 <-  result.n1000000
  w.in.num <- 0.01
  rownam <- c(" ", rep(c(" ","FIML", "TS w/o SSC", "TS w/ SSC V1", "TS w/ SSC V2"), 4))
  colnam <- c(" ", rep(paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep=""),3))
  resultn200_r <- resultn200[1:4, ]
  resultn500_r <- resultn500[1:4, ]
  resultn1000_r <- resultn1000[1:4,]
  resultn1000000_r <- resultn1000000[1:4,]
  resultn200_c <- resultn200[5:8,]
  resultn500_c <- resultn500[5:8, ]
  resultn1000_c <- resultn1000[5:8, ]
  resultn1000000_c <- resultn1000000[5:8,  ]
  
  
  fc.nam <-c( c(rep(" ", 2), "FC=0", rep(" ", 2)),
              c(rep(" ", 2), "FC=0.4", rep(" ", 2)),
              c(rep(" ", 2), "FC=0.8", rep(" ", 2)))
  n200.nam <- c(rep(" ", 2), "n=200", rep(" ", 2))
  n500.nam <- c(rep(" ", 2), "n=500", rep(" ", 2))
  n1000.nam <- c(rep(" ", 2), "n=1000", rep(" ", 2))
  n1000000.nam <- c(rep(" ", 2), "n=1000000", rep(" ", 2))
  #RMSEA
  result_r<-rbind(resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
  
  
  result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
  
  
  rmsea.tab.pre <- rbind(fc.nam, n200.nam, result_r_test[1:4,],
                         n500.nam, result_r_test[5:8,] ,
                         n1000.nam, result_r_test[9:12,],
                         n1000000.nam, result_r_test[13:16,])
  
  
  
  rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
  
  
  colnames(rmsea.tab.final) <- colnam
  
  
  
  comment <- list(pos = list(0))
  comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
  comment$command <-paste0("\\hline \n \\multicolumn{15}{l}",
                           "{\\footnotesize{Note: Bold values are those with raw bias beyond $\\pm 0.01.$ FIML=Full information maximum likelihood;}} \\\\",
                           "\n \\multicolumn{15}{l}",
                           "{\\footnotesize{TS=Two-stage; CR=Correlated Residual; FC=Factor Correlation; SSC=Small sample correction;}} \\\\",
                           "\n \\multicolumn{15}{l}",
                           "{\\footnotesize{TS w/o SSC=TS without SSC; TS w/ SSC V1-V2=TS with SSC versions 1-2.}} \\\\ \n")
  
  
  
  print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea", sep="."), align="llccccc|ccccc|ccccc",
               caption=paste0(caption.before, " RMSEA Comparing TS to FIML Method
                              \\newline Simulation Study 1 Condition: ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 1, 6, 11,16), add.to.row=comment, floating=T, floating.environment = "sidewaystable")
  
  
  
  
  
  
  result_c<-rbind(resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
  
  
  result_c_test <- bold.cond(result_c, abs(result_c) > w.in.num )
  
  
  
  cfi.tab.pre <- rbind(fc.nam,n200.nam, result_c_test[1:4,],
                       n500.nam, result_c_test[5:8,] ,
                       n1000.nam, result_c_test[9:12,],
                       n1000000.nam, result_c_test[13:16,])
  
  cfi.tab.final <- cbind(rownam,cfi.tab.pre)
  
  colnames(cfi.tab.final) <- colnam
  
  
  
  print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi", sep="."), align="llccccc|ccccc|ccccc",
               caption=paste0(caption.before, " CFI Comparing TS to FIML Method
                              \\newline Simulation Study 1 Condition: ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 5, 10,15), add.to.row=comment, floating=T, floating.environment = "sidewaystable")
  
  
  
  
  
  
  
}


