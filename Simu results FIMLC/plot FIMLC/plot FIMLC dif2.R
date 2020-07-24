source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC dif.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/plot FIMLC")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)






######## Third graph: Graphing study 2 columns ###########

###RMSEA###

color.pat <- c("royalblue2", "gold2", 
               "red","darkorchid3", "magenta" , 
               "springgreen4",  "cyan3", "steelblue2")





cond1 <-fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif
cond2 <- fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif
cond3 <- fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif
cond4 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif
cond5 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif
cond6 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif




row.num <- 1:8 #rows for rmsea
col.num <- 1:9
ver.num <- 8
sample.num <- 3
col.graph.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
row.name <- rep(c("FIML", 
                  "FIML-C V0", 
                  "FIML-C V1",
                  "FIML-C V2",
                  "FIML-C V3",
                  "FIML-C V4",
                  "FIML-C V5",
                  "FIML-C V6"),cond.num)

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
  scale_y_continuous(limits = c(-0.08,0.08))+ 
  theme_bw() + scale_color_manual(values=color.pat)+scale_x_reverse()+
  scale_shape_manual(values=seq(1,8))+theme(legend.position = "none")+
  scale_linetype_manual(values=1:8)








####CFI###
row.num <- 9:16 #rows for cfi
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
  scale_y_continuous(limits = c(-0.2, 0.2))+ 
  theme_bw()+ scale_color_manual(values=color.pat)+scale_x_reverse()+
  scale_shape_manual(values=1:8)+scale_linetype_manual(values=1:8)



