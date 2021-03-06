source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/plot TS")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)


########### MCAR study 1#########


#############First Graph : Graphing study 1######

###RMSEA###
cond1 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n200_dif
cond2 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n500_dif
cond3 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000_dif
cond4 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_dif
cond5 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif
cond6 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif
cond7 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif
cond8 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_dif
row.num <- 1:4 #rows for rmzsea
col.num <- 11:15 #col for FC=0.8
ver.num <- 4
sample.num <- 4
missing.num <- 2
misfit.num <- length(col.num)
cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]
cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]
cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]
cond.matrix7 <- cond7[row.num ,col.num]
cond.matrix8 <- cond8[row.num ,col.num]

rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, 
                    cond.matrix5, cond.matrix6,cond.matrix7, cond.matrix8)

colnames(rmsea_wide) <-  c(0, 0.1, 0.2, 0.3, 0.4)
rownames(rmsea_wide)<-rep(c("FIML", 
                          "TS  without SSC", 
                          "TS with SSC V1",
                          "TS with SSC V2"),8)
rmsea_long <- melt(rmsea_wide)

nr <- nrow(rmsea_long)
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
head(rmsea_long)
Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000", "n=1000000"), 
                           each=ver.num),missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c("Different Factors (DF)","Same Factor (SF)"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)
rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)
colnames(rmsea_long)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.1, 0.1))+ 
  theme_bw() + scale_color_jco()+
  scale_shape_manual(values=seq(1,9))+ theme(legend.position = "none")




####CFI###
row.num <- 5:8 #rows for cfi
cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]
cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]
cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]
cond.matrix7 <- cond7[row.num ,col.num]
cond.matrix8 <- cond8[row.num ,col.num]


cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6,
                  cond.matrix7,  cond.matrix8)

colnames(cfi_wide) <-  c(0, 0.1, 0.2, 0.3, 0.4)
rownames(cfi_wide)<-rep(c("FIML", 
                          "TS  without SSC", 
                          "TS with SSC V1",
                          "TS with SSC V2"),8)

row.names(cfi_wide)
#View(cfi_wide)
cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version", "Size_of_CR", "CFI")
head(cfi_long)

length(Sample_Size)
cfi_long$Sample_Size <- as.factor(Sample_Size)
length(Percentage_of_Missing)

cfi_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)

cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.1, 0.1))+ 
  theme_bw()  + scale_color_jco() +
  scale_shape_manual(values=seq(1,9))























######## Third graph: Graphing study 2###########

###RMSEA###
row.num <- 1:4 #rows for rmsea
col.num <- 1:9
ver.num <- 4
sample.num <- 4
missing.num <- 3
misfit.num <- length(col.num)
cond.matrix1 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_dif[row.num ,col.num]
cond.matrix2 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_dif[row.num ,col.num]
cond.matrix3 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_dif[row.num ,col.num]
cond.matrix4 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_dif[row.num ,col.num]
cond.matrix5 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_dif[row.num ,col.num]
cond.matrix6 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_dif[row.num ,col.num]
cond.matrix7 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_dif[row.num ,col.num]
cond.matrix8 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_dif[row.num ,col.num]
cond.matrix9 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_dif[row.num ,col.num]
cond.matrix10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_dif[row.num ,col.num]
cond.matrix11 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif[row.num ,col.num]
cond.matrix12 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif[row.num ,col.num]

rmsea_wide<- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                   cond.matrix5,  cond.matrix6,cond.matrix7,  cond.matrix8, 
                   cond.matrix9, cond.matrix10, cond.matrix11,cond.matrix12)
colnames(rmsea_wide) <-  c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
rownames(rmsea_wide)<-rep(c("FIML", 
                            "TS  without SSC", 
                            "TS with SSC V1",
                            "TS with SSC V2"),12)
#View(rmsea_wide)
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version","Size_of_CR", "RMSEA")
head(rmsea_long)

Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000", "n=1000000"), each=ver.num),missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c(" Two variables with missing",
                                   "Four variables with missing",
                                   "Six variables with missing"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)

rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)


rmsea_long
colnames(rmsea_long)


ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.15, 0.15))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))





####CFI###
row.num <- 5:8 #rows for cfi
cond.matrix1 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_dif[row.num ,col.num]
cond.matrix2 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_dif[row.num ,col.num]
cond.matrix3 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_dif[row.num ,col.num]
cond.matrix4 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_dif[row.num ,col.num]
cond.matrix5 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_dif[row.num ,col.num]
cond.matrix6 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_dif[row.num ,col.num]
cond.matrix7 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_dif[row.num ,col.num]
cond.matrix8 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_dif[row.num ,col.num]
cond.matrix9 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_dif[row.num ,col.num]
cond.matrix10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_dif[row.num ,col.num]
cond.matrix11 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif[row.num ,col.num]
cond.matrix12 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif[row.num ,col.num]


cfi_wide <- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                  cond.matrix5,  cond.matrix6,cond.matrix7,  cond.matrix8, 
                  cond.matrix9, cond.matrix10, cond.matrix11,cond.matrix12)

colnames(cfi_wide) <-  c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
rownames(cfi_wide)<-rep(c("FIML", 
                            "TS  without SSC", 
                            "TS with SSC V1",
                            "TS with SSC V2"),12)
row.names(cfi_wide)
#View(cfi_wide)
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
  scale_y_continuous(limits = c(-0.25, 0.25))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))

























######## fourth graph: Graphing study 2 with two columns###########

###RMSEA###
cond1 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_dif
cond2 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_dif
cond3 <-fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_dif
cond4 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_dif
cond5 <-fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond6 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond7 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif
cond8 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
row.num <- 1:4 #rows for rmsea
col.num <- 1:9
ver.num <- 4
sample.num <- 4
missing.num <- 2
misfit.num <- length(col.num)
cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]
cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]

cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]
cond.matrix7 <- cond7[row.num ,col.num]
cond.matrix8 <- cond8[row.num ,col.num]
cond.num <- 8
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
row.name <- rep(c("FIML", 
                  "TS  without SSC", 
                  "TS with SSC V1",
                  "TS with SSC V2"),cond.num)
rmsea_wide<- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                   cond.matrix5,  cond.matrix6,cond.matrix7,  cond.matrix8)
colnames(rmsea_wide) <-  col.name
rownames(rmsea_wide)<-row.name 



rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version","Size_of_CR", "RMSEA")
head(rmsea_long)

Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000", "n=1000000"), each=ver.num),missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c("Four variables with missing",
                                   "Six variables with missing"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)

rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)


rmsea_long
colnames(rmsea_long)


ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.12, 0.12))+ 
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
cond.matrix7 <- cond7[row.num ,col.num]
cond.matrix8 <- cond8[row.num ,col.num]


cfi_wide <- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                  cond.matrix5,  cond.matrix6,cond.matrix7,  cond.matrix8)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide)<-row.name
row.names(cfi_wide)
#View(cfi_wide)
cfi_long <- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version","Size_of_CR", "CFI")
head(cfi_long)

cfi_long$Sample_Size <- as.factor(Sample_Size)

cfi_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)




ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.25, 0.25))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))





















##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
# cond1 <- fitMCAR_MinPat_50PerMiss_4VarMiss_WM_ts_n500_dif
# cond2 <-fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_ts_n500_dif
# cond3 <-fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_ts_n500_dif
# cond4 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_dif
# cond5 <- fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_ts_n500_dif
# cond6 <- fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_ts_n500_dif


cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_dif

cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_dif

cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000_dif
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000_dif
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000_dif
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif


cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif

# cond1 <- fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000000_dif
# cond2 <-fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000000_dif
# cond3 <-fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000000_dif
# cond4 <- fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000000_dif
# cond5 <- fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n1000000_dif
# cond6 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000000_dif

row.num <- 1:4 #rows for rmsea
col.num <- 1:9
ver.num <- 4
miss.mech.num <- 3 #sample to miss.mech
pat.num <- 2 #missing to pat
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
colnames(rmsea_long) <- c("Version","Size_of_CF", "RMSEA")
head(rmsea_long)

Missing_Mechanism <- rep(rep(rep(c(" MCAR", " Weak MAR", "Strong MAR"), each=ver.num),pat.num),misfit.num)

rmsea_long$Missing_Mechanism <- as.factor(Missing_Mechanism)
Number_of_Patterns <- rep(rep(c( " Small number of patterns",
                                 "Large number of patterns"), each=ver.num*miss.mech.num),misfit.num)
length(Number_of_Patterns)

rmsea_long$Number_of_Patterns <- as.factor(Number_of_Patterns)


rmsea_long
colnames(rmsea_long)


ggplot(rmsea_long, aes(x=Size_of_CF, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Missing_Mechanism~Number_of_Patterns) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.12, 0.12))+ 
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
colnames(cfi_long) <- c("Version","Size_of_CF", "CFI")
head(cfi_long)

cfi_long$Missing_Mechanism <- as.factor(Missing_Mechanism)

cfi_long$Number_of_Patterns <- as.factor(Number_of_Patterns)

cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CF, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Missing_Mechanism~Number_of_Patterns) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.25, 0.25))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))




















##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########
##########interaction between patterns and missing mechanism ########


cond1 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond2 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond3 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond4 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond5 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
cond6 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif

cond7 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond8 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_dif
cond9 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond10 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_dif
cond11<- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif
cond12<- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_dif


row.num <- 1:4 #rows for rmsea
col.num <- 1:9
ver.num <- 4
miss.mech.num <- 6 #sample to miss.mech
pat.num <- 2 #missing to pat
misfit.num <- length(col.num)
cond.num <- 12
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
cond.matrix7 <- cond7[row.num ,col.num]
cond.matrix8 <- cond8[row.num ,col.num]

cond.matrix9 <- cond9[row.num ,col.num]
cond.matrix10 <- cond10[row.num ,col.num]
cond.matrix11 <- cond11[row.num ,col.num]
cond.matrix12 <- cond12[row.num ,col.num]



rmsea_wide<- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, 
                   cond.matrix5, cond.matrix6,cond.matrix7, cond.matrix8,
                   cond.matrix9, cond.matrix10,cond.matrix11, cond.matrix12)




colnames(rmsea_wide) <-  col.name
rownames(rmsea_wide)<-row.name
head(rmsea_wide)
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version","Size_of_CF", "RMSEA")
head(rmsea_long)

Missing_Mechanism <- rep(rep(rep(c("   Weak MAR \n(n=200)", " Strong MAR \n(n=200)", 
                                   "   Weak MAR \n(n=500)", " Strong MAR \n(n=500)", 
                                   "  Weak MAR \n(n=1000000)", "Strong MAR \n (n=1000000)"), each=ver.num),pat.num),misfit.num)

rmsea_long$Missing_Mechanism <- as.factor(Missing_Mechanism)
Number_of_Patterns <- rep(rep(c( " Small number of patterns",
                                 "Large number of patterns"), each=ver.num*miss.mech.num),misfit.num)
length(Number_of_Patterns)

rmsea_long$Number_of_Patterns <- as.factor(Number_of_Patterns)


rmsea_long
colnames(rmsea_long)


ggplot(rmsea_long, aes(x=Size_of_CF, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Missing_Mechanism~Number_of_Patterns) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.125, 0.125))+ 
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
cond.matrix7 <- cond7[row.num ,col.num]
cond.matrix8 <- cond8[row.num ,col.num]

cond.matrix9 <- cond9[row.num ,col.num]
cond.matrix10 <- cond10[row.num ,col.num]
cond.matrix11 <- cond11[row.num ,col.num]
cond.matrix12 <- cond12[row.num ,col.num]




cfi_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, 
                     cond.matrix5, cond.matrix6,cond.matrix7, cond.matrix8,
                     cond.matrix9, cond.matrix10,cond.matrix11, cond.matrix12)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide)<-row.name
row.names(cfi_wide)

cfi_long <- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version","Size_of_CF", "CFI")
head(cfi_long)

cfi_long$Missing_Mechanism <- as.factor(Missing_Mechanism)

cfi_long$Number_of_Patterns <- as.factor(Number_of_Patterns)

cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CF, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Missing_Mechanism~Number_of_Patterns) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.32, 0.32))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))



