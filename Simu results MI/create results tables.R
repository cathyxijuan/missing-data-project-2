library(reshape2)
source("/Volumes/SP PHD U3/missing-data-project-2/Simu results MI/check MI results.R")



fitMCAR_1CR_DF_MI_rmsea_mean <-
  rbind(fitNoMissing_1CR_DF_new[1,],
        fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000000[1,],
        fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n1000_mean[1,],
        fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n500_mean[1,],
        fitMCAR_20PerMiss_2VarMiss_1CR_DF_MI_n200_mean[1,],
        fitNoMissing_1CR_DF_new[1,],
        fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000000[1,],
        fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n1000_mean[1,],
        fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n500_mean[1,],
        fitMCAR_20PerMiss_4VarMiss_1CR_DF_MI_n200_mean[1,],
        fitNoMissing_1CR_DF_new[1,],
        fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000000[1,],
        fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n1000_mean[1,],
        fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n500_mean[1,],
        fitMCAR_50PerMiss_2VarMiss_1CR_DF_MI_n200_mean[1,],
        fitNoMissing_1CR_DF_new[1,],
        fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000000[1,],
        fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n1000_mean[1,],
        fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n500_mean[1,],
        fitMCAR_50PerMiss_4VarMiss_1CR_DF_MI_n200_mean[1,])
round(fitMCAR_1CR_DF_MI_rmsea_mean, 3)





melt(fitMCAR_1CR_DF_MI_rmsea_mean)
