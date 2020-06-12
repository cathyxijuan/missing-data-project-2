setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS")

file.list <- list.files(path="TS rmse results", full.names=TRUE)

for(i in 1:length(file.list)){
  load(file.list[i])
}
