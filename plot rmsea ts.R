library(ggplot2)
library(gridExtra)
library(reshape2)
library(dplyr)

data <- read.csv("data_study1.csv")
data
data1 <- filter(data,Number_Of_CR=="Two Correlated Residuals"
                & Missing_Mechanism=="  MCAR" 
                & FC=="Factor Correlation = 0" )
data1
load("fitMCAR_50PerMiss_4VarMiss_2CR_SF_TS_n1000000.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_DF_TS_n1000000.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_SF_TS_n1000000.RData")
load("fitMCAR_20PerMiss_4VarMiss_2CR_DF_TS_n1000000.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_SF_TS_n1000000.RData")
load("fitMCAR_50PerMiss_2VarMiss_2CR_DF_TS_n1000000.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_SF_TS_n1000000.RData")
load("fitMCAR_20PerMiss_2VarMiss_2CR_DF_TS_n1000000.RData")


load("fitNoMissingShort_2CR_SF.RData")
load("fitNoMissingShort_2CR_DF.RData")

fitNoMissingShort_2CR_SF
fitNoMissingShort_2CR_DF

#four variables missing
df0 <- fitNoMissingShort_2CR_DF[[1]][1:5, 2]
df20 <-fitMCAR_20PerMiss_4VarMiss_2CR_DF_TS_n1000000["rmsea.uncor", 1:5]
df50 <-fitMCAR_50PerMiss_4VarMiss_2CR_DF_TS_n1000000["rmsea.uncor", 1:5]

sf0 <- fitNoMissingShort_2CR_SF[[1]][1:5, 2]
sf20 <-fitMCAR_20PerMiss_4VarMiss_2CR_SF_TS_n1000000["rmsea.uncor", 1:5]
sf50 <-fitMCAR_50PerMiss_4VarMiss_2CR_SF_TS_n1000000["rmsea.uncor", 1:5]




df02 <- fitNoMissingShort_2CR_DF[[1]][1:5, 2]
df202 <-fitMCAR_20PerMiss_2VarMiss_2CR_DF_TS_n1000000["rmsea.uncor", 1:5]
df502 <-fitMCAR_50PerMiss_2VarMiss_2CR_DF_TS_n1000000["rmsea.uncor", 1:5]

sf02 <- fitNoMissingShort_2CR_SF[[1]][1:5, 2]
sf202 <-fitMCAR_20PerMiss_2VarMiss_2CR_SF_TS_n1000000["rmsea.uncor", 1:5]
sf502 <-fitMCAR_50PerMiss_2VarMiss_2CR_SF_TS_n1000000["rmsea.uncor", 1:5]

rmsea <- c(df02, df202 ,df502, df0, df20 ,df50, sf02, sf202 ,sf502, sf0, sf20 ,sf50)
length(rmsea)
data1$RMSEA <- rmsea
nrow(data1)

ggplot(data1, aes(x=Size_Of_CR, y=RMSEA)) + 
  geom_line(aes(linetype=Percent_Missing, color=Percent_Missing)) + 
  geom_point(aes(color=Percent_Missing)) +
  facet_grid(Location_Of_Misfit~Number_of_Missing_Variables) +
  xlab("Size of Correlated Residual (Degree of Misfit)") +
  scale_y_continuous(limits = c(0, 0.17))+ 
  theme_bw() 