source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Plot FIMLC and TS")
fimlc.nam <- row.names(fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif)
ts.nam <- c("rmsea.uncor"   ,  "rmsea.cor.str","rmsea.cor.unstr", 
            "cfi.uncor"   ,  "cfi.cor.str","cfi.cor.unstr")
combine.nam <- c("rmsea.fiml",    "rmsea.uncor.fimlc" ,       "rmsea.cor.obs.nonn_str" ,  "rmsea.cor.exp.nonn_str"  ,
                 "rmsea.cor.obs.nonn_unstr", "rmsea.cor.obs_str" ,    "rmsea.cor.exp_str" ,      "rmsea.cor.obs_unstr"  ,
                 "rmsea.uncor"   ,  "rmsea.cor.str","rmsea.cor.unstr", 
                 "cfi.fiml"          ,       "cfi.uncor.fimlc"  ,        "cfi.cor.obs.nonn_str"   ,  "cfi.cor.exp.nonn_str" ,   
                 "cfi.cor.obs.nonn_unstr"  , "cfi.cor.obs_str"    ,      "cfi.cor.exp_str" ,         "cfi.cor.obs_unstr" ,
                 "cfi.uncor"   ,  "cfi.cor.str","cfi.cor.unstr")
color.pat <- c("royalblue2", "gold2", 
               "red3","darkorchid3", "magenta" , 
               "springgreen4",  "cyan3", "steelblue2", 
               "wheat4", "chocolate4", "lawngreen")

library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)





####Study 1 

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
cond12 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif[ts.nam, ]


co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]


row.num <- 1:11 #rows for rmsea
col.num <- 1:5 #col for FC=0
ver.num <- 11
sample.num <- 3
var.missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(c("FIML", 
                  "FIML-C V0", 
                  "FIML-C V1",
                  "FIML-C V2",
                  "FIML-C V3",
                  "FIML-C V4",
                  "FIML-C V5",
                  "FIML-C V6", 
                  "TS V0", 
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
  geom_point(aes(color=Version, shape=Version)) +
  facet_grid(Sample_Size~Missing_Var) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.1, 0.1))+ scale_color_manual(values=color.pat)+
  theme_bw() +  scale_shape_manual(values=seq(1,11))+theme(legend.position = "none")+
  scale_linetype_manual(values=1:11)


####CFI###
row.num <- 12:22 #rows for cfi
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
  theme_bw() +  
  scale_y_continuous(limits = c(-0.11, 0.11))+  scale_shape_manual(values=seq(1,11))+
  scale_linetype_manual(values=1:11)+ scale_color_manual(values=color.pat)












###Study 2   
cond1 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n200_dif[fimlc.nam, ]
cond2 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n500_dif[fimlc.nam, ]
cond3 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_fimlc_n1000_dif[fimlc.nam, ]
cond4 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif[fimlc.nam, ]
cond5 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif[fimlc.nam, ]
cond6 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif[fimlc.nam, ]

cond7 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n200_dif[ts.nam, ]
cond8 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n500_dif[ts.nam, ]
cond9 <- fitMAR_Strong_maxPat_20PerMiss_6VarMiss_WM_ts_n1000_dif[ts.nam, ]
cond10 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_dif[ts.nam, ]
cond11 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_dif[ts.nam, ]
cond12 <-fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif[ts.nam, ]



co1 <- rbind(cond1, cond7)[combine.nam, ]
co2<- rbind(cond2, cond8)[combine.nam, ]
co3 <- rbind(cond3, cond9)[combine.nam, ]
co4<- rbind(cond4, cond10)[combine.nam, ]
co5 <- rbind(cond5, cond11)[combine.nam, ]
co6 <- rbind(cond6, cond12)[combine.nam, ]


row.num <- 1:11 #rows for rmsea
col.num <- 1:9 #col for FC=0
ver.num <- 11
sample.num <- 3
missing.num <- 2
misfit.num <- length(col.num)
cond.num <- 6
row.name <- rep(c("FIML", 
                  "FIML-C V0", 
                  "FIML-C V1",
                  "FIML-C V2",
                  "FIML-C V3",
                  "FIML-C V4",
                  "FIML-C V5",
                  "FIML-C V6", 
                  "TS V0", 
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
  geom_point(aes(color=Version, shape=Version)) +
  facet_grid(Sample_Size~Var_Missing) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.12, 0.12))+  theme_bw() + 
  scale_shape_manual(values=seq(1,11))+theme(legend.position = "none")+
  scale_linetype_manual(values=1:11)+ scale_color_manual(values=color.pat)




####CFI###
row.num <- 12:22 #rows for cfi
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
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Var_Missing) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.22, 0.22))+theme_bw() +   scale_shape_manual(values=seq(1,11))+
  scale_linetype_manual(values=1:11)+ scale_color_manual(values=color.pat)
