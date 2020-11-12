source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/analyze_samp_mi.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Plot FIMLC and TS")
fimlc.nam <- row.names(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif)
ts.nam <- c("rmsea.uncor"   ,  "rmsea.cor.str","rmsea.cor.unstr", 
            "cfi.uncor"   ,  "cfi.cor.str","cfi.cor.unstr")
combine.nam <- c("rmsea.fiml","rmsea.uncor.fimlc", "rmsea.uncor",  "rmsea", 
                 "cfi.fiml",   "cfi.uncor.fimlc", "cfi.uncor",  "cfi")
combine.nam2 <- c("rmsea.fiml","rmsea.uncor.fimlc", "rmsea.uncor",  "rmsea.mi", 
                  "cfi.fiml", "cfi.uncor.fimlc", "cfi.uncor",  "cfi.mi")
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




####Study 1 for figure 5


cond1 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif[fimlc.nam, ]
cond2 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif[fimlc.nam, ]
cond3 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif[fimlc.nam, ]
cond4 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif[fimlc.nam, ]
cond5 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif[fimlc.nam, ]
cond6 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif[fimlc.nam, ]

cond7 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n200_dif[ts.nam, ]
cond8 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n500_dif[ts.nam, ]
cond9 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_ts_n1000_dif[ts.nam, ]
cond10 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif[ts.nam, ]
cond11 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif[ts.nam, ]
cond12 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif[ts.nam,]

cond13 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n200_dif
cond14 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n500_dif
cond15 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_SF_MI_n1000_dif
cond16 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n200_dif
cond17 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n500_dif
cond18 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_MI_n1000_dif





cond1 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif[fimlc.nam, ]
cond2 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif[fimlc.nam, ]
cond3 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif[fimlc.nam, ]
cond4 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n200_dif[fimlc.nam, ]
cond5 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n500_dif[fimlc.nam, ]
cond6 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000_dif[fimlc.nam, ]

cond7 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n200_dif[ts.nam, ]
cond8 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n500_dif[ts.nam, ]
cond9 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_ts_n1000_dif[ts.nam, ]
cond10 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n200_dif[ts.nam, ]
cond11 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n500_dif[ts.nam, ]
cond12 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_ts_n1000_dif[ts.nam, ]

cond13 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n200_dif
cond14 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n500_dif
cond15 <- fitMAR_Weak_20PerMiss_4VarMiss_2CR_DF_MI_n1000_dif
cond16 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n200_dif
cond17 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n500_dif
cond18 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_DF_MI_n1000_dif






co1 <- rbind(cond1, cond7, cond13)[combine.nam, ]
co2<- rbind(cond2, cond8, cond14)[combine.nam, ]
co3 <- rbind(cond3, cond9, cond15)[combine.nam2, ]
co4<- rbind(cond4, cond10, cond16)[combine.nam, ]
co5 <- rbind(cond5, cond11, cond17)[combine.nam, ]
co6 <- rbind(cond6, cond12, cond18)[combine.nam2, ]




row.num <- 1:4 #rows for rmsea
col.num <- 1:5 #col for FC=0
ver.num <- 4
sample.num <- 3
var.missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(c("FIML",  "FIML-C V0",
                  "TS V0", 
                  "MI"),cond.num)
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
  geom_point(aes(color=Version, shape=Version)) +
  facet_grid(Sample_Size~Missing_Var) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +  
  ylab("Bias in RMSEA") +
  scale_y_continuous(limits = c(-0.10, 0.10))+ scale_color_manual(values=color.pat)+
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
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Missing_Var) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  ylab("Bias in CFI") +
  theme_bw() +  
  scale_y_continuous(limits = c(-0.10, 0.10))+  scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)










0.4/1.2
7.8-4.4
3.5/7.8

1-1.5/6.6
1-0.8/4.5

(1.5-0.8)/1.5
(6.6-4.5)/6.6
