

library(lavaan)
 


load("simuDataComplete.RData") 
data1 <-simuDataComplete
n <- nrow(data1)



fitted.mod <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'



fit.Mplus.obs<-cfa(fitted.mod,data=data1,mimic="MPLUS",estimator="MLM", information="observed")
df <- 54
mplus.obs.c <- fit.Mplus.obs@Fit@test$satorra.bentler$scaling.factor #0.9655038


fit.Mplus.exp<-cfa(fitted.mod,data=data1,mimic="MPLUS",estimator="MLM", information="expected")
mplus.exp.c <- fit.Mplus.exp@Fit@test$satorra.bentler$scaling.factor #0.9655038
#same as the previous one because for the saturated model, the sample covariance matrix is an unbiased estimation of the population covariance matrix






fit.EQS.obs<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="MLM", information="observed")
eqs.obs.c <- fit.EQS.obs@Fit@test$satorra.bentler$scaling.factor #0.3823781


fit.EQS.exp<-cfa(fitted.mod,data=data1,mimic="EQS",estimator="MLM", information="expected")
eqs.exp.c <- fit.EQS.exp@Fit@test$satorra.bentler$scaling.factor #1.037378






####reproduce fit.Mplus.obs
fit.Mplus.obs@Options$h1.information = "unstructured" 


W.Mplus.obs <- lavaan:::lav_model_h1_information_observed(lavmodel = fit.Mplus.obs@Model,
                                                          lavsamplestats = fit.Mplus.obs@SampleStats, 
                                                          lavdata = fit.Mplus.obs@Data, 
                                                          lavoptions = fit.Mplus.obs@Options, 
                                                          lavimplied = fit.Mplus.obs@implied,
                                                          lavh1 = fit.Mplus.obs@h1, lavcache = fit.Mplus.obs@Cache)[[1]]



B1.Mplus.obs <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit.Mplus.obs@Model,
                                                            lavsamplestats = fit.Mplus.obs@SampleStats, 
                                                            lavdata = fit.Mplus.obs@Data,
                                                            lavoptions = fit.Mplus.obs@Options, 
                                                            lavimplied = fit.Mplus.obs@implied,
                                                            lavh1 = fit.Mplus.obs@h1, lavcache = fit.Mplus.obs@Cache)[[1]]

Wi.Mplus.obs <-solve(W.Mplus.obs)
Gamma.Mplus.obs <- Wi.Mplus.obs %*% B1.Mplus.obs %*% Wi.Mplus.obs
deltabreve.Mplus.obs <- lavInspect(fit.Mplus.obs, "delta")


U.Mplus.obs <- W.Mplus.obs-
  W.Mplus.obs%*%deltabreve.Mplus.obs%*%solve(t(deltabreve.Mplus.obs)%*%W.Mplus.obs%*%deltabreve.Mplus.obs)%*%t(deltabreve.Mplus.obs)%*%W.Mplus.obs
c.Mplus.obs<- lav_matrix_trace(U.Mplus.obs%*%Gamma.Mplus.obs)/df
c.Mplus.obs  #0.9655038  produced exactly 
  
  




####reproduce fit.Mplus.exp
fit.Mplus.exp@Options$h1.information = "unstructured" 


W.Mplus.exp <- lavaan:::lav_model_h1_information_expected(lavmodel = fit.Mplus.exp@Model,
                                                          lavsamplestats = fit.Mplus.exp@SampleStats, 
                                                          lavdata = fit.Mplus.exp@Data, 
                                                          lavoptions = fit.Mplus.exp@Options, 
                                                          lavimplied = fit.Mplus.exp@implied,
                                                          lavh1 = fit.Mplus.exp@h1, lavcache = fit.Mplus.exp@Cache)[[1]]



B1.Mplus.exp <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit.Mplus.exp@Model,
                                                             lavsamplestats = fit.Mplus.exp@SampleStats, 
                                                             lavdata = fit.Mplus.exp@Data,
                                                             lavoptions = fit.Mplus.exp@Options, 
                                                             lavimplied = fit.Mplus.exp@implied,
                                                             lavh1 = fit.Mplus.exp@h1, lavcache = fit.Mplus.exp@Cache)[[1]]

Wi.Mplus.exp <-solve(W.Mplus.exp)
Gamma.Mplus.exp <- Wi.Mplus.exp %*% B1.Mplus.exp %*% Wi.Mplus.exp
deltabreve.Mplus.exp <- lavInspect(fit.Mplus.exp, "delta")


U.Mplus.exp <- W.Mplus.exp-
  W.Mplus.exp%*%deltabreve.Mplus.exp%*%solve(t(deltabreve.Mplus.exp)%*%W.Mplus.exp%*%deltabreve.Mplus.exp)%*%t(deltabreve.Mplus.exp)%*%W.Mplus.exp
c.Mplus.exp<- lav_matrix_trace(U.Mplus.exp%*%Gamma.Mplus.exp)/df
c.Mplus.exp  #0.9655038  produced exactly 





####reproduce fit.EQS.obs
fit.EQS.obs@Options$h1.information = "unstructured" 


W.EQS.obs <- lavaan:::lav_model_h1_information_observed(lavmodel = fit.EQS.obs@Model,
                                                        lavsamplestats = fit.EQS.obs@SampleStats, 
                                                        lavdata = fit.EQS.obs@Data, 
                                                        lavoptions = fit.EQS.obs@Options, 
                                                        lavimplied = fit.EQS.obs@implied,
                                                        lavh1 = fit.EQS.obs@h1, lavcache = fit.EQS.obs@Cache)[[1]]



B1.EQS.obs <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit.EQS.obs@Model,
                                                           lavsamplestats = fit.EQS.obs@SampleStats, 
                                                           lavdata = fit.EQS.obs@Data,
                                                           lavoptions = fit.EQS.obs@Options, 
                                                           lavimplied = fit.EQS.obs@implied,
                                                           lavh1 = fit.EQS.obs@h1, lavcache = fit.EQS.obs@Cache)[[1]]



Wi.EQS.obs <-solve(W.EQS.obs)
Gamma.EQS.obs <- Wi.EQS.obs %*% B1.EQS.obs %*% Wi.EQS.obs


fit.EQS.obs@Options$h1.information = "structured" 


W.EQS.obs <- lavaan:::lav_model_h1_information_observed(lavmodel = fit.EQS.obs@Model,
                                                        lavsamplestats = fit.EQS.obs@SampleStats, 
                                                        lavdata = fit.EQS.obs@Data, 
                                                        lavoptions = fit.EQS.obs@Options, 
                                                        lavimplied = fit.EQS.obs@implied,
                                                        lavh1 = fit.EQS.obs@h1, lavcache = fit.EQS.obs@Cache)[[1]]


B1.EQS.obs <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit.EQS.obs@Model,
                                                           lavsamplestats = fit.EQS.obs@SampleStats, 
                                                           lavdata = fit.EQS.obs@Data,
                                                           lavoptions = fit.EQS.obs@Options, 
                                                           lavimplied = fit.EQS.obs@implied,
                                                           lavh1 = fit.EQS.obs@h1, lavcache = fit.EQS.obs@Cache)[[1]]


Wi.EQS.obs <-solve(W.EQS.obs)
deltabreve.EQS.obs <- lavInspect(fit.EQS.obs, "delta")

U.EQS.obs <- W.EQS.obs-
  W.EQS.obs%*%deltabreve.EQS.obs%*%solve(t(deltabreve.EQS.obs)%*%W.EQS.obs%*%deltabreve.EQS.obs)%*%t(deltabreve.EQS.obs)%*%W.EQS.obs
c.EQS.obs<- lav_matrix_trace(U.EQS.obs%*%Gamma.EQS.obs)/df
c.EQS.obs  #-0.1431069






####reproduce fit.EQS.exp
fit.EQS.exp@Options$h1.information = "unstructured" 


W.EQS.exp <- lavaan:::lav_model_h1_information_expected(lavmodel = fit.EQS.exp@Model,
                                                        lavsamplestats = fit.EQS.exp@SampleStats, 
                                                        lavdata = fit.EQS.exp@Data, 
                                                        lavoptions = fit.EQS.exp@Options, 
                                                        lavimplied = fit.EQS.exp@implied,
                                                        lavh1 = fit.EQS.exp@h1, lavcache = fit.EQS.exp@Cache)[[1]]



B1.EQS.exp <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit.EQS.exp@Model,
                                                           lavsamplestats = fit.EQS.exp@SampleStats, 
                                                           lavdata = fit.EQS.exp@Data,
                                                           lavoptions = fit.EQS.exp@Options, 
                                                           lavimplied = fit.EQS.exp@implied,
                                                           lavh1 = fit.EQS.exp@h1, lavcache = fit.EQS.exp@Cache)[[1]]

Wi.EQS.exp <-solve(W.EQS.exp)
Gamma.EQS.exp <- Wi.EQS.exp %*% B1.EQS.exp %*% Wi.EQS.exp


fit.EQS.exp@Options$h1.information = "structured" 


W.EQS.exp <- lavaan:::lav_model_h1_information_expected(lavmodel = fit.EQS.exp@Model,
                                                        lavsamplestats = fit.EQS.exp@SampleStats, 
                                                        lavdata = fit.EQS.exp@Data, 
                                                        lavoptions = fit.EQS.exp@Options, 
                                                        lavimplied = fit.EQS.exp@implied,
                                                        lavh1 = fit.EQS.exp@h1, lavcache = fit.EQS.exp@Cache)[[1]]



B1.EQS.exp <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit.EQS.exp@Model,
                                                           lavsamplestats = fit.EQS.exp@SampleStats, 
                                                           lavdata = fit.EQS.exp@Data,
                                                           lavoptions = fit.EQS.exp@Options, 
                                                           lavimplied = fit.EQS.exp@implied,
                                                           lavh1 = fit.EQS.exp@h1, lavcache = fit.EQS.exp@Cache)[[1]]

deltabreve.EQS.exp <- lavInspect(fit.EQS.exp, "delta")


U.EQS.exp <- W.EQS.exp-
  W.EQS.exp%*%deltabreve.EQS.exp%*%solve(t(deltabreve.EQS.exp)%*%W.EQS.exp%*%deltabreve.EQS.exp)%*%t(deltabreve.EQS.exp)%*%W.EQS.exp
c.EQS.exp<- lav_matrix_trace(U.EQS.exp%*%Gamma.EQS.exp)/df
c.EQS.exp 



c.software <- c(mplus.obs.c,mplus.exp.c, eqs.obs.c, eqs.exp.c) #correction value produced by Lavaan 

c.manually <- c(c.Mplus.obs, c.Mplus.obs, c.EQS.obs, c.EQS.exp)#correction value calculated by equations 

result <- data.frame(c.software, c.manually)
rownames(result) <- c("Mplus.obs", "Mplus.exp", "EQS.obs" , "EQS.exp")
result
