source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC mean.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS mean.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Plot FIMLC and TS")
load("fitNoMissing_2CR_SF_matrix.RData")
load("fitNoMissing_2CR_DF_matrix.RData")
load("fitNoMissing_1CR_SF_matrix.RData")
load("fitNoMissing_1CR_DF_matrix.RData")
load("fitNoMissing_WM_matrix.RData")
library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)


fimlc.nam <- c("rmsea.fiml", "rmsea.uncor.fimlc",
               "cfi.fiml", "cfi.uncor.fimlc")
ts.nam <- c("rmsea.uncor", "cfi.uncor")
combine.nam <- c("rmsea.fiml", "rmsea.uncor.fimlc","rmsea.uncor",
                 "cfi.fiml", "cfi.uncor.fimlc", "cfi.uncor")
final.name <- c("FIML", "FIML-C", "TS", "Complete \nData" )




color.pat <- c("forestgreen","magenta" , 
               "steelblue2","chocolate4")

shape.pat <- c(2,0, 8, 1)

line.pat <- c("solid", 
              "longdash", 
              "dotdash", "dotted")




####Study 1 20%

cond1 <- fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean[fimlc.nam, ]
cond2 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean[fimlc.nam, ]
cond3 <- fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean[fimlc.nam, ]
cond4 <- fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean[fimlc.nam, ]
cond5 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean[fimlc.nam, ]
cond6 <- fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean[fimlc.nam, ]

cond7 <- fitMCAR_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean[ts.nam,]
cond8 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean[ts.nam,]
cond9 <- fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean[ts.nam,]
cond10 <- fitMCAR_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean[ts.nam,]
cond11 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean[ts.nam,]
cond12 <- fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean[ts.nam,]



co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]

co1 <-rbind(co1[1:3,], fitNoMissing_2CR_DF_matrix[1,],co1[4:6,],  fitNoMissing_2CR_DF_matrix[9,])
co2<-rbind(co2[1:3,], fitNoMissing_2CR_DF_matrix[1,],co2[4:6,],  fitNoMissing_2CR_DF_matrix[9,])
co3 <-rbind(co3[1:3,], fitNoMissing_2CR_DF_matrix[1,],co3[4:6,],  fitNoMissing_2CR_DF_matrix[9,])
co4<-rbind(co4[1:3,], fitNoMissing_2CR_SF_matrix[1,],co4[4:6,],  fitNoMissing_2CR_SF_matrix[9,])
co5<-rbind(co5[1:3,], fitNoMissing_2CR_SF_matrix[1,],co5[4:6,],  fitNoMissing_2CR_SF_matrix[9,])
co6<-rbind(co6[1:3,], fitNoMissing_2CR_SF_matrix[1,],co6[4:6,],  fitNoMissing_2CR_SF_matrix[9,])
row.num <- 1:4 #rows for rmsea
col.num <- 1:5 #col for FC=0
ver.num <- 4
miss.mech.num <- 3
missing.place.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(final.name,cond.num)
col.name <- c(0, 0.1, 0.2, 0.3, 0.4)

cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, cond.matrix5, cond.matrix6)
colnames(rmsea_wide) <-  col.name 
rownames(rmsea_wide) <- row.name
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
Missing_Mechanism <- rep(rep(rep(c(" MCAR", " Weak MAR", "Strong MAR"), 
                                 each=ver.num),missing.place.num),misfit.num)
length(Missing_Mechanism)
rmsea_long$Missing_Mechanism <- as.factor(Missing_Mechanism)
Missing_Place <- rep(rep(c("Different Factors (DF)","Same Factor (SF)"), each=ver.num*miss.mech.num),misfit.num)
length(Missing_Place)
rmsea_long$Missing_Place<- as.factor(Missing_Place)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version), size=2) +
  facet_grid(Missing_Mechanism~Missing_Place) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.25))+ 
  theme_bw()+ theme(legend.position = "none")+scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)


####CFI###
row.num <- 5:8 #rows for cfi
cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide) <- row.name

cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version", "Size_of_CR", "CFI")

cfi_long$Missing_Mechanism <- as.factor(Missing_Mechanism)


cfi_long$Missing_Place <- as.factor(Missing_Place)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Missing_Mechanism~Missing_Place) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0.6, 1))+
  theme_bw()+scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)







####Study 1 50%

cond1 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean[fimlc.nam, ]
cond2 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean[fimlc.nam, ]
cond3 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000_mean[fimlc.nam, ]
cond4 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean[fimlc.nam, ]
cond5 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean[fimlc.nam, ]
cond6 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000_mean[fimlc.nam, ]

cond7 <- fitMCAR_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean[ts.nam,]
cond8 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean[ts.nam,]
cond9 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_ts_n1000000_mean[ts.nam,]
cond10 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean[ts.nam,]
cond11 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean[ts.nam,]
cond12 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000000_mean[ts.nam,]


co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]

co1 <-rbind(co1[1:3,], fitNoMissing_2CR_DF_matrix[1,],co1[4:6,],  fitNoMissing_2CR_DF_matrix[9,])
co2<-rbind(co2[1:3,], fitNoMissing_2CR_DF_matrix[1,],co2[4:6,],  fitNoMissing_2CR_DF_matrix[9,])
co3 <-rbind(co3[1:3,], fitNoMissing_2CR_DF_matrix[1,],co3[4:6,],  fitNoMissing_2CR_DF_matrix[9,])
co4<-rbind(co4[1:3,], fitNoMissing_2CR_SF_matrix[1,],co4[4:6,],  fitNoMissing_2CR_SF_matrix[9,])
co5<-rbind(co5[1:3,], fitNoMissing_2CR_SF_matrix[1,],co5[4:6,],  fitNoMissing_2CR_SF_matrix[9,])
co6<-rbind(co6[1:3,], fitNoMissing_2CR_SF_matrix[1,],co6[4:6,],  fitNoMissing_2CR_SF_matrix[9,])

row.num <- 1:4 #rows for rmsea
col.num <- 1:5 #col for FC=0
ver.num <- 4
miss.mech.num <- 3
missing.place.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(final.name,cond.num)
col.name <- c(0, 0.1, 0.2, 0.3, 0.4)

cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, cond.matrix5, cond.matrix6)
colnames(rmsea_wide) <-  col.name 
rownames(rmsea_wide) <- row.name
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
Missing_Mechanism <- rep(rep(rep(c(" MCAR", " Weak MAR", "Strong MAR"), 
                                 each=ver.num),missing.place.num),misfit.num)
length(Missing_Mechanism)
rmsea_long$Missing_Mechanism <- as.factor(Missing_Mechanism)
Missing_Place <- rep(rep(c("Different Factors (DF)","Same Factor (SF)"), each=ver.num*miss.mech.num),misfit.num)
length(Missing_Place)
rmsea_long$Missing_Place<- as.factor(Missing_Place)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version), size=2) +
  facet_grid(Missing_Mechanism~Missing_Place) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.25))+ 
  theme_bw() + theme(legend.position = "none") +scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)


####CFI###
row.num <- 5:8 #rows for cfi
cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide) <- row.name

cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version", "Size_of_CR", "CFI")

cfi_long$Missing_Mechanism <- as.factor(Missing_Mechanism)


cfi_long$Missing_Place <- as.factor(Missing_Place)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Missing_Mechanism~Missing_Place) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0.6, 1))+ 
  theme_bw()+scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)





























#########Study 2   20%
fimlc.nam <- c("rmsea.fiml", "rmsea.uncor.fimlc",
               "cfi.fiml", "cfi.uncor.fimlc")
ts.nam <- c("rmsea.uncor", "cfi.uncor")
combine.nam <- c("rmsea.fiml", "rmsea.uncor.fimlc","rmsea.uncor",
                 "cfi.fiml", "cfi.uncor.fimlc", "cfi.uncor")

cond1 <- fitMCAR_MinPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond2 <- fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond3 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond4 <- fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond5 <- fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond6 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]

cond7 <- fitMCAR_MinPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond8 <- fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond9 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond10 <- fitMCAR_MaxPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond11 <- fitMAR_Weak_maxPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond12 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]

co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]

co1 <-rbind(co1[1:3,], fitNoMissing_WM_matrix[1,],co1[4:6,],  fitNoMissing_WM_matrix[9,])
co2<-rbind(co2[1:3,], fitNoMissing_WM_matrix[1,],co2[4:6,], fitNoMissing_WM_matrix[9,])
co3 <-rbind(co3[1:3,], fitNoMissing_WM_matrix[1,],co3[4:6,],  fitNoMissing_WM_matrix[9,])
co4<-rbind(co4[1:3,], fitNoMissing_WM_matrix[1,],co4[4:6,],  fitNoMissing_WM_matrix[9,])
co5<-rbind(co5[1:3,], fitNoMissing_WM_matrix[1,],co5[4:6,],  fitNoMissing_WM_matrix[9,])
co6<-rbind(co6[1:3,], fitNoMissing_WM_matrix[1,],co6[4:6,],  fitNoMissing_WM_matrix[9,])

row.num <- 1:4 #rows for rmsea
col.num <- 1:9 #col for FC=0
ver.num <- 4
miss.mech.num <- 3
pat.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(final.name,cond.num)
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)

cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, cond.matrix5, cond.matrix6)
colnames(rmsea_wide) <-  col.name 
rownames(rmsea_wide) <- row.name
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
Missing_Mechanism <- rep(rep(rep(c(" MCAR", " Weak MAR", "Strong MAR"), 
                                 each=ver.num),pat.num),misfit.num)
length(Missing_Mechanism)
rmsea_long$Missing_Mechanism <- as.factor(Missing_Mechanism)
Pattern <- rep(rep(c(" Small number of patterns",
                     "Large number of patterns"), each=ver.num*miss.mech.num),misfit.num)

rmsea_long$Pattern<- as.factor(Pattern)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version), size=2) +
  facet_grid(Missing_Mechanism~Pattern) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.25))+ 
  theme_bw() + theme(legend.position = "none")+scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)





####CFI###
row.num <- 5:8 #rows for cfi
cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide) <- row.name

row.names(cfi_wide)
#View(cfi_wide)
cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version", "Size_of_CR", "CFI")
head(cfi_long)

cfi_long$Missing_Mechanism <- as.factor(Missing_Mechanism)


cfi_long$Pattern <- as.factor(Pattern)

cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Missing_Mechanism~Pattern) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0.2, 1))+ 
  theme_bw()  +scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)




#########Study 2   50%
fimlc.nam <- c("rmsea.fiml", "rmsea.uncor.fimlc",
               "cfi.fiml", "cfi.uncor.fimlc")
ts.nam <- c("rmsea.uncor", "cfi.uncor")
combine.nam <- c("rmsea.fiml", "rmsea.uncor.fimlc","rmsea.uncor",
                 "cfi.fiml", "cfi.uncor.fimlc", "cfi.uncor")

cond1 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond2 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond3 <- fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond4 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000000_mean[fimlc.nam, ]

cond7 <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond8 <- fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond9 <- fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond11 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]
cond12 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000000_mean[ts.nam, ]

co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]

co1 <-rbind(co1[1:3,], fitNoMissing_WM_matrix[1,],co1[4:6,],  fitNoMissing_WM_matrix[9,])
co2<-rbind(co2[1:3,], fitNoMissing_WM_matrix[1,],co2[4:6,], fitNoMissing_WM_matrix[9,])
co3 <-rbind(co3[1:3,], fitNoMissing_WM_matrix[1,],co3[4:6,],  fitNoMissing_WM_matrix[9,])
co4<-rbind(co4[1:3,], fitNoMissing_WM_matrix[1,],co4[4:6,],  fitNoMissing_WM_matrix[9,])
co5<-rbind(co5[1:3,], fitNoMissing_WM_matrix[1,],co5[4:6,],  fitNoMissing_WM_matrix[9,])
co6<-rbind(co6[1:3,], fitNoMissing_WM_matrix[1,],co6[4:6,],  fitNoMissing_WM_matrix[9,])


row.num <- 1:4 #rows for rmsea
col.num <- 1:9 #col for FC=0
ver.num <- 4
miss.mech.num <- 3
pat.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(final.name,cond.num)
col.name <- c(1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2)

cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, cond.matrix5, cond.matrix6)
colnames(rmsea_wide) <-  col.name 
rownames(rmsea_wide) <- row.name
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
Missing_Mechanism <- rep(rep(rep(c(" MCAR", " Weak MAR", "Strong MAR"), 
                                 each=ver.num),pat.num),misfit.num)
length(Missing_Mechanism)
rmsea_long$Missing_Mechanism <- as.factor(Missing_Mechanism)
Pattern <- rep(rep(c(" Small number of patterns",
                     "Large number of patterns"), each=ver.num*miss.mech.num),misfit.num)

rmsea_long$Pattern<- as.factor(Pattern)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version), size=2) +
  facet_grid(Missing_Mechanism~Pattern) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.25))+ 
  theme_bw() + theme(legend.position = "none")+scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)





####CFI###
row.num <- 5:8 #rows for cfi
cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]

cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide) <- row.name

row.names(cfi_wide)
#View(cfi_wide)
cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version", "Size_of_CR", "CFI")
head(cfi_long)

cfi_long$Missing_Mechanism <- as.factor(Missing_Mechanism)


cfi_long$Pattern <- as.factor(Pattern)

cfi_long
colnames(cfi_long)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Missing_Mechanism~Pattern) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(0.2, 1))+
  theme_bw()  +scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)
