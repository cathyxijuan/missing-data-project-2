source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")
setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results TS")
source("compute TS means.R")
library(xtable)
options(xtable.floating=F)
options(xtable.timestamp="")
options(scipen=999)


test2 <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n200_mean
test2 <-  sapply(as.data.frame(round(test2, 4)), format, scientific=F)
test <- fitMCAR_MinPat_20PerMiss_2VarMiss_WM_ts_n1000000_mean
test <- as.data.frame(round(test, 4))

test <-  sapply(test, format, scientific=F)
sam <- c(rep(" ", 4), "n=200", rep(" ", 4))
sam
sam2 <- c(rep(" ", 4), "n=1000000", rep(" ", 4))
sam2
sam2 
nam <- rep(c(" ", paste0("Version", 1:8)),2)
final <- rbind(sam, test2, sam2, test)
final <- cbind(nam, final)
final
print(xtable(final), include.rownames = F)

data(tli)
xtable(tli[1:10, ])

?gsub
grep("[a-z]", letters)
gsub("([ab])", "\\E_", "abc and ABC")
?paste0
