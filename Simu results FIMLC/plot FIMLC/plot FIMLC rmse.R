source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC rmse.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/plot FIMLC")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)



########### MCAR study 1#########


#############First Graph : Graphing study 1######

###RMSEA###

cond1 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_rmse
cond2 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_rmse
cond3 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_rmse
cond4 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_rmse
cond5 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_rmse
cond6 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_rmse


cond1 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_rmse
cond2 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_rmse
cond3 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_rmse
cond4 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_rmse
cond5 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_rmse
cond6 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_rmse



cond1 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_rmse
cond2 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_rmse
cond3 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_rmse
cond4 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_rmse
cond5 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_rmse
cond6 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_rmse



row.num <- 1:8 #rows for rmsea
col.num <- 1:5 #col for FC=0
ver.num <- 8
sample.num <- 3
missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(c("FIML", 
                  "FIML-C  without SSC", 
                  "FIML-C with SSC V1",
                  "FIML-C with SSC V2",
                  "FIML-C with SSC V3",
                  "FIML-C with SSC V4",
                  "FIML-C with SSC V5",
                  "FIML-C with SSC V6"),cond.num)
col.name <- c(0, 0.1, 0.2, 0.3, 0.4)

cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]
cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]
cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]


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
Percentage_of_Missing <- rep(rep(c("different Factors (DF)","Same Factor (SF)"), each=ver.num*sample.num),misfit.num)
length(Percentage_of_Missing)
rmsea_long$Percentage_of_Missing <- as.factor(Percentage_of_Missing)
colnames(rmsea_long)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.2))+ 
  theme_bw() + scale_color_jco()+
  scale_shape_manual(values=seq(1,9))+ theme(legend.position = "none")




####CFI###
row.num <- 9:16 #rows for cfi
cond.matrix1 <- cond1[row.num ,col.num]
cond.matrix2 <- cond2[row.num ,col.num]
cond.matrix3 <- cond3[row.num ,col.num]
cond.matrix4 <- cond4[row.num ,col.num]
cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]


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
  scale_y_continuous(limits = c(0, 0.32))+ 
  theme_bw()  + scale_color_jco()+
  scale_shape_manual(values=seq(1,9))




























######## Third graph: Graphing study 2 columns ###########

###RMSEA###

cond1 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_rmse
cond2 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
cond3 <-fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_rmse
cond4 <-fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond5 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond6 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse


# cond1 <- fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n200_rmse
# cond2 <- fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond3 <-fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_fimlc_n1000_rmse
# cond4 <-fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse
# cond5 <- fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse
# cond6 <- fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse

row.num <- 1:8 #rows for rmsea
col.num <- 1:9
ver.num <- 8
sample.num <- 3
missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
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

Sample_Size <- rep(rep(rep(c("n= 200", "n= 500", "n=1000"), each=ver.num),missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Percentage_of_Missing <- rep(rep(c( "Four variables with missing",
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
  scale_y_continuous(limits = c(0, 0.7))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))+theme(legend.position = "none")


ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.15))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))+theme(legend.position = "none")


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
  scale_y_continuous(limits = c(0, 0.4))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Percentage_of_Missing) +
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.25))+ 
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
# cond1 <- fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond2 <-fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond3 <-fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond4 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond5 <- fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond6 <- fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse

cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse

cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse

cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse


cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse

# cond1 <- fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond2 <-fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond3 <-fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond4 <- fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond5 <- fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond6 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse

row.num <- 1:8 #rows for rmsea
col.num <- 1:9
ver.num <- 8
miss.mech.num <- 3 #sample to miss.mech
pat.num <- 2 #missing to pat
misfit.num <- length(col.num)
cond.num <- 6
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

cond.matrix5 <- cond5[row.num ,col.num]
cond.matrix6 <- cond6[row.num ,col.num]
cond.matrix7 <- cond7[row.num ,col.num]
cond.matrix8 <- cond8[row.num ,col.num]



rmsea_wide<- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                   cond.matrix5,  cond.matrix6,cond.matrix7,  cond.matrix8)

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
  scale_y_continuous(limits = c(-0.125, 0.125))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))+theme(legend.position = "none")




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
# cond1 <- fitMCAR_MinPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond2 <-fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond3 <-fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond4 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond5 <- fitMAR_Weak_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse
# cond6 <- fitMAR_Strong_maxPat_50PerMiss_4VarMiss_WM_fimlc_n500_rmse


cond1 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond2 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond3 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond4 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond5 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
cond6 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse

cond7 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond8 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse
cond9 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond10 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse
cond11<- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
cond12<- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse





# cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
# cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
# cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
# cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse
# 
# 
# 
# cond2 <-fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond3 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_rmse

# cond1 <- fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond2 <-fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond3 <-fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond4 <- fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond5 <- fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse
# cond6 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_rmse

row.num <- 1:8 #rows for rmsea
col.num <- 1:9
ver.num <- 8
miss.mech.num <- 6 #sample to miss.mech
pat.num <- 2 #missing to pat
misfit.num <- length(col.num)
cond.num <- 12
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


750+3725+5875



####CFI###
row.num <- 9:16 #rows for cfi
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


cfi_wide <-rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, 
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



