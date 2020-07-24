source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/load FIMLC/load FIMLC dif.R")
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS/load TS/load TS dif.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Plot FIMLC and TS")
fimlc.nam <- row.names(fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif)
ts.nam <- c("rmsea.uncor"   ,  "rmsea.cor.str","rmsea.cor.unstr", 
            "cfi.uncor"   ,  "cfi.cor.str","cfi.cor.unstr")
combine.nam <- c("rmsea.fiml", "rmsea.uncor.fimlc" ,  "rmsea.cor.obs.nonn_str" ,  "rmsea.cor.exp.nonn_str"  ,
                 "rmsea.cor.obs.nonn_unstr", "rmsea.cor.obs_str" ,    "rmsea.cor.exp_str" ,      "rmsea.cor.obs_unstr"  ,
                 "rmsea.uncor"  ,  "rmsea.cor.str","rmsea.cor.unstr", 
                 "cfi.fiml" ,  "cfi.uncor.fimlc"  ,    "cfi.cor.obs.nonn_str"   ,  "cfi.cor.exp.nonn_str" ,   
                 "cfi.cor.obs.nonn_unstr"  , "cfi.cor.obs_str"    ,      "cfi.cor.exp_str" ,         "cfi.cor.obs_unstr" ,
                 "cfi.uncor"   ,  "cfi.cor.str","cfi.cor.unstr")
color.pat <- c("blue4",
               "deeppink1",
               "darkcyan", "magenta4", "gray77" , 
               "gray77",  "firebrick", "gray77", 
               "steelblue2", 
               "gray77", "gray77")

shape.pat <- c(1, 
               2, 
               5, 6, 4, 
               4,  7, 4, 
               0, 
               4, 4)

line.pat <- c("solid", 
              "solid", 
              "solid", "longdash", "dotted" , 
              "dotted", "solid", "dotted", 
              "longdash", 
               "dotted", "dotted")

library(dplyr)
library(ggplot2)
library(reshape2)
library(ggsci)
###Study 1

cond1 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif[fimlc.nam, ]
cond2 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif[fimlc.nam, ]
cond3 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif[fimlc.nam, ]
cond4 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif[fimlc.nam, ]
cond5 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif[fimlc.nam, ]
cond6 <- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif[fimlc.nam, ]
cond7 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_dif[fimlc.nam, ]
cond8 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif[fimlc.nam, ]
cond9 <- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_dif[fimlc.nam, ]

cond10 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif[ts.nam, ]
cond11 <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif[ts.nam, ]
cond12<- fitMCAR_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif[ts.nam, ]
cond13<- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif[ts.nam, ]
cond14<- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif[ts.nam, ]
cond15<- fitMAR_Weak_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif[ts.nam, ]
cond16<- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n200_dif[ts.nam, ]
cond17<- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n500_dif[ts.nam, ]
cond18<- fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_ts_n1000_dif[ts.nam, ]




co1 <- rbind(cond1, cond10)[combine.nam, ]
co2<- rbind(cond2, cond11)[combine.nam, ]
co3 <- rbind(cond3, cond12)[combine.nam, ]
co4<- rbind(cond4, cond13)[combine.nam, ]
co5 <- rbind(cond5, cond14)[combine.nam, ]
co6 <- rbind(cond6, cond15)[combine.nam, ]
co7<- rbind(cond7, cond16)[combine.nam, ]
co8 <- rbind(cond8, cond17)[combine.nam, ]
co9 <- rbind(cond9, cond18)[combine.nam, ]


row.num <- 1:11 #rows for rmsea
col.num <- 1:5  #col for FC=0
ver.num <- 11
sample.num <- 3
col.var.num <- 3
misfit.num <- length(col.num)
cond.num <- 9
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
cond.matrix7 <- co7[row.num ,col.num]
cond.matrix8 <- co8[row.num ,col.num]
cond.matrix9 <- co9[row.num ,col.num]

rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, cond.matrix5, cond.matrix6,
                    cond.matrix7, cond.matrix8, cond.matrix9)
colnames(rmsea_wide) <-  col.name 
rownames(rmsea_wide) <- row.name
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
Sample_Size <- rep(rep(rep(c(" n=200", " n=500", "n=1000"), 
                           each=ver.num),col.var.num),misfit.num)

rmsea_long$Sample_Size <- as.factor(Sample_Size)
Col_Var_Missing <- rep(rep(c(" MCAR",
                             " Weak MAR", "Strong MAR"), each=ver.num*sample.num),misfit.num)
rmsea_long$Col_Var_Missing<- as.factor(Col_Var_Missing)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version), size=2) +
  facet_grid(Sample_Size~Col_Var_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.1, 0.1))+  theme_bw() + 
  scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)




####CFI###
row.num <- 12:22 #rows for cfi
cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]
cond.matrix7 <- co7[row.num ,col.num]
cond.matrix8 <- co8[row.num ,col.num]
cond.matrix9 <- co9[row.num ,col.num]

cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6,
                  cond.matrix7, cond.matrix8,  cond.matrix9)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide) <- row.name

row.names(cfi_wide)
#View(cfi_wide)
cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version", "Size_of_CR", "CFI")
head(cfi_long)

cfi_long$Sample_Size <- as.factor(Sample_Size )

cfi_long$Col_Var_Missing <- as.factor(Col_Var_Missing)



ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version), size=2) +
  facet_grid(Sample_Size~Col_Var_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.12, 0.12))+theme_bw() +   
  scale_shape_manual(values=shape.pat)+
  scale_linetype_manual(values=line.pat)+ scale_color_manual(values=color.pat)


















###Study 2   
cond1 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif[fimlc.nam, ]
cond2 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif[fimlc.nam, ]
cond3 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif[fimlc.nam, ]
cond4 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif[fimlc.nam, ]
cond5 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif[fimlc.nam, ]
cond6 <- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif[fimlc.nam, ]
cond7 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n200_dif[fimlc.nam, ]
cond8 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n500_dif[fimlc.nam, ]
cond9 <- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif[fimlc.nam, ]

cond10 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n200_dif[ts.nam, ]
cond11 <- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n500_dif[ts.nam, ]
cond12<- fitMCAR_MaxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif[ts.nam, ]
cond13<- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n200_dif[ts.nam, ]
cond14<- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n500_dif[ts.nam, ]
cond15<- fitMAR_Weak_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif[ts.nam, ]
cond16<- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n200_dif[ts.nam, ]
cond17<- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n500_dif[ts.nam, ]
cond18<- fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_ts_n1000_dif[ts.nam, ]


co1 <- rbind(cond1, cond10)[combine.nam, ]
co2<- rbind(cond2, cond11)[combine.nam, ]
co3 <- rbind(cond3, cond12)[combine.nam, ]
co4<- rbind(cond4, cond13)[combine.nam, ]
co5 <- rbind(cond5, cond14)[combine.nam, ]
co6 <- rbind(cond6, cond15)[combine.nam, ]
co7<- rbind(cond7, cond16)[combine.nam, ]
co8 <- rbind(cond8, cond17)[combine.nam, ]
co9 <- rbind(cond9, cond18)[combine.nam, ]


row.num <- 1:11 #rows for rmsea
col.num <- 1:9 #col for FC=0
ver.num <- 11
sample.num <- 3
col.var.num <- 3
misfit.num <- length(col.num)
cond.num <- 9
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
cond.matrix7 <- co7[row.num ,col.num]
cond.matrix8 <- co8[row.num ,col.num]
cond.matrix9 <- co9[row.num ,col.num]

rmsea_wide <- rbind(cond.matrix1,cond.matrix2, cond.matrix3,cond.matrix4, cond.matrix5, cond.matrix6,
                    cond.matrix7, cond.matrix8, cond.matrix9)
colnames(rmsea_wide) <-  col.name 
rownames(rmsea_wide) <- row.name
rmsea_long <- melt(rmsea_wide)
nr <- nrow(rmsea_long)
nr
colnames(rmsea_long) <- c("Version", "Size_of_CR", "RMSEA")
Sample_Size <- rep(rep(rep(c(" n=200", " n=500", "n=1000"), 
                           each=ver.num),col.var.num),misfit.num)

rmsea_long$Sample_Size <- as.factor(Sample_Size)
Col_Var_Missing <- rep(rep(c(" MCAR",
                             " Weak MAR", "Strong MAR"), each=ver.num*sample.num),misfit.num)
rmsea_long$Col_Var_Missing<- as.factor(Col_Var_Missing)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version)) +
  facet_grid(Sample_Size~Col_Var_Missing) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.2, 0.2))+  theme_bw() + 
  scale_shape_manual(values=seq(1,11))+
  scale_linetype_manual(values=1:11)+ scale_color_manual(values=color.pat)

ggplot(rmsea_long, aes(x=Size_of_CR, y=RMSEA, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape=Version)) +
  facet_grid(Sample_Size~Col_Var_Missing) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.2, 0.2))+  theme_bw() + 
  scale_shape_manual(values=seq(1,11))+
  scale_linetype_manual(values=1:11)+ scale_color_manual(values=color.pat)


####CFI###
row.num <- 12:22 #rows for cfi
cond.matrix1 <- co1[row.num ,col.num]
cond.matrix2 <- co2[row.num ,col.num]
cond.matrix3 <- co3[row.num ,col.num]
cond.matrix4 <- co4[row.num ,col.num]
cond.matrix5 <- co5[row.num ,col.num]
cond.matrix6 <- co6[row.num ,col.num]
cond.matrix7 <- co7[row.num ,col.num]
cond.matrix8 <- co8[row.num ,col.num]
cond.matrix9 <- co9[row.num ,col.num]

cfi_wide <- rbind(cond.matrix1, cond.matrix2, cond.matrix3, 
                  cond.matrix4, cond.matrix5,  cond.matrix6,
                  cond.matrix7, cond.matrix8,  cond.matrix9)

colnames(cfi_wide) <-  col.name
rownames(cfi_wide) <- row.name

row.names(cfi_wide)
#View(cfi_wide)
cfi_long<- melt(cfi_wide)
nr <- nrow(cfi_long)
colnames(cfi_long) <- c("Version", "Size_of_CR", "CFI")
head(cfi_long)

cfi_long$Sample_Size <- as.factor(Sample_Size )

cfi_long$Col_Var_Missing <- as.factor(Col_Var_Missing)



ggplot(cfi_long, aes(x=Size_of_CR, y=CFI, group=Version)) + 
  geom_line(aes(linetype=Version, color=Version)) + 
  geom_point(aes(color=Version, shape = Version)) +
  facet_grid(Sample_Size~Col_Var_Missing) +scale_x_reverse()+
  xlab("Size of Factor Correlation (Degree of Misfit)") +
  scale_y_continuous(limits = c(-0.26, 0.26))+theme_bw() +   scale_shape_manual(values=seq(1,11))+
  scale_linetype_manual(values=1:11)+ scale_color_manual(values=color.pat)
