setwd("/Volumes/SP PHD U3/missing-data-project-2/Regression for simu")
load("study1_bias_results_recode.RData")
load("study2_bias_results_recode.RData")
library(dplyr)
str(study1_bias_results_recode)
library(tidyr)
library(broom)

study1_bias_results_recode <-  study1_bias_results_recode %>% filter(per.miss %in% c(1,2) )
study1_bias_results_recode$per.miss<- recode(study1_bias_results_recode$per.miss, `1`=0, `2`=1)
study2_bias_results_recode <-  study2_bias_results_recode %>% filter(per.miss %in% c(1,2) )
study2_bias_results_recode$per.miss<- recode(study2_bias_results_recode$per.miss, `1`=0, `2`=1)
study2_bias_results_recode$rmsea<- abs(study2_bias_results_recode$rmsea)
study2_bias_results_recode$cfi<- abs(study2_bias_results_recode$cfi)
study1_bias_results_recode$rmsea<- abs(study1_bias_results_recode$rmsea)
study1_bias_results_recode$cfi<- abs(study1_bias_results_recode$cfi)

###### First paper; study 1
data <- study1_bias_results_recode %>% filter(version==c("FIML") & samp==1000000 & num.cor==2 &num.var.miss=="4")
# str(data)
# head(data)
# tail(data)
reg.no.int.cfi <- lm(cfi ~ place+per.miss+cor.resi +fac.corr+mech, data=data)
summary(reg.no.int.cfi)
reg.no.int.rmsea <- lm(rmsea ~ place+per.miss+cor.resi +fac.corr+mech, data=data)
summary(reg.no.int.rmsea)

data$place <- relevel(data$place, ref="DF")
reg.int.df.rmsea <- lm(rmsea ~ per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.df.rmsea)
reg.int.df.cfi <- lm(cfi ~ per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.df.cfi)




data$place <- relevel(data$place, ref="SF")
reg.int.sf.rmsea <- lm(rmsea ~ per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.sf.rmsea)
reg.int.sf.cfi <- lm(cfi ~per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.sf.cfi )




######### first paper; study 2
data2 <- study2_bias_results_recode %>% filter(version==c("FIML") & samp==1000000 &num.var.miss==2)


reg.no.int.rmsea <- lm(rmsea ~ per.miss+pattern +mech+fac.corr , data=data2)
summary(reg.no.int.rmsea)
reg.no.int.cfi <- lm(cfi ~ per.miss+pattern +mech+fac.corr , data=data2)
summary(reg.no.int.cfi)











###### First paper; study 1
data <- study1_bias_results_recode %>% filter(version %in% c("FIML", "FIML-C V0", "TS V0") 
                                              & samp %in% c(1000000) 
                                              & num.cor==2 &num.var.miss=="4")

reg.no.int.cfi <- lm(cfi ~ version+place+per.miss+cor.resi +fac.corr+mech, data=data)
summary(reg.no.int.cfi)
tidy(reg.no.int.cfi)
reg.no.int.rmsea <- lm(rmsea ~ version+place+per.miss+cor.resi +fac.corr+mech, data=data)
summary(reg.no.int.rmsea)
tidy(reg.no.int.rmsea)


data$place <- relevel(data$place, ref="DF")
reg.int.df.cfi <- lm(cfi ~ version+per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.df.cfi )
tidy(reg.int.df.cfi )
reg.int.df.rmsea <- lm(rmsea ~ version+per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.df.rmsea)
tidy(reg.int.df.rmsea)

data$place <- relevel(data$place, ref="SF")
reg.int.sf.rmsea <- lm(rmsea ~ version+per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.sf.rmsea)
tidy(reg.int.sf.rmsea )
reg.int.sf.cfi <- lm(cfi ~ version+per.miss+place+mech+fac.corr+cor.resi +place*per.miss, data=data)
summary(reg.int.sf.cfi)
tidy(reg.int.sf.cfi)



data <- study1_bias_results_recode %>% filter(version %in% c("FIML", "FIML-C V0", "TS V0") 
                                              & samp %in% c(1000000) 
                                              & num.cor==2 &num.var.miss=="4" & place=="SF")

reg.int.sf.rmsea <- lm(rmsea ~ version+per.miss+mech+fac.corr+cor.resi , data=data)
summary(reg.int.sf.rmsea)
tidy(reg.int.sf.rmsea )
reg.int.sf.cfi <- lm(cfi ~version+per.miss+mech+fac.corr+cor.resi , data=data)
summary(reg.int.sf.cfi)
tidy(reg.int.sf.cfi)


######### first paper; study 2
data2 <- study2_bias_results_recode %>% 
  filter(version %in% c("FIML", "FIML-C V0","TS V0") & samp %in% c(1000000) & num.var.miss==2 )
data2$version <- relevel(data2$version, ref="FIML")

reg.no.int.rmsea <- lm(rmsea ~ version+  per.miss  + pattern+mech+fac.corr, data=data2)
summary(reg.no.int.rmsea)
reg.no.int.cfi <- lm(cfi ~ version+  per.miss  + pattern+mech+fac.corr, data=data2)
summary(reg.no.int.cfi)
















###### First paper; study 1 last analysis?? 
data <- study1_bias_results_recode %>% filter(version %in% c("FIML", "FIML-C V3", "TS V2") 
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
data2 <- study2_bias_results_recode %>% 
  filter(version %in% c("FIML", "FIML-C V3", "TS V2") & samp %in% c(200, 500) & num.var.miss==2)
data2$samp <- recode(data2$samp, `200`=0, `500`=1)

reg.no.int.rmsea <- lm(rmsea ~ version+  per.miss  + pattern+mech+fac.corr+samp, data=data2)
summary(reg.no.int.rmsea)
reg.no.int.cfi <- lm(cfi ~ version+  per.miss  + pattern+mech+fac.corr+samp, data=data2)
summary(reg.no.int.cfi)


