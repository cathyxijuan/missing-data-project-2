source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS rmse.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/plot TS")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)



######## Third graph: Graphing study 2 columns ###########

###RMSEA###

cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_rmse
cond2 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n500_rmse
cond3 <-fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse
cond4 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse
cond5 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse
cond6 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse

row.num <- 1:4 #rows for rmsea
col.num <- 1:9
ver.num <- 4
sample.num <- 3
graph.col.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
row.name <- rep(c("FIML", 
                  "TS  without SSC", 
                  "TS with SSC V1",
                  "TS with SSC V2"),cond.num)

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
head(rmsea_wide)
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version","Size_of_CR", "RMSEA")
head(rmsea_long)

Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000"), each=ver.num),graph.col.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c( "MCAR",
                                    "Weak MAR"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)

rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)




ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.1))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))+theme(legend.position = "none")

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.065))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))+theme(legend.position = "none")


####CFI###
row.num <- 5:8 #rows for cfi
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
head(cfi_long)

cfi_long$Sample_Size <- as.factor(Sample_Size)

cfi_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)

cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.2))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))



ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.1))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))
















