source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC rmse.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS rmse.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Plot FIMLC and TS")
fimlc.nam <- row.names(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_rmse)
ts.nam <- c("rmsea.uncor"   ,  "rmsea.cor.str","rmsea.cor.unstr", 
            "cfi.uncor"   ,  "cfi.cor.str","cfi.cor.unstr")
combine.nam <- c("rmsea.cor.obs.nonn_unstr",  "rmsea.cor.obs_unstr"  ,
                  "rmsea.cor.str","rmsea.cor.unstr", 
                 "cfi.cor.obs.nonn_unstr"  ,  "cfi.cor.obs_unstr" ,
                 "cfi.cor.str","cfi.cor.unstr")
color.pat <- c("magenta" , 
                "steelblue2", 
                "chocolate4", "darkcyan")

shape.pat <- c(0,8, 2, 5)

line.pat <- c("solid", 
              "longdash", 
              "dotdash", "solid")



library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)





####Study 1 #Figure 7

cond1 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_rmse[fimlc.nam, ]
cond2 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_rmse[fimlc.nam, ]
cond3 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_rmse[fimlc.nam, ]
cond4 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_rmse[fimlc.nam, ]
cond5 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_rmse[fimlc.nam, ]
cond6 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_rmse[fimlc.nam, ]

cond7 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_rmse[ts.nam, ]
cond8 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_rmse[ts.nam, ]
cond9 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse[ts.nam, ]
cond10 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_rmse[ts.nam, ]
cond11 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_rmse[ts.nam, ]
cond12 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_rmse[ts.nam, ]


cond1 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_rmse[fimlc.nam, ]
cond2 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_rmse[fimlc.nam, ]
cond3 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_rmse[fimlc.nam, ]
cond4 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_rmse[fimlc.nam, ]
cond5 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_rmse[fimlc.nam, ]
cond6 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_rmse[fimlc.nam, ]

cond7 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_rmse[ts.nam, ]
cond8 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500_rmse[ts.nam, ]
cond9 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse[ts.nam, ]
cond10 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_rmse[ts.nam, ]
cond11 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500_rmse[ts.nam, ]
cond12 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000_rmse[ts.nam, ]




co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]


row.num <- 1:4 #rows for rmsea
col.num <- 1:5 #col for FC=0
ver.num <- 4
sample.num <- 3
var.missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(c("FIML-C V3",
                  "FIML-C V6", 
                  "TS V1", 
                  "TS V2"),cond.num)
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
Sample_Size <- rep(rep(rep(c(" n=200", " n=500", "n=1000"), 
                           each=ver.num),var.missing.num),misfit.num)
length(Sample_Size)
rmsea_long$Sample_Size <- as.factor(Sample_Size)
Missing_Var <- rep(rep(c("20% Missing Data","50% Missing Data"), each=ver.num*sample.num),misfit.num)
length(Missing_Var)
rmsea_long$Missing_Var<- as.factor(Missing_Var)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version),size=2) +
  facet_grid(Sample_Size~Missing_Var) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  ylab("RMSE in RMSEA")+
  scale_y_continuous(limits = c(0, 0.04))+ scale_color_manual(values=color.pat)+
  theme_bw() +  scale_shape_manual(values=shape.pat)+theme(legend.position = "none")+
  scale_linetype_manual(values=line.pat)


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

cfi_long$Sample_Size <- as.factor(Sample_Size)


cfi_long$Missing_Var <- as.factor(Missing_Var)



ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Sample_Size~Missing_Var) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  ylab("RMSE in CFI")+
  theme_bw() +  
  scale_y_continuous(limits = c(0, 0.04))+  scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)















###Study 2    #Figure 8



cond1 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse[fimlc.nam, ]
cond2 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse[fimlc.nam, ]
cond3 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse[fimlc.nam, ]
cond4 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse[fimlc.nam, ]
cond5 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse[fimlc.nam, ]
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse[fimlc.nam, ]

cond7 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_rmse[ts.nam, ]
cond8 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n500_rmse[ts.nam, ]
cond9 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse[ts.nam, ]
cond10 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_rmse[ts.nam, ]
cond11 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_rmse[ts.nam, ]
cond12 <-fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse[ts.nam, ]

cond1 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n200_rmse[fimlc.nam, ]
cond2 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n500_rmse[fimlc.nam, ]
cond3 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_fimlc_n1000_rmse[fimlc.nam, ]
cond4 <- fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n200_rmse[fimlc.nam, ]
cond5 <- fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n500_rmse[fimlc.nam, ]
cond6 <- fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_rmse[fimlc.nam, ]

cond7 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n200_rmse[ts.nam, ]
cond8 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n500_rmse[ts.nam, ]
cond9 <- fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_ts_n1000_rmse[ts.nam, ]
cond10 <- fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n200_rmse[ts.nam, ]
cond11 <- fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n500_rmse[ts.nam, ]
cond12 <-fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_ts_n1000_rmse[ts.nam, ]
0.20687858-0.08676215

co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]


row.num <- 1:4 #rows for rmsea
col.num <- 1:9 #col for FC=0
ver.num <- 4
sample.num <- 3
missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(c("FIML-C V3",
                  "FIML-C V6", 
                  "TS V1", 
                  "TS V2"),cond.num)
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
Sample_Size <- rep(rep(rep(c(" n=200", " n=500", "n=1000"), 
                           each=ver.num),missing.num),misfit.num)

rmsea_long$Sample_Size <- as.factor(Sample_Size)
Var_Missing <- rep(rep(c("20% Missing Data",
                         "50% Missing Data"), each=ver.num*sample.num),misfit.num)
rmsea_long$Var_Missing<- as.factor(Var_Missing)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version), size=2) +
  facet_grid(Sample_Size~Var_Missing) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  ylab("RMSE in RMSEA")+
  scale_y_continuous(limits = c(0, 0.05))+  theme_bw() + 
  scale_shape_manual(values=shape.pat)+theme(legend.position = "none")+
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

cfi_long$Sample_Size <- as.factor(Sample_Size )


cfi_long$Var_Missing <- as.factor(Var_Missing)




ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Sample_Size~Var_Missing) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  ylab("RMSE in CFI")+
  scale_y_continuous(limits = c(0, 0.2))+theme_bw() +   scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)


ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Sample_Size~Var_Missing) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  ylab("RMSE in CFI")+
  scale_y_continuous(limits = c(0, 0.3))+theme_bw() +   scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)


0.15567325- 0.07315811
