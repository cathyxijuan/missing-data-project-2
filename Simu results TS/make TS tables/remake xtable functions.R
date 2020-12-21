ts.s1.table2 <- function(result.n150,result.n200, result.n500, result.n1000, result.n1000000, 
                        label.name="test", caption.before=" ", caption.after=" ", w.in.num = 0.01, 
                        bold.note="Bold values are those with raw bias beyond $\\pm 0.01.$"){
  
  resultn150 <- result.n150
  resultn200 <- result.n200
  resultn500 <-  result.n500
  resultn1000 <- result.n1000
  resultn1000000 <-  result.n1000000
  
  rownam <- c(" ", rep(c(" ","FIML", "TS V0", "TS V1", "TS V2"), 5))
  colnam <- c(" ", rep(paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep=""),3))
  resultn150_r <- resultn150[1:4, ]
   resultn200_r <- resultn200[1:4, ]
  resultn500_r <- resultn500[1:4, ]
  resultn1000_r <- resultn1000[1:4,]
  resultn1000000_r <- resultn1000000[1:4,]
  resultn150_c <- resultn150[5:8,]
  resultn200_c <- resultn200[5:8,]
  resultn500_c <- resultn500[5:8, ]
  resultn1000_c <- resultn1000[5:8, ]
  resultn1000000_c <- resultn1000000[5:8,  ]
  
  
  fc.nam <-c( c(rep(" ", 2), "FC=0", rep(" ", 2)),
              c(rep(" ", 2), "FC=0.4", rep(" ", 2)),
              c(rep(" ", 2), "FC=0.8", rep(" ", 2)))
  n150.nam <- c(rep(" ", 2), "n=150", rep(" ", 2))
  n200.nam <- c(rep(" ", 2), "n=200", rep(" ", 2))
  n500.nam <- c(rep(" ", 2), "n=500", rep(" ", 2))
  n1000.nam <- c(rep(" ", 2), "n=1000", rep(" ", 2))
  n1000000.nam <- c(rep(" ", 2), "n=1000000", rep(" ", 2))
  #RMSEA
  result_r<-rbind(resultn150_r,resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
  
  
  result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
  
  
  rmsea.tab.pre <- rbind(fc.nam, 
                         n150.nam, result_r_test[1:4,],
                         n200.nam, result_r_test[5:8,],
                         n500.nam, result_r_test[9:12,] ,
                         n1000.nam, result_r_test[13:16,],
                         n1000000.nam, result_r_test[17:20,])
  
  
  rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
  
  
  colnames(rmsea.tab.final) <- colnam
  
  comment <- list(pos = list(0))
  comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
  comment$command <-paste0("\\hline \n \\multicolumn{16}{l}",
                           "{\\footnotesize{Note:", bold.note ,"FC=Factor Correlation; CR=Correlated Residual;}} \\\\ \n")
  
  
  
  print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea", sep="."), align="llccccc|ccccc|ccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with TS methods
                              \\newline Study 1 condition: ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\footnotesize",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 1, 6, 11,16, 21), add.to.row=comment, floating=T, floating.environment = "sidewaystable")
  
  
  result_c<-rbind(resultn150_c,resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
  
  
  result_c_test <- bold.cond(result_c, abs(result_c) > w.in.num )
  
  
  
  cfi.tab.pre <- rbind(fc.nam,
                       n150.nam, result_c_test[1:4,],
                       n200.nam, result_c_test[5:8,],
                       n500.nam, result_c_test[9:12,] ,
                       n1000.nam, result_c_test[13:16,],
                       n1000000.nam, result_c_test[17:20,])
  
  cfi.tab.final <- cbind(rownam,cfi.tab.pre)
  
  colnames(cfi.tab.final) <- colnam
  
  
  print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi", sep="."), align="llccccc|ccccc|ccccc",
               caption=paste0(caption.before, " CFI comparing FIML with TS methods
                              \\newline Study 1 condition: ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\footnotesize",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 1, 6, 11,16,21), add.to.row=comment, floating=T, floating.environment = "sidewaystable")
  
}












ts.s2.table2 <- function(result.n150,result.n200, result.n500, result.n1000, result.n1000000, 
                        label.name="test", caption.before=" ", caption.after=" ", w.in.num = 0.01,
                        bold.note="Bold values are those with raw bias beyond $\\pm 0.01.$"){
  rownam <- rep(c(" ","FIML", "TS V0", "TS V1", "TS V2"), 5)
  colnam <- c(" ", paste("FC=", c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.4, 0.2), sep=""))
  resultn150 <- result.n150
  resultn200 <- result.n200
  resultn500 <-  result.n500
  resultn1000 <- result.n1000
  resultn1000000 <-  result.n1000000
  resultn150_r <- resultn150[1:4, ]
  resultn200_r <- resultn200[1:4, ]
  resultn500_r <- resultn500[1:4, ]
  resultn1000_r <- resultn1000[1:4, ]
  resultn1000000_r <- resultn1000000[1:4, ]
  resultn150_c <- resultn150[5:8, ]
  resultn200_c <- resultn200[5:8, ]
  resultn500_c <- resultn500[5:8, ]
  resultn1000_c <- resultn1000[5:8, ]
  resultn1000000_c <- resultn1000000[5:8, ]
  n150.nam <- c(rep(" ", 4), "n=150", rep(" ", 4))
  n200.nam <- c(rep(" ", 4), "n=200", rep(" ", 4))
  n500.nam <- c(rep(" ", 4), "n=500", rep(" ", 4))
  n1000.nam <- c(rep(" ", 4), "n=1000", rep(" ", 4))
  n1000000.nam <- c(rep(" ", 4), "n=1000000", rep(" ", 4))
  #RMSEA
  result_r<-rbind(resultn150_r,resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
  
  result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
  
  rmsea.tab.pre <- rbind(n150.nam, result_r_test[1:4,],
                         n200.nam, result_r_test[5:8,],
                         n500.nam, result_r_test[9:12,] , 
                         n1000.nam, result_r_test[13:16,], 
                         n1000000.nam, result_r_test[17:20,])
  rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
  
  colnames(rmsea.tab.final) <- colnam
  
  comment <- list(pos = list(0))
  comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
  comment$command <-paste0("\\hline \n \\multicolumn{10}{l}",
                           "{\\footnotesize{Note:", bold.note ,"FC=Factor correlation}} \\\\ \n")
  
  
  print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea", sep="."), align="llccccccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with TS methods \\newline Study 2 condition:  ", caption.after)), 
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
        hline.after = c(-1, 0, 5, 10,15,20), add.to.row=comment)
  
  result_c<-rbind(resultn150_c,resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
  
  result_c_test <- bold.cond(result_c,abs(result_c) > w.in.num )
  
  
  cfi.tab.pre <- rbind(n150.nam, result_c_test[1:4,],
                       n200.nam, result_c_test[5:8,],
                       n500.nam, result_c_test[9:12,] , 
                       n1000.nam, result_c_test[13:16,], 
                       n1000000.nam, result_c_test[17:20,])
  cfi.tab.final <- cbind(rownam,cfi.tab.pre)
  
  colnames(cfi.tab.final) <- colnam
  
  
  print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi", sep="."), align="llccccccccc",
               caption=paste0(caption.before, " CFI comparing FIML with TS methods \\newline Study 2 condition:  ", caption.after) ), 
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
        hline.after = c(-1, 0, 5, 10,15,20), add.to.row=comment )
  
}
