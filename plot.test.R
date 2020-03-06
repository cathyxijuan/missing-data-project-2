library(ggplot2)
library(gridExtra)
library(reshape2)
library(dplyr)


load("fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_n1000000.RData")
load("fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_n1000000.RData")
load("fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_n1000000.RData")
load("fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_n1000000.RData")
load("fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_n1000000.RData")
load("fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_n1000000.RData")
load("fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_n1000000.RData")
load("fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_n1000000.RData")
load("fitNoMissingShort_2CR_SF.RData")
load("fitNoMissingShort_2CR_DF.RData")
fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_n1000000
fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_n1000000
fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_n1000000
fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_n1000000
fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_n1000000
fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_n1000000
fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_n1000000
fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_n1000000
fitNoMissingShort_2CR_SF
fitNoMissingShort_2CR_DF

#four variables missing
df0 <- fitNoMissingShort_2CR_DF[[1]][1:5, 2]
df20 <-fitMAR_Strong_20PerMiss_4VarMiss_2CR_DF_n1000000["rmsea.uncorr.approx", 1:5]
df50 <-fitMAR_Strong_50PerMiss_4VarMiss_2CR_DF_n1000000["rmsea.uncorr.approx", 1:5]

sf0 <- fitNoMissingShort_2CR_SF[[1]][1:5, 2]
sf20 <-fitMAR_Strong_20PerMiss_4VarMiss_2CR_SF_n1000000["rmsea.uncorr.approx", 1:5]
sf50 <-fitMAR_Strong_50PerMiss_4VarMiss_2CR_SF_n1000000["rmsea.uncorr.approx", 1:5]




df02 <- fitNoMissingShort_2CR_DF[[1]][1:5, 2]
df202 <-fitMAR_Strong_20PerMiss_2VarMiss_2CR_DF_n1000000["rmsea.uncorr.approx", 1:5]
df502 <-fitMAR_Strong_50PerMiss_2VarMiss_2CR_DF_n1000000["rmsea.uncorr.approx", 1:5]

sf02 <- fitNoMissingShort_2CR_SF[[1]][1:5, 2]
sf202 <-fitMAR_Strong_20PerMiss_2VarMiss_2CR_SF_n1000000["rmsea.uncorr.approx", 1:5]
sf502 <-fitMAR_Strong_50PerMiss_2VarMiss_2CR_SF_n1000000["rmsea.uncorr.approx", 1:5]

rmsea <- c(df02, df202 ,df502, df0, df20 ,df50, sf02, sf202 ,sf502, sf0, sf20 ,sf50)


