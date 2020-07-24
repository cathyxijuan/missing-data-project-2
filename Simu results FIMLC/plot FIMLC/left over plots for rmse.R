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
