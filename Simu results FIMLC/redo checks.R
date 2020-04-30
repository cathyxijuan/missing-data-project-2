source("/Volumes/SP PHD U3/missing-data-project-2/functions.R")

setwd("/Volumes/SP PHD U3/missing-data-project-2/Simu results FIMLC")
load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_n200.RData")
load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_0PerMiss_2CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_0PerMiss_2CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_0PerMiss_2CR_DF_fimlc_n200.RData")
load(file="fitMCAR_0PerMiss_2CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_0PerMiss_2CR_DF_fimlc_n500.RData")
load(file="fitMCAR_0PerMiss_2CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_0PerMiss_2CR_DF_fimlc_n1000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_compo_n500.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_compo_n200.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_compo_n1000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000.RData")

load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_compo_n1000000.RData")
load(file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000000.RData")


fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n200 <- fimlc.checks(fitMCAR_0PerMiss_2CR_SF_fimlc_compo_n200,
                                                          fitMCAR_0PerMiss_2CR_SF_fimlc_n200)
fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n500 <- fimlc.checks(fitMCAR_0PerMiss_2CR_SF_fimlc_compo_n500,
                                                          fitMCAR_0PerMiss_2CR_SF_fimlc_n500)
fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n1000 <- fimlc.checks(fitMCAR_0PerMiss_2CR_SF_fimlc_compo_n1000,
                                                           fitMCAR_0PerMiss_2CR_SF_fimlc_n1000)

save(fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n200, file="fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n500, file="fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n1000, file="fitMCAR_0PerMiss_2CR_SF_fimlc_checks_n1000.RData")
fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n200 <- fimlc.checks(fitMCAR_0PerMiss_2CR_DF_fimlc_compo_n200,
                                                          fitMCAR_0PerMiss_2CR_DF_fimlc_n200)
fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n500 <- fimlc.checks(fitMCAR_0PerMiss_2CR_DF_fimlc_compo_n500,
                                                          fitMCAR_0PerMiss_2CR_DF_fimlc_n500)
fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n1000 <- fimlc.checks(fitMCAR_0PerMiss_2CR_DF_fimlc_compo_n1000,
                                                           fitMCAR_0PerMiss_2CR_DF_fimlc_n1000)

save(fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n200, file="fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n500, file="fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n1000, file="fitMCAR_0PerMiss_2CR_DF_fimlc_checks_n1000.RData")




fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n500)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500  <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n500,
                                                                    fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n500)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n500)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n500,
                                                                   fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n500)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n200)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n200)
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n200)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n200)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n500)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_compo_n500,
                                                                   fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n500)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n500)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_compo_n500,
                                                                   fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n500)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n200)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n200)

fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n200)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n200)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n500)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_compo_n500,
                                                                   fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n500)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n500)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_compo_n500,
                                                                   fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n500)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n200)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n200)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n200)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n200)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n500)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_compo_n500 ,
                                                                   fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n500 )
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_compo_n500,
                                                                   fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n500)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n500 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_compo_n500,
                                                                   fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n500)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n200)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n200)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n200)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n200 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_compo_n200,
                                                                   fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n200)
fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_compo_n1000, 
                                                                    fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_n1000)
fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_compo_n1000 ,
                                                                    fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_n1000 )
fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_compo_n1000,
                                                                    fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_n1000)
fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_compo_n1000 ,
                                                                    fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_n1000)
fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_compo_n1000,
                                                                    fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_n1000)
fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_compo_n1000,
                                                                    fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_n1000)
fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_compo_n1000,
                                                                    fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_n1000)
fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_compo_n1000 ,
                                                                    fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_n1000)
fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_n1000)
fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_n1000)
fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_n1000)
fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_n1000)
fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_n1000)
fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_n1000)
fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_n1000)
fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n1000 <-fimlc.checks(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_compo_n1000,
                                                                    fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_n1000)
save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500,file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500,file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500,file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500,file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200,file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200,file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200,file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200,file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n500,file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n500,file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n500,file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n500,file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n200,file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n200,file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n200,file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n200,file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n500,file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n500,file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n500,file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n500,file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n200,file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n200,file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n200,file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n200,file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n500,file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n500,file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n500,file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n500,file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n500.RData")
save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n200,file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n200,file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n200,file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n200,file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n200.RData")
save(fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_2VarMiss_2CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_4VarMiss_2CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_2VarMiss_1CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_2VarMiss_1CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_4VarMiss_1CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_4VarMiss_1CR_SF_fimlc_checks_n1000.RData")
save(fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_2VarMiss_2CR_DF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_2VarMiss_2CR_DF_fimlc_checks_n1000.RData")
save(fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_4VarMiss_2CR_DF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_4VarMiss_2CR_DF_fimlc_checks_n1000.RData")
save(fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_2VarMiss_1CR_DF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_2VarMiss_1CR_DF_fimlc_checks_n1000.RData")
save(fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n1000,file="fitMCAR_20PerMiss_4VarMiss_1CR_DF_fimlc_checks_n1000.RData")
save(fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n1000,file="fitMCAR_50PerMiss_4VarMiss_1CR_DF_fimlc_checks_n1000.RData")
