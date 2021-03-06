######## Third graph: Graphing study 2###########

###RMSEA###
row.num <- 1:8 #rows for rmsea
col.num <- 1:9
ver.num <- 8
sample.num <- 4
missing.num <- 3
misfit.num <- length(col.num)
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)
cond.num <- 12
row.name <- rep(c("FIML", 
                  "FIML-C  without SSC", 
                  "FIML-C with SSC V1",
                  "FIML-C with SSC V2",
                  "FIML-C with SSC V3",
                  "FIML-C with SSC V4",
                  "FIML-C with SSC V5",
                  "FIML-C with SSC V6"),cond.num)

cond.matrix1 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif[row.num ,col.num]
cond.matrix2 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif[row.num ,col.num]
cond.matrix3 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif[row.num ,col.num]
cond.matrix4 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif[row.num ,col.num]
cond.matrix5 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif[row.num ,col.num]
cond.matrix6 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif[row.num ,col.num]
cond.matrix7 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif[row.num ,col.num]
cond.matrix8 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif[row.num ,col.num]
cond.matrix9 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif[row.num ,col.num]
cond.matrix10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif[row.num ,col.num]
cond.matrix11 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif[row.num ,col.num]
cond.matrix12 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif[row.num ,col.num]

rmsea_wide<- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                   cond.matrix5,  cond.matrix6,cond.matrix7,  cond.matrix8, 
                   cond.matrix9, cond.matrix10, cond.matrix11,cond.matrix12)
colnames(rmsea_wide) <-  col.name
rownames(rmsea_wide)<-row.name
head(rmsea_wide)
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
row.num <- 9:16 #rows for cfi
cond.matrix1 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n200_dif[row.num ,col.num]
cond.matrix2 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n500_dif[row.num ,col.num]
cond.matrix3 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000_dif[row.num ,col.num]
cond.matrix4 <- fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_fimlc_n1000000_dif[row.num ,col.num]
cond.matrix5 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n200_dif[row.num ,col.num]
cond.matrix6 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n500_dif[row.num ,col.num]
cond.matrix7 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000_dif[row.num ,col.num]
cond.matrix8 <- fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_fimlc_n1000000_dif[row.num ,col.num]
cond.matrix9 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif[row.num ,col.num]
cond.matrix10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif[row.num ,col.num]
cond.matrix11 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif[row.num ,col.num]
cond.matrix12 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_dif[row.num ,col.num]


cfi_wide <- rbind(cond.matrix1,  cond.matrix2, cond.matrix3,  cond.matrix4, 
                  cond.matrix5,  cond.matrix6,cond.matrix7,  cond.matrix8, 
                  cond.matrix9, cond.matrix10, cond.matrix11,cond.matrix12)

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
  scale_y_continuous(limits = c(-0.25, 0.25))+ 
  theme_bw() + scale_color_jco()+scale_x_reverse()+
  scale_shape_manual(values=seq(1,9))





