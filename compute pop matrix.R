load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_2CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_SF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_1CR_DF_new.RData")
load("/Volumes/SP PHD U3/missing-data-project-2/fitNoMissing_WM_new.RData")

fitNoMissing_2CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[1,], mode = "numeric"), 4), 
                                        nrow=4,
                                        byrow=T)

fitNoMissing_2CR_SF_new_CFI <- matrix(rep(as.vector(fitNoMissing_2CR_SF_new[2,], mode = "numeric"), 4), 
                                      nrow=4, 
                                      byrow=T)
fitNoMissing_2CR_SF_matrix <- rbind(fitNoMissing_2CR_SF_new_RMSEA, fitNoMissing_2CR_SF_new_CFI)


save(fitNoMissing_2CR_SF_matrix, file="fitNoMissing_2CR_SF_matrix.RData")


fitNoMissing_1CR_SF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_1CR_SF_new[1,], mode = "numeric"), 4), 
                                        nrow=4,
                                        byrow=T)

fitNoMissing_1CR_SF_new_CFI <- matrix(rep(as.vector(fitNoMissing_1CR_SF_new[2,], mode = "numeric"), 4), 
                                      nrow=4, 
                                      byrow=T)
fitNoMissing_1CR_SF_matrix <- rbind(fitNoMissing_1CR_SF_new_RMSEA, fitNoMissing_1CR_SF_new_CFI)


save(fitNoMissing_1CR_SF_matrix, file="fitNoMissing_1CR_SF_matrix.RData")



fitNoMissing_1CR_DF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_1CR_DF_new[1,], mode = "numeric"), 4), 
                                        nrow=4,
                                        byrow=T)

fitNoMissing_1CR_DF_new_CFI <- matrix(rep(as.vector(fitNoMissing_1CR_DF_new[2,], mode = "numeric"), 4), 
                                      nrow=4, 
                                      byrow=T)
fitNoMissing_1CR_DF_matrix <- rbind(fitNoMissing_1CR_DF_new_RMSEA, fitNoMissing_1CR_DF_new_CFI)


save(fitNoMissing_1CR_DF_matrix, file="fitNoMissing_1CR_DF_matrix.RData")




fitNoMissing_2CR_DF_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_2CR_DF_new[1,], mode = "numeric"), 4), 
                                        nrow=4,
                                        byrow=T)

fitNoMissing_2CR_DF_new_CFI <- matrix(rep(as.vector(fitNoMissing_2CR_DF_new[2,], mode = "numeric"), 4), 
                                      nrow=4, 
                                      byrow=T)
fitNoMissing_2CR_DF_matrix <- rbind(fitNoMissing_2CR_DF_new_RMSEA, fitNoMissing_2CR_DF_new_CFI)


save(fitNoMissing_2CR_DF_matrix, file="fitNoMissing_2CR_DF_matrix.RData")




fitNoMissing_WM_new_RMSEA <- matrix(rep(as.vector(fitNoMissing_WM_new[1,], mode = "numeric"), 4), 
                                    nrow=4,
                                    byrow=T)

fitNoMissing_WM_new_CFI <- matrix(rep(as.vector(fitNoMissing_WM_new[2,], mode = "numeric"), 4), 
                                  nrow=4, 
                                  byrow=T)
fitNoMissing_WM_matrix <- rbind(fitNoMissing_WM_new_RMSEA, fitNoMissing_WM_new_CFI)


save(fitNoMissing_WM_matrix, file="fitNoMissing_WM_matrix.RData")

