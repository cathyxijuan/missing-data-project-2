setwd("/Volumes/SP PHD U3/missing-data-project-2/Regression for simu")
load("study1_rmse_results_recode.RData")
load("study2_rmse_results_recode.RData")
library(dplyr)
str(study1_rmse_results_recode)
library(tidyr)
library(broom)


###### First paper; study 1 last analysis?? 
data <- study1_rmse_results_recode %>% filter(version %in% c("FIML", "FIML-C V3", "TS V2") 
                                              & samp %in% c(200, 500) 
                                              & num.cor==2 &num.var.miss=="4" & place=="SF")
data$samp <- recode(data$samp, `200`=0, `500`=1)

reg.no.int.rmsea <- lm(rmsea ~ version+per.miss+mech+fac.corr+cor.resi+samp, data=data)
summary(reg.no.int.rmsea)
tidy(reg.no.int.rmsea)
reg.no.int.cfi <- lm(cfi ~ version+per.miss+mech+fac.corr+cor.resi +samp, data=data)
summary(reg.no.int.cfi)
tidy(reg.no.int.cfi)






######### first paper; study 2
data2 <- study2_rmse_results_recode %>% 
  filter(version %in% c("FIML", "FIML-C V3", "TS V2") & samp %in% c(200, 500) & num.var.miss==2)
data2$samp <- recode(data2$samp, `200`=0, `500`=1)
reg.no.int.rmsea <- lm(rmsea ~ version+  per.miss  + pattern+mech+fac.corr+samp, data=data2)
summary(reg.no.int.rmsea)
reg.no.int.cfi <- lm(cfi ~ version+  per.miss  + pattern+mech+fac.corr+samp, data=data2)
summary(reg.no.int.cfi)



