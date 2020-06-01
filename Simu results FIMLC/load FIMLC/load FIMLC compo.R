setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")

file.list <- list.files(path="FIMLC compo results", full.names=TRUE)

for(i in 1:length(file.list)){
  load(file.list[i])
}


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n200_mean


