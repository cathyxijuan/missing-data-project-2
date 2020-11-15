source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC SD.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/plot FIMLC")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)


########### MCAR study 1#########


#############First Graph : Graphing study 1######

###RMSEA###
row.num <- 1:8 #rows for rmsea
col.num <- 11:15 #col for FC=0.8
ver.num <- 8
sample.num <- 3
missing.num <- 2
misfit.num <- length(col.num)
row.name <- rep(c("FIML", 
                  "FIML-C  without SSC", 
                  "FIML-C with SSC V1",
                  "FIML-C with SSC V2",
                  "FIML-C with SSC V3",
                  "FIML-C with SSC V4",
                  "FIML-C with SSC V5",
                  "FIML-C with SSC V6"),6)
col.name <- c(0, 0.1, 0.2, 0.3, 0.4)
cond.matrix1 <- fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd[row.num ,col.num]
cond.matrix2 <- fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd[row.num ,col.num]
cond.matrix3 <- fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd[row.num ,col.num]

cond.matrix4 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_sd[row.num ,col.num]
cond.matrix5 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_sd[row.num ,col.num]
cond.matrix6 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_sd[row.num ,col.num]


rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, 
                    cond.matrix5, cond.matrix6)

colnames(rmsea_wide) <-  col.name 
rownames(rmsea_wide)<-row.name
rmsea_long <- melt(rmsea_wide)
head(rmsea_long)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
head(rmsea_long)
Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000"), 
                           each=ver.num),missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c("20% Missing","50% Missing"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)
rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)
colnames(rmsea_long)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.7))+ 
  theme_bw() + scale_color_jco()


####CFI###
row.num <- 9:16 #rows for cfi
cond.matrix1 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd[row.num ,col.num]
cond.matrix2 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd[row.num ,col.num]
cond.matrix3 <- fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd[row.num ,col.num]
cond.matrix4 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd[row.num ,col.num]
cond.matrix5 <- fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd[row.num ,col.num]
cond.matrix6<- fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_sd[row.num ,col.num]


cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide)<-row.name

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
  scale_y_continuous(limits = c(0, 0.3))+ 
  theme_bw()  + scale_color_jco()






























######## Third graph: Graphing study 2###########

###RMSEA###

cond1 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_sd
cond2 <-fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_sd
cond3 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_sd
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_sd
row.num <- 1:8 #rows for rmsea
col.num <- 1:9
ver.num <- 8
sample.num <- 2
missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 4
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
row.name <- rep(c("FIML", 
                  "FIML-C  without SSC", 
                  "FIML-C with SSC V1",
                  "FIML-C with SSC V2",
                  "FIML-C with SSC V3",
                  "FIML-C with SSC V4",
                  "FIML-C with SSC V5",
                  "FIML-C with SSC V6"),cond.num)

cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]

cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]




rmsea_wide<- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4)
colnames(rmsea_wide) <-  col.name
rownames(rmsea_wide)<-row.name
head(rmsea_wide)
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version","Size_of_CR", "RMSEA")
head(rmsea_long)

Sample_Size <- rep(rep(rep(c("n= 200", "n= 500"), each=ver.num),missing.num),misfit.num)
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
  scale_y_continuous(limits = c(0, 0.1))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))+theme(legend.position = "none")



ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.8))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))+theme(legend.position = "none")





####CFI###
row.num <- 9:16 #rows for cfi
cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]

cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]



cfi_wide <- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4)

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
  scale_y_continuous(limits = c(0, 0.5))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.20))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))
