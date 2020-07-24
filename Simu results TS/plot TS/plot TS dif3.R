source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/plot TS")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)

######## Third graph: Graphing study 2 columns ###########

###RMSEA###
row.ind <- c(  "rmsea.cor.str" ,"rmsea.cor.unstr" ,  
               "cfi.cor.str" ,"cfi.cor.unstr" )
color.pat <- c( "red", 
                "springgreen4")

cond1 <-fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n200_dif[row.ind, ]
cond2 <- fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n500_dif[row.ind, ]
cond3 <- fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000_dif[row.ind, ]
cond4 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_dif[row.ind, ]
cond5 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_dif[row.ind, ]
cond6 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000_dif[row.ind, ]



row.num <- 1:2 #rows for rmsea
col.num <- 1:9
ver.num <- 2
sample.num <- 3
col.graph.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
row.name <- rep(c("TS V1",
                  "TS V2"),cond.num)

cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]
cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]
cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]




rmsea_wide<- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                   cond.matrix5,  cond.matrix6)
colnames(rmsea_wide) <-  col.name
rownames(rmsea_wide)<-row.name

rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version","Size_of_CR", "RMSEA")


Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000"), each=ver.num),col.graph.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
col_graph_var <- rep(rep(c( "20% Missing Data",
                            "50% Missing Data"), each=ver.num*sample.num),misfit.num)


rmsea_long$col_graph_var  <- as.factor(col_graph_var )




ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~col_graph_var ) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.03, 0.03))+ 
  theme_bw() + scale_color_manual(values=color.pat)+scale_x_reverse()+
  scale_shape_manual(values=c(3,5))+theme(legend.position = "none")+
  scale_linetype_manual(values=c(3,5))








####CFI###
row.num <- 3:4 #rows for cfi
cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]
cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]

cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]




cfi_wide <- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                  cond.matrix5,  cond.matrix6)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide)<-row.name
row.names(cfi_wide)

cfi_long <- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version","Size_of_CR", "CFI")


cfi_long$Sample_Size <- as.factor(Sample_Size)

cfi_long$col_graph_var  <- as.factor(col_graph_var )

ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~col_graph_var ) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.04, 0.04))+ 
  theme_bw() + scale_color_manual(values=color.pat)+ 
  scale_x_reverse()+scale_shape_manual(values=c(3,5))+
  scale_linetype_manual(values=c(3,5))
