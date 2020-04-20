library("sjmisc")


load("fitNoMissing_WM_new.RData")
load("fitNoMissing_2CR_SF_new.RData")

load(file="fitMCAR_MinPat_20PerMiss_2VarMiss_WM_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_2VarMiss_WM_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n1000000.RData")

load(file="fitMCAR_MinPat_20PerMiss_4VarMiss_WM_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_4VarMiss_WM_n1000000.RData")
load(file="fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_n1000000.RData")
load(file="fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_n1000000.RData")

load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_n1000000.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n1000000.RData")


load(file="fitMCAR_MinPat_20PerMiss_6VarMiss_WM_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500.RData")
load(file="fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200.RData")



load("fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_n1000000.RData")
load("fitMAR_Weak_minPat_20PerMiss_6VarMiss_WM_n1000000.RData")
load("fitMAR_Weak_minPat_50PerMiss_4VarMiss_WM_n1000000.RData")
load("fitMAR_Weak_minPat_20PerMiss_4VarMiss_WM_n1000000.RData")
load("fitMAR_Weak_minPat_50PerMiss_2VarMiss_WM_n1000000.RData")
load("fitMAR_Weak_minPat_20PerMiss_2VarMiss_WM_n1000000.RData")

load("fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_n1000000.RData")
load("fitMAR_Strong_minPat_20PerMiss_6VarMiss_WM_n1000000.RData")
load("fitMAR_Strong_minPat_50PerMiss_4VarMiss_WM_n1000000.RData")
load("fitMAR_Strong_minPat_20PerMiss_4VarMiss_WM_n1000000.RData")
load("fitMAR_Strong_minPat_50PerMiss_2VarMiss_WM_n1000000.RData")
load("fitMAR_Strong_minPat_20PerMiss_2VarMiss_WM_n1000000.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_DF_n1000000.RData")
load("fitMCAR_50PerMiss_4VarMiss_2CR_SF_n1000000.RData")

fitNoMissing_WM_new
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_n1000000
fitMCAR_MinPat_20PerMiss_4VarMiss_WM_n1000000
fitMCAR_MinPat_20PerMiss_2VarMiss_WM_n1000000
fitMCAR_MinPat_50PerMiss_2VarMiss_WM_n1000000
fitMCAR_MaxPat_20PerMiss_2VarMiss_WM_n1000000
fitMCAR_MaxPat_50PerMiss_2VarMiss_WM_n1000000
fitMCAR_MaxPat_20PerMiss_4VarMiss_WM_n1000000
fitMCAR_MaxPat_50PerMiss_4VarMiss_WM_n1000000
fitMAR_Weak_minPat_50PerMiss_6VarMiss_WM_n1000000
fitNoMissing_2CR_SF_new
fitMCAR_50PerMiss_4VarMiss_2CR_SF_n1000000

fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500_pooled <- matrix(0, nrow=12, ncol=9)

for(i in 1:1000){
  fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500_pooled <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500_pooled+ fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500[[i]]
}
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500_pooled <- round(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500_pooled/1000, 6)
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n500_pooled




fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled <- matrix(0, nrow=12, ncol=9)

for(i in 1:30){
  fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled+ fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200[[i]]
}
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled <- round(fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled/30,6)
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled

fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled + fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200[[1]]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled+ fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200[[2]]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled <- fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled+ fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200[[3]]
fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200_pooled/3
ch <-rep(NA, 1000) 
for(i in 1:1000){
  ch[i] <-  fitMCAR_MinPat_50PerMiss_6VarMiss_WM_n200[[i]]["cfi.corr.obs",1]
}
mean(ch) 
 logic <- ch>1
which(logic==T)
