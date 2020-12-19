fimlc.s1.table2 <- function(result.n150, result.n200, result.n500, result.n1000, result.n1000000, 
                           label.name="test", caption.before=" ", caption.after=" ",  w.in.num = 0.01, 
                           bold.note="Bold values are those with raw bias beyond $\\pm 0.01.$"){
  
  rownam <- rep(c(" ","FIML", "FIML-C V0", 
                  "FIML-C V1", "FIML-C V2",
                  "FIML-C V3", "FIML-C V4",
                  "FIML-C V5", "FIML-C V6"), 5)
  colnam <- c(" ", paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep=""))
  resultn150 <- result.n150
  resultn200 <- result.n200
  resultn500 <-  result.n500
  resultn1000 <- result.n1000
  resultn1000000 <-  result.n1000000
  resultn150_r <- resultn150[1:8,1:5 ]
  resultn200_r <- resultn200[1:8,1:5 ]
  resultn500_r <- resultn500[1:8, 1:5]
  resultn1000_r <- resultn1000[1:8, 1:5]
  resultn1000000_r <- resultn1000000[1:8,1:5 ]
  resultn150_c <- resultn150[9:16,1:5 ]
  resultn200_c <- resultn200[9:16,1:5 ]
  resultn500_c <- resultn500[9:16, 1:5]
  resultn1000_c <- resultn1000[9:16, 1:5]
  resultn1000000_c <- resultn1000000[9:16,1:5 ]
  
  resultn150_r2 <- resultn150[1:8,6:10 ]
  resultn200_r2 <- resultn200[1:8,6:10 ]
  resultn500_r2 <- resultn500[1:8, 6:10]
  resultn1000_r2 <- resultn1000[1:8, 6:10]
  resultn1000000_r2 <- resultn1000000[1:8,6:10 ]
  resultn150_c2 <- resultn150[9:16,6:10 ]
  resultn200_c2 <- resultn200[9:16,6:10 ]
  resultn500_c2 <- resultn500[9:16, 6:10]
  resultn1000_c2 <- resultn1000[9:16, 6:10]
  resultn1000000_c2 <- resultn1000000[9:16, 6:10]
  
  resultn150_r3 <- resultn150[1:8,11:15 ]
  resultn200_r3 <- resultn200[1:8,11:15 ]
  resultn500_r3 <- resultn500[1:8, 11:15]
  resultn1000_r3 <- resultn1000[1:8, 11:15]
  resultn1000000_r3 <- resultn1000000[1:8,11:15 ]
  resultn150_c3 <- resultn150[9:16,11:15 ]
  resultn200_c3 <- resultn200[9:16,11:15 ]
  resultn500_c3 <- resultn500[9:16, 11:15]
  resultn1000_c3 <- resultn1000[9:16, 11:15]
  resultn1000000_c3 <- resultn1000000[9:16, 11:15]
  
  n150.nam <- c(rep(" ", 2), "n=150", rep(" ", 2))
  n200.nam <- c(rep(" ", 2), "n=200", rep(" ", 2))
  n500.nam <- c(rep(" ", 2), "n=500", rep(" ", 2))
  n1000.nam <- c(rep(" ", 2), "n=1000", rep(" ", 2))
  n1000000.nam <- c(rep(" ", 2), "n=1000000", rep(" ", 2))
  #RMSEA
  result_r<-rbind(resultn150_r, resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
  result_r2<-rbind(resultn150_r2, resultn200_r2,resultn500_r2,  resultn1000_r2,resultn1000000_r2 )
  result_r3<-rbind(resultn150_r3,resultn200_r3,resultn500_r3,  resultn1000_r3,resultn1000000_r3 )
  
  result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
  result_r2_test <- bold.cond(result_r2,abs(result_r2) > w.in.num )
  result_r3_test <- bold.cond(result_r3,abs(result_r3) > w.in.num )
  
  rmsea.tab.pre <- rbind(n150.nam, result_r_test[1:8,],
                         n200.nam, result_r_test[9:16,],
                         n500.nam, result_r_test[17:24,] ,
                         n1000.nam, result_r_test[25:32,],
                         n1000000.nam, result_r_test[33:40,])
  rmsea.tab.pre2 <- rbind(n150.nam, result_r2_test[1:8,],
                          n200.nam, result_r2_test[9:16,],
                          n500.nam, result_r2_test[17:24,] ,
                          n1000.nam, result_r2_test[25:32,],
                          n1000000.nam, result_r2_test[33:40,])
  rmsea.tab.pre3 <- rbind(n200.nam, result_r3_test[1:8,],
                          n200.nam, result_r3_test[9:16,],
                          n500.nam, result_r3_test[17:24,] ,
                          n1000.nam, result_r3_test[25:32,],
                          n1000000.nam, result_r3_test[33:40,])
  
  
  rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
  rmsea.tab.final2 <- cbind(rownam,rmsea.tab.pre2)
  rmsea.tab.final3 <- cbind(rownam,rmsea.tab.pre3)
  
  colnames(rmsea.tab.final) <- colnam
  colnames(rmsea.tab.final2) <- colnam
  colnames(rmsea.tab.final3) <- colnam
  
  
  comment <- list(pos = list(0))
  comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
  comment$command <-paste0("\\hline \n \\multicolumn{6}{l}",
                           "{\\footnotesize{Note:", bold.note ,"}} \\\\",
                           "\n \\multicolumn{6}{l}",
                           "{\\footnotesize{CR=Correlated Residual.}} \\\\ \n")
  
  print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea.fc0", sep="."), align="llccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
  
  print(xtable(rmsea.tab.final2, auto=T, label=paste(label.name, "rmsea.fc0.4.", sep="."), align="llccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.4, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
  
  print(xtable(rmsea.tab.final3, auto=T, label=paste(label.name, "rmsea.fc0.8.", sep="."), align="llccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.8, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
  
  
  result_c<-rbind(resultn150_c, resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
  result_c2<-rbind(resultn150_c2,resultn200_c2,resultn500_c2,  resultn1000_c2,resultn1000000_c2 )
  result_c3<-rbind(resultn150_c3,resultn200_c3,resultn500_c3,  resultn1000_c3,resultn1000000_c3 )
  
  result_c_test <- bold.cond(result_c, abs(result_c) > w.in.num )
  result_c2_test <- bold.cond(result_c2, abs(result_c2) > w.in.num )
  result_c3_test <- bold.cond(result_c3, abs(result_c3) > w.in.num )
  
  
  cfi.tab.pre <- rbind(n150.nam, result_c_test[1:8,],
                       n200.nam, result_c_test[9:16,],
                       n500.nam, result_c_test[17:24,] ,
                       n1000.nam, result_c_test[25:32,],
                       n1000000.nam, result_c_test[33:40,])
  cfi.tab.pre2 <- rbind(n150.nam, result_c2_test[1:8,],
                        n200.nam, result_c2_test[9:16,],
                        n500.nam, result_c2_test[17:24,] ,
                        n1000.nam, result_c2_test[25:32,],
                        n1000000.nam, result_c2_test[33:40,])
  cfi.tab.pre3 <- rbind(n150.nam, result_c3_test[1:8,],
                        n200.nam, result_c3_test[9:16,],
                        n500.nam, result_c3_test[17:24,] ,
                        n1000.nam, result_c3_test[25:32,],
                        n1000000.nam, result_c3_test[33:40,])
  
  cfi.tab.final <- cbind(rownam,cfi.tab.pre)
  cfi.tab.final2 <- cbind(rownam,cfi.tab.pre2)
  cfi.tab.final3 <- cbind(rownam,cfi.tab.pre3)
  colnames(cfi.tab.final) <- colnam
  colnames(cfi.tab.final2) <- colnam
  colnames(cfi.tab.final3) <- colnam
  
  
  
  print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi.fc0", sep="."), align="llccccc",
               caption=paste0(caption.before, " CFI comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
  
  print(xtable(cfi.tab.final2, auto=T, label=paste(label.name, "cfi.fc0.4.", sep="."), align="llccccc",
               caption=paste0(caption.before, " CFI comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.4, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
  
  print(xtable(cfi.tab.final3, auto=T, label=paste(label.name, "cfi.fc0.8.", sep="."), align="llccccc",
               caption=paste0(caption.before, " CFI comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.8, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
}













fimlc.s2.table2 <- function(result.n150, result.n200, result.n500, result.n1000, result.n1000000, 
                           label.name="test", caption.before=" ", caption.after=" ", w.in.num = 0.01,
                           bold.note="Bold values are those with raw bias beyond $\\pm 0.01.$"){
  
  rownam <- rep(c(" ","FIML", "FIML-C V0", 
                  "FIML-C V1", "FIML-C V2",
                  "FIML-C V3", "FIML-C V4",
                  "FIML-C V5", "FIML-C V6"), 5)
  colnam <- c(" ", paste("FC=", c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.4, 0.2), sep=""))
  resultn150 <- result.n150
  resultn200 <- result.n200
  resultn200 <- result.n200
  resultn500 <-  result.n500
  resultn1000 <- result.n1000
  resultn1000000 <-  result.n1000000
  resultn150_r <- resultn150[1:8, ]
  resultn200_r <- resultn200[1:8, ]
  resultn500_r <- resultn500[1:8, ]
  resultn1000_r <- resultn1000[1:8, ]
  resultn1000000_r <- resultn1000000[1:8, ]
  resultn150_c <- resultn150[9:16, ]
  resultn200_c <- resultn200[9:16, ]
  resultn500_c <- resultn500[9:16, ]
  resultn1000_c <- resultn1000[9:16, ]
  resultn1000000_c <- resultn1000000[9:16, ]
  n150.nam <- c(rep(" ", 4), "n=150", rep(" ", 4))
  n200.nam <- c(rep(" ", 4), "n=200", rep(" ", 4))
  n500.nam <- c(rep(" ", 4), "n=500", rep(" ", 4))
  n1000.nam <- c(rep(" ", 4), "n=1000", rep(" ", 4))
  n1000000.nam <- c(rep(" ", 4), "n=1000000", rep(" ", 4))
  #RMSEA
  result_r<-rbind(resultn150_r,resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
  
  
  result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
  
  
  rmsea.tab.pre <- rbind(n150.nam, result_r_test[1:8,],
                         n200.nam, result_r_test[9:16,],
                         n500.nam, result_r_test[17:24,] , 
                         n1000.nam, result_r_test[25:32,], 
                         n1000000.nam, result_r_test[33:40,])
  rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
  
  colnames(rmsea.tab.final) <- colnam
  
  
  comment <- list(pos = list(0))
  comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
  comment$command <-paste0("\\hline \n \\multicolumn{10}{l}",
                           "{\\footnotesize{", bold.note ,"FC=Factor correlation.}} \\\\ \n")
  
  print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea", sep="."), align="llccccccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with FIML-C methods \\newline Study 2 condition:  ", caption.after)), 
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
  
  
  
  
  result_c<-rbind(resultn150_c,resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
  
  result_c_test <- bold.cond(result_c,abs(result_c) > w.in.num )
  
  
  cfi.tab.pre <- 
    cfi.tab.pre <- rbind(n150.nam, result_c_test[1:8,],
                         n200.nam, result_c_test[9:16,],
                         n500.nam, result_c_test[17:24,] , 
                         n1000.nam, result_c_test[25:32,],
                         n1000000.nam, result_c_test[33:40,])
  cfi.tab.final <- cbind(rownam,cfi.tab.pre)
  
  colnames(cfi.tab.final) <- colnam
  
  
  print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi", sep="."), align="llccccccccc",
               caption=paste0(caption.before, " CFI comparing FIML with FIML-C methods \\newline Study 2 condition:  ", caption.after)), 
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F, 
        hline.after = c(-1, 0, 9, 18,27,36), add.to.row=comment)
}













fimlc.s1.table <- function(result.n200, result.n500, result.n1000, result.n1000000, 
                           label.name="test", caption.before=" ", caption.after=" ",  w.in.num = 0.01, 
                           bold.note="Bold values are those with raw bias beyond $\\pm 0.01.$"){
  
  rownam <- rep(c(" ","FIML", "FIML-C V0", 
                  "FIML-C V1", "FIML-C V2",
                  "FIML-C V3", "FIML-C V4",
                  "FIML-C V5", "FIML-C V6"), 4)
  colnam <- c(" ", paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep=""))
  resultn200 <- result.n200
  resultn500 <-  result.n500
  resultn1000 <- result.n1000
  resultn1000000 <-  result.n1000000
  resultn200_r <- resultn200[1:8,1:5 ]
  resultn500_r <- resultn500[1:8, 1:5]
  resultn1000_r <- resultn1000[1:8, 1:5]
  resultn1000000_r <- resultn1000000[1:8,1:5 ]
  resultn200_c <- resultn200[9:16,1:5 ]
  resultn500_c <- resultn500[9:16, 1:5]
  resultn1000_c <- resultn1000[9:16, 1:5]
  resultn1000000_c <- resultn1000000[9:16,1:5 ]
  
  resultn200_r2 <- resultn200[1:8,6:10 ]
  resultn500_r2 <- resultn500[1:8, 6:10]
  resultn1000_r2 <- resultn1000[1:8, 6:10]
  resultn1000000_r2 <- resultn1000000[1:8,6:10 ]
  resultn200_c2 <- resultn200[9:16,6:10 ]
  resultn500_c2 <- resultn500[9:16, 6:10]
  resultn1000_c2 <- resultn1000[9:16, 6:10]
  resultn1000000_c2 <- resultn1000000[9:16, 6:10]
  
  resultn200_r3 <- resultn200[1:8,11:15 ]
  resultn500_r3 <- resultn500[1:8, 11:15]
  resultn1000_r3 <- resultn1000[1:8, 11:15]
  resultn1000000_r3 <- resultn1000000[1:8,11:15 ]
  resultn200_c3 <- resultn200[9:16,11:15 ]
  resultn500_c3 <- resultn500[9:16, 11:15]
  resultn1000_c3 <- resultn1000[9:16, 11:15]
  resultn1000000_c3 <- resultn1000000[9:16, 11:15]
  
  n200.nam <- c(rep(" ", 2), "n=200", rep(" ", 2))
  n500.nam <- c(rep(" ", 2), "n=500", rep(" ", 2))
  n1000.nam <- c(rep(" ", 2), "n=1000", rep(" ", 2))
  n1000000.nam <- c(rep(" ", 2), "n=1000000", rep(" ", 2))
  #RMSEA
  result_r<-rbind(resultn200_r,resultn500_r,  resultn1000_r,resultn1000000_r )
  result_r2<-rbind(resultn200_r2,resultn500_r2,  resultn1000_r2,resultn1000000_r2 )
  result_r3<-rbind(resultn200_r3,resultn500_r3,  resultn1000_r3,resultn1000000_r3 )
  
  result_r_test <- bold.cond(result_r,abs(result_r) > w.in.num )
  result_r2_test <- bold.cond(result_r2,abs(result_r2) > w.in.num )
  result_r3_test <- bold.cond(result_r3,abs(result_r3) > w.in.num )
  
  rmsea.tab.pre <- rbind(n200.nam, result_r_test[1:8,],
                         n500.nam, result_r_test[9:16,] ,
                         n1000.nam, result_r_test[17:24,],
                         n1000000.nam, result_r_test[25:32,])
  rmsea.tab.pre2 <- rbind(n200.nam, result_r2_test[1:8,],
                          n500.nam, result_r2_test[9:16,] ,
                          n1000.nam, result_r2_test[17:24,],
                          n1000000.nam, result_r2_test[25:32,])
  rmsea.tab.pre3 <- rbind(n200.nam, result_r3_test[1:8,],
                          n500.nam, result_r3_test[9:16,] ,
                          n1000.nam, result_r3_test[17:24,],
                          n1000000.nam, result_r3_test[25:32,])
  
  
  rmsea.tab.final <- cbind(rownam,rmsea.tab.pre)
  rmsea.tab.final2 <- cbind(rownam,rmsea.tab.pre2)
  rmsea.tab.final3 <- cbind(rownam,rmsea.tab.pre3)
  
  colnames(rmsea.tab.final) <- colnam
  colnames(rmsea.tab.final2) <- colnam
  colnames(rmsea.tab.final3) <- colnam
  
  
  comment <- list(pos = list(0))
  comment$pos[[1]] <- c(nrow( rmsea.tab.final ))
  comment$command <-paste0("\\hline \n \\multicolumn{6}{l}",
                           "{\\footnotesize{Note:", bold.note ,"}} \\\\",
                           "\n \\multicolumn{6}{l}",
                           "{\\footnotesize{CR=Correlated Residual.}} \\\\ \n")
  
  print(xtable(rmsea.tab.final, auto=T, label=paste(label.name, "rmsea.fc0", sep="."), align="llccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
  
  print(xtable(rmsea.tab.final2, auto=T, label=paste(label.name, "rmsea.fc0.4.", sep="."), align="llccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.4, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
  
  print(xtable(rmsea.tab.final3, auto=T, label=paste(label.name, "rmsea.fc0.8.", sep="."), align="llccccc",
               caption=paste0(caption.before, " RMSEA comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.8, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
  
  
  result_c<-rbind(resultn200_c,resultn500_c,  resultn1000_c,resultn1000000_c )
  result_c2<-rbind(resultn200_c2,resultn500_c2,  resultn1000_c2,resultn1000000_c2 )
  result_c3<-rbind(resultn200_c3,resultn500_c3,  resultn1000_c3,resultn1000000_c3 )
  
  result_c_test <- bold.cond(result_c, abs(result_c) > w.in.num )
  result_c2_test <- bold.cond(result_c2, abs(result_c2) > w.in.num )
  result_c3_test <- bold.cond(result_c3, abs(result_c3) > w.in.num )
  
  
  cfi.tab.pre <- rbind(n200.nam, result_c_test[1:8,],
                       n500.nam, result_c_test[9:16,] ,
                       n1000.nam, result_c_test[17:24,],
                       n1000000.nam, result_c_test[25:32,])
  cfi.tab.pre2 <- rbind(n200.nam, result_c2_test[1:8,],
                        n500.nam, result_c2_test[9:16,] ,
                        n1000.nam, result_c2_test[17:24,],
                        n1000000.nam, result_c2_test[25:32,])
  cfi.tab.pre3 <- rbind(n200.nam, result_c3_test[1:8,],
                        n500.nam, result_c3_test[9:16,] ,
                        n1000.nam, result_c3_test[17:24,],
                        n1000000.nam, result_c3_test[25:32,])
  
  cfi.tab.final <- cbind(rownam,cfi.tab.pre)
  cfi.tab.final2 <- cbind(rownam,cfi.tab.pre2)
  cfi.tab.final3 <- cbind(rownam,cfi.tab.pre3)
  colnames(cfi.tab.final) <- colnam
  colnames(cfi.tab.final2) <- colnam
  colnames(cfi.tab.final3) <- colnam
  
  
  
  print(xtable(cfi.tab.final, auto=T, label=paste(label.name, "cfi.fc0", sep="."), align="llccccc",
               caption=paste0(caption.before, " CFI comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
  
  print(xtable(cfi.tab.final2, auto=T, label=paste(label.name, "cfi.fc0.4.", sep="."), align="llccccc",
               caption=paste0(caption.before, " CFI comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.4, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
  
  print(xtable(cfi.tab.final3, auto=T, label=paste(label.name, "cfi.fc0.8.", sep="."), align="llccccc",
               caption=paste0(caption.before, " CFI comparing FIML with FIML-C methods 
                              \\newline Study 1 condition: factor correlation of 0.8, ", caption.after)),
        sanitize.text.function=function(x){x}, size="\\small",  caption.placement = "top", include.rownames = F,
        hline.after = c(-1, 0, 9, 18,27), add.to.row=comment)
}



