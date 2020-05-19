setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")

file.list <- list.files(path="FIMLC SD results", full.names=TRUE)

for(i in 1:length(file.list)){
  load(file.list[i])
}
