source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/compute TS means.R")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)


########### MCAR study 1#########


#############First Graph ######

###RMSEA###
row.num <- 1:4 #rows for rmsea
col.num <- 11:15 #col for FC=0.8
ver.num <- 5
sample.num <- 4
missing.num <- 2
misfit.num <- length(col.num)
pop.val <- fitNoMissing_2CR_SF_new[1,col.num]
cond.matrix1 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean[row.num ,col.num]
cond.matrix2 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean[row.num ,col.num]
cond.matrix3 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean[row.num ,col.num]
cond.matrix4 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean[row.num ,col.num]
cond.matrix5 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean[row.num ,col.num]
cond.matrix6 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean[row.num ,col.num]
cond.matrix7 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean[row.num ,col.num]
cond.matrix8 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean[row.num ,col.num]

rmsea_wide <- rbind(pop.val,cond.matrix1, 
                    pop.val, cond.matrix2, 
                    pop.val, cond.matrix3, 
                    pop.val, cond.matrix4, 
                    pop.val, cond.matrix5, 
                    pop.val, cond.matrix6,
                    pop.val, cond.matrix7, 
                    pop.val, cond.matrix8)

colnames(rmsea_wide) <-  c(0, 0.1, 0.2, 0.3, 0.4)

View(rmsea_wide)

rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
colnames(rmsea_long) <- c("Size_of_CR", "RMSEA")
View(rmsea_long)

Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000", "n=1000000"), each=ver.num),missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c("20% Missing","50% Missing"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)

rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)

Version <-rep( c(" Population Value", 
                 "FIML", 
                 "TS  without SSC", 
                 "TS with SSC V1",
                 "TS with SSC V2"), times=nr/ver.num)
length(Version)
rmsea_long$Version <- as.factor(Version)
rmsea_long
colnames(rmsea_long)


ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.20))+ 
  theme_bw() 





####CFI###
row.num <- 5:8#rows for cfi
col.num <- 11:15 #col for FC=0.8
pop.val <- fitNoMissing_2CR_SF_new[2,col.num]
cond.matrix1 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n200_mean[row.num ,col.num]
cond.matrix2 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n500_mean[row.num ,col.num]
cond.matrix3 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000_mean[row.num ,col.num]
cond.matrix4 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean[row.num ,col.num]
cond.matrix5 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n200_mean[row.num ,col.num]
cond.matrix6 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n500_mean[row.num ,col.num]
cond.matrix7 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000_mean[row.num ,col.num]
cond.matrix8 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_ts_n1000000_mean[row.num ,col.num]


cfi_wide <- rbind(pop.val,cond.matrix1, 
                  pop.val, cond.matrix2, 
                  pop.val, cond.matrix3, 
                  pop.val, cond.matrix4, 
                  pop.val, cond.matrix5, 
                  pop.val, cond.matrix6,
                  pop.val, cond.matrix7, 
                  pop.val, cond.matrix8)

colnames(cfi_wide) <-  c(0, 0.1, 0.2, 0.3, 0.4)

row.names(cfi_wide)
#View(cfi_wide)
cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Size_of_CR", "CFI")
#View(cfi_long)

length(Sample_Size)
cfi_long$Sample_Size <- as.factor(Sample_Size)
length(Percentage_of_Missing)

cfi_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)

cfi_long$Version <- as.factor(Version)
cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0.65, 1))+ 
  theme_bw() 











######## Third graph###########

###RMSEA###
row.num <- 1:4 #rows for rmsea
col.num <- 1:ncol(fitNoMissing_WM_new)
pop.val <- fitNoMissing_WM_new[1,col.num]
ver.num <- 5
sample.num <- 4
missing.num <- 3
misfit.num <- length(col.num)
cond.matrix1 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean[row.num ,col.num]
cond.matrix2 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_mean[row.num ,col.num]
cond.matrix3 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_mean[row.num ,col.num]
cond.matrix4 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean[row.num ,col.num]
cond.matrix5 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean[row.num ,col.num]
cond.matrix6 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_mean[row.num ,col.num]
cond.matrix7 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_mean[row.num ,col.num]
cond.matrix8 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean[row.num ,col.num]
cond.matrix9 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_mean[row.num ,col.num]
cond.matrix10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_mean[row.num ,col.num]
cond.matrix11 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_mean[row.num ,col.num]
cond.matrix12 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[row.num ,col.num]

rmsea_wide<- rbind(pop.val,cond.matrix1, 
                   pop.val, cond.matrix2, 
                   pop.val, cond.matrix3, 
                   pop.val, cond.matrix4, 
                   pop.val, cond.matrix5, 
                   pop.val, cond.matrix6,
                   pop.val, cond.matrix7, 
                   pop.val, cond.matrix8, 
                   pop.val, cond.matrix9, 
                   pop.val, cond.matrix10,
                   pop.val, cond.matrix11,
                   pop.val, cond.matrix12)
colnames(rmsea_wide) <-  c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)

#View(rmsea_wide)
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Size_of_CR", "RMSEA")
#View(rmsea_long)

Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000", "n=1000000"), each=ver.num),missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c(" Two variables with missing",
                                   "Four variables with missing",
                                   "Six variables with missing"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)

rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)


Version <-rep( c(" Population Value", 
                 "FIML", 
                 "TS  without SSC", 
                 "TS with SSC V1",
                 "TS with SSC V2"), times=nr/ver.num)
length(Version)
rmsea_long$Version <- as.factor(Version)
rmsea_long
colnames(rmsea_long)


ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.25))+ 
  theme_bw() + scale_color_jco()





####CFI###
row.num <- 5:8 #rows for cfi
pop.val <- fitNoMissing_WM_new[2,col.num]
cond.matrix1 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n200_mean[row.num ,col.num]
cond.matrix2 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n500_mean[row.num ,col.num]
cond.matrix3 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000_mean[row.num ,col.num]
cond.matrix4 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_ts_n1000000_mean[row.num ,col.num]
cond.matrix5 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n200_mean[row.num ,col.num]
cond.matrix6 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n500_mean[row.num ,col.num]
cond.matrix7 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000_mean[row.num ,col.num]
cond.matrix8 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_ts_n1000000_mean[row.num ,col.num]
cond.matrix9 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_mean[row.num ,col.num]
cond.matrix10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_mean[row.num ,col.num]
cond.matrix11 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_mean[row.num ,col.num]
cond.matrix12 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[row.num ,col.num]


cfi_wide <- rbind(pop.val,cond.matrix1, 
                  pop.val, cond.matrix2, 
                  pop.val, cond.matrix3, 
                  pop.val, cond.matrix4, 
                  pop.val, cond.matrix5, 
                  pop.val, cond.matrix6,
                  pop.val, cond.matrix7, 
                  pop.val, cond.matrix8, 
                  pop.val, cond.matrix9, 
                  pop.val, cond.matrix10,
                  pop.val, cond.matrix11,
                  pop.val, cond.matrix12)

colnames(cfi_wide) <-  c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)

row.names(cfi_wide)
#View(cfi_wide)
cfi_long <- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Size_of_CR", "CFI")
#View(cfi_long)

cfi_long$Sample_Size <- as.factor(Sample_Size)

cfi_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)

cfi_long$Version <- as.factor(Version)
cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0.4, 1))+ 
  theme_bw() + scale_color_jco()

