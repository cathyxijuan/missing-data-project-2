setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")

file.list <- list.files(path="FIMLC dif results", full.names=TRUE)

for(i in 1:length(file.list)){
  load(file.list[i])
}

# round(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_dif, 2)
# 
# ch <- vector()
# for(i in 1:1000){
#   if (fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500[[i]]["cfi.cor.exp_str.equal.zero", "FC=0.4;CR=0.4"]==1){
#     ch <- c(ch, i)
#   }
# }
# ch
# 
# fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n500[[7]][,"FC=0.4;CR=0.4"]
# 
# 
# ch <- vector()
# for(i in 1:1000){
#   if (fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500[[i]]["cfi.cor.exp_str.equal.one", "FC=0.4;CR=0.3"]==1){
#     ch <- c(ch, i)
#   }
# }
# ch
# 
# fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200_mean
# round(list.sd(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n200), 3)
# 
# list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200[ch])["cfi.cor.exp_str", "FC=0.8;CR=0.3"]
# 
# 
# list.mean(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200)["cfi.cor.exp_str", "FC=0;CR=0.4"]
# 
# 
# fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif
# fitMAR_Strong_maxPat_50PerMiss_6VarMiss_WM_fimlc_n1000_dif
# 
