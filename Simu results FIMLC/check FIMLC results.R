source("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC/compute FIMLC mean.R")


fitNoMissing_2CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[1,], mode = "numeric"), 8), 
                                        nrow=8,
                                        ncol=ncol(fitNoMissing_2CR_SF_new), 
                                        byrow=T)

fitNoMissing_2CR_SF_new_CFI <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[2,], mode = "numeric"), 8), 
                                        nrow=8,
                                        ncol=ncol(fitNoMissing_2CR_SF_new), 
                                        byrow=T)

                                       
fitMCAR_0PerMiss_2CR_SF_fimlc_n200_mean <- list.mean(fitMCAR_0PerMiss_2CR_SF_fimlc_n200)[nam,]
fitMCAR_0PerMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_n500), 1:2, mean)[nam,]
fitMCAR_0PerMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_n1000), 1:2, mean)[nam,]



#### New Table#####

###RMSEA###

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)[nam,]
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)[nam,]
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_mean_rmsea_part <- rbind(fitNoMissing_2CR_SF_new[1,11:15],
                                                                 fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean[1:8,11:15],
                                                                 fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean[1:8,11:15],
                                                                 fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean[1:8,11:15])



fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)[nam,]

fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_mean_rmsea_part <- rbind(fitNoMissing_2CR_SF_new[1,11:15],
                                                                 fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean[1:8,11:15],
                                                                 fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean[1:8,11:15],
                                                                 fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean[1:8,11:15])
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_mean_rmsea_part

fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part <- cbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_mean_rmsea_part,
                                                       fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_mean_rmsea_part)

colnames(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part)<- rep(paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep="") ,2)
fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part


###CFI###

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)[nam,]
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)[nam,]
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)[nam,]

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_mean_cfi_part <- rbind(fitNoMissing_2CR_SF_new[2,11:15],
                                                               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean[9:16,11:15],
                                                               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean[9:16,11:15],
                                                               fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean[9:16,11:15])



fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, mean)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, mean)[nam,]
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)[nam,]

fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_mean_cfi_part <- rbind(fitNoMissing_2CR_SF_new[2,11:15],
                                                               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean[9:16,11:15],
                                                               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean[9:16,11:15],
                                                               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean[9:16,11:15])
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_mean_cfi_part

fitMCAR_2VarMiss_2CR_SF_fimlc_mean_cfi_part <- cbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_mean_cfi_part,
                                                     fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_mean_cfi_part)

colnames(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_cfi_part)<- rep(paste("CR=", c(0, 0.1, 0.2, 0.3, 0.4), sep="") ,2)
fitMCAR_2VarMiss_2CR_SF_fimlc_mean_cfi_part

write.csv(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_cfi_part, file="fitMCAR_2VarMiss_2CR_SF_fimlc_mean_cfi_part.csv")

write.csv(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part, file="fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part.csv")

#####compare the differences
#rmsea
fitNoMissing_2CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[1,11:15], mode = "numeric"), 2*8*3), 
                                        nrow=8*3,
                                        ncol=5*2, 
                                        byrow=T)
abs(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part[-1,]-fitNoMissing_2CR_SF_new_RMSEA)  <0.005

diff.r <- round(abs(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part[-1,]-fitNoMissing_2CR_SF_new_RMSEA), 4)
apply(diff.r[1:8,], 2, which.min)
apply(diff.r[9:16,], 2, which.min)
apply(diff.r[17:24,], 2, which.min)
fitMCAR_2VarMiss_2CR_SF_fimlc_mean_rmsea_part-fitNoMissing_2CR_SF_new_RMSEA

#cfi

fitNoMissing_2CR_SF_new_CFI <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[2,11:15], mode = "numeric"), 2*8*3), 
                                        nrow=8*3,
                                        ncol=5*2, 
                                        byrow=T)
abs(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_cfi_part[-1,]-fitNoMissing_2CR_SF_new_CFI)  <0.005

diff.c <- round(abs(fitMCAR_2VarMiss_2CR_SF_fimlc_mean_cfi_part[-1,]-fitNoMissing_2CR_SF_new_CFI), 4)
apply(diff.c[1:8,], 2, which.min)
apply(diff.c[9:16,], 2, which.min)
apply(diff.c[17:24,], 2, which.min)


####checks


fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000), 1:2, mean)

ch <- rep(0, 1000)
for(i in 1:1000){
  ch[i]<-fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200[[i]]["fit.str.comp.pos.def.implied",4]
}



fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_mean_part <- rbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200_mean[,11:15],
                                                                         fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500_mean[,11:15],
                                                                         fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000_mean[,11:15])

fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000), 1:2, mean)

fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_mean_part <- rbind(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200_mean[,11:15],
                                                                         fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500_mean[,11:15],
                                                                         fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000_mean[,11:15])
fitMCAR_2VarMiss_2CR_SF_fimlc_checks_mean_checks_part <- cbind(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_mean_part , 
                                                               fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_mean_part)

write.csv(fitMCAR_2VarMiss_2CR_SF_fimlc_checks_mean_checks_part , 
          file="fitMCAR_2VarMiss_2CR_SF_fimlc_checks_mean_checks_part .csv")


##previous table



fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200), 1:2, mean)[nam,]

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500), 1:2, mean)[nam,]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000), 1:2, mean)[nam,]



fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean <- rbind(fitNoMissing_2CR_SF_new["rmsea",] , 
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[1:8, ],
                                                           fitNoMissing_2CR_SF_new["cfi",] ,
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[9:16, ])

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean <- rbind(fitNoMissing_2CR_SF_new["rmsea",] , 
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[1:8, ],
                                                           fitNoMissing_2CR_SF_new["cfi",] , 
                                                           fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[9:16, ])
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean <- rbind(fitNoMissing_2CR_SF_new["rmsea",] , 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[1:8, ],
                                                            fitNoMissing_2CR_SF_new["cfi",] , 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[9:16, ])


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_rmsea <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[1:9, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_rmsea <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[2:9, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_rmsea <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[2:9, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_cfi <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean[10:18, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_cfi <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean[11:18, ]
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_cfi <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean[11:18, ]


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea <- rbind(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_rmsea, 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_rmsea, 
                                                            fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_rmsea)

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea_part <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea[,11:15]


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi <- rbind(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200_mean_cfi, 
                                                          fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500_mean_cfi, 
                                                          fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000_mean_cfi)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi_part <- fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi[,11:15]
write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea_part, 
          file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea_part.csv" )
write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi_part, 
          file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi_part.csv" )

write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea, 
          file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_rmsea.csv" )
write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi, 
          file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_mean_cfi.csv" )



##look at the differences###

apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA
apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA
apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000_mean), 1:2, mean)[1:8, ]-fitNoMissing_2CR_SF_new_RMSEA




#### SD ##############

fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500), 1:2, sd)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200_sd
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500_sd



##### checks####
options(max.print=1000000)
fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n200_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n200), 1:2, mean)
fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n500_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n500), 1:2, mean)
fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n1000_mean <- 
  apply(simplify2array(fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n1000), 1:2, mean)





fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500), 1:2, mean)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000), 1:2, mean)


fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500), 1:2, mean)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000), 1:2, mean)

fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500), 1:2, mean)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000_mean <- 
  apply(simplify2array(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000), 1:2, mean)


fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500), 1:2, mean)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000_mean <- 
  apply(simplify2array(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000), 1:2, mean)

fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks <- rbind(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200_mean,
                                                        fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500_mean,
                                                        fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000_mean)
write.csv(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks, file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks.csv")
