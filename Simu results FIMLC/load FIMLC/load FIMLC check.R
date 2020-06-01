setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")

file.list <- list.files(path="FIMLC check results", full.names=TRUE)

for(i in 1:length(file.list)){
  load(file.list[i])
}

# fitMAR_Strong_minPat_50PerMiss_6VarMiss_WM_fimlc_checks_n1000_mean
# fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200_mean
# fitMCAR_0PerMiss_1CR_SF_fimlc_checks_n200_mean
