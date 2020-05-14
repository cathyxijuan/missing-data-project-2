
# R code for RMSEA point estimate and confidence interval
# under MAR normal or MCAR normal data

############################################
#  Stpe 1: fit the saturated model
############################################
library(lavaan)

#---------------------------------------------------------------------------------------#
#For complete data, the population RMSEA and CFI are 0.1915 and 0.538 respectively. 
#For incomplete data, the population RMSEA and CFI are 0.112 and 0.754 respectively. 


load("simuDatawithMiss.RData") #this is N=1,000,000
data1 <-simuDatawithMiss[1:500,] 
#at N=100, the saturated model has the following warning msg:
#Warning message:
 # In lav_model_estimate(lavmodel = lavmodel, lavpartable = lavpartable,  :
  #                        lavaan WARNING: the optimizer (NLMINB) claimed the model converged,
   #                     but not all elements of the gradient are (near) zero;
    #                    the optimizer may not have found a local solution
     #                   use check.gradient = FALSE to skip this check.


N <- nrow(data1)


MA <- '     
f1 =~ NA*x1 + x2 + x3 +x4 + x5 + x6 + x7 + x8 + x9 +x10 + x11 + x12
f1 ~~ 1*f1
'


#Lai's way of specifying the saturated model; 
#he has to do this way because the order of the columns in the information matrix is deterimed by how you specify the saturated model. z
Msat <- '
x1~1
x2~1
x3~1
x4~1
x5~1
x6~1
x7~1
x8~1
x9~1
x10~1
x11~1
x12~1
x1~~x1
x1~~x2
x1~~x3
x1~~x4
x1~~x5
x1~~x6
x1~~x7
x1~~x8
x1~~x9
x1~~x10
x1~~x11
x1~~x12
x2~~x2
x2~~x3
x2~~x4
x2~~x5
x2~~x6
x2~~x7
x2~~x8
x2~~x9
x2~~x10
x2~~x11
x2~~x12
x3~~x3
x3~~x4
x3~~x5
x3~~x6
x3~~x7
x3~~x8
x3~~x9
x3~~x10
x3~~x11
x3~~x12
x4~~x4
x4~~x5
x4~~x6
x4~~x7
x4~~x8
x4~~x9
x4~~x10
x4~~x11
x4~~x12
x5~~x5
x5~~x6
x5~~x7
x5~~x8
x5~~x9
x5~~x10
x5~~x11
x5~~x12
x6~~x6
x6~~x7
x6~~x8
x6~~x9
x6~~x10
x6~~x11
x6~~x12
x7~~x7
x7~~x8
x7~~x9
x7~~x10
x7~~x11
x7~~x12
x8~~x8
x8~~x9
x8~~x10
x8~~x11
x8~~x12
x9~~x9
x9~~x10
x9~~x11
x9~~x12
x10~~x10
x10~~x11
x10~~x12
x11~~x11
x11~~x12
x12~~x12
'

fit.sat <- cfa(Msat,data=data1, se="none", missing="fiml", mimic="EQS")
summary(fit.sat)
# Msat = saturated model
# X = sample of incomplete data
# fit the saturated model with FIML	in lavaan	


############################################
#  Stpe 2: fit the researcher's model
############################################
S.sat <- inspect(fit.sat, "cov.ov")
Sigmatilde<-lavInspect(fit.sat,"sampstat")$cov #when converged, S.sat and sigmatilde are the same; when S.sat is not converged; they are not the same...not sure how sigmatilde is computed in that case. 
mu.sat <- inspect(fit.sat, "mean.ov")


#####My code######
Omega <- inspect(fit.sat, "inverted.information.observed") # same as solve(inspect(fit.sat, "h1.information.observed"))
#totally the same as our Wmi.unstr; our gamma (which is his Omega) involves a triple product; his method is only valid if the model is correctly specified! 
#Another thing is that for everything else he did, he multiplied it by 2; but this one is not multiple by 2
B1 <- lavaan:::lav_model_h1_information_firstorder(lavmodel = fit.sat@Model,
                                             lavsamplestats = fit.sat@SampleStats, 
                                             lavdata = fit.sat@Data,
                                             lavoptions = fit.sat@Options, 
                                             lavimplied = fit.sat@implied,
                                             lavh1 = fit.sat@h1, lavcache = fit.sat@Cache)[[1]]
Gamma <- Omega%*%B1%*%Omega
###### End my code


###my code ##
h0 <- inspect(fit.sat, "information.observed") #confirmed that these two are the same 
h0[1:5, 1:5]
h1 <- inspect(fit.sat, "h1.information.observed")
h1[1:5, 1:5]
###end my code###


fitA <- cfa(MA, sample.cov=S.sat, sample.mean=mu.sat, sample.nobs=N, se="none") 





############################################
#  Stpe 3: find RMSEA point estimate and CI with the correct method
############################################


H <- inspect(fitA, "hessian")*2 #This one, he used the TS estimates;structured model; 
#This is supposed to be the same as solve(t(deltabreveB)%*%WcB_str%*%deltabreveB); but they are slightly different 
#solve(inspect(fitA, "hessian"))[1:3,1:3] #similar to solve(t(deltabreveB)%*%WcB_str%*%deltabreveB) but not the same 
H.inv <- try(chol2inv(chol(H)), TRUE)
solve(inspect(fitA, "hessian"))[1:5,1:5]

p = 12
D <- lav_matrix_duplication(p) 
output <- rep(NA, 3)


pstar <- p*(p+1)/2
I.p <- diag(1, p)
I.pstar <- diag(1, pstar)
O.ppstar <- matrix(0, p, pstar) 
O.pstarp <- matrix(0, pstar, p)
dxdm <- cbind(I.p, O.ppstar) 
dsdm <- cbind(O.pstarp, I.pstar)

Sig.hat <- inspect(fitA, "cov.ov")
Sig.hat.inv <- chol2inv(chol(Sig.hat)) #same as solve(Sig.hat)
S <- as.matrix(inspect(fitA, "sampstat")$cov, p, p) #Saturated model's estimates.. #same estimates as those from fitting saturated model directly
S.inv <- chol2inv(chol(S)) #equivalent to solve(S.inv)
tx <- resid(fitA)$mean




T1 <-2*t(dxdm) %*% Sig.hat.inv %*% dxdm ##uses structured model estimates #change this to S.inv increased the adjustment term

T2 <- t(dsdm) %*% lav_matrix_duplication_pre_post(S.inv%x% S.inv) %*% dsdm #saturated model's estimates; unstructured estimates
T.tol <- T1+T2 #this is supposed to be the weight matrix, it is a mixtured of structured and saturated model estimates. 
#T.tol is called T in his original code

Delta <- lavaan:::computeDelta(fitA@Model)[[1]] #TS estimates #same as inspect(fitA, "delta")
dim(Delta)
a1 <- p+1
a2 <- p+pstar
mu.dev <- Delta[1:p,]
sigma.dev <- Delta[a1:a2,]

W <- (Sig.hat.inv %x% Sig.hat.inv) #TS estimates ; this is trying to get weight matrix ##THIS IS WHERE THE MAJOR MISTAKE!! NEED TO DIVIDE IT BY TWO
DW <- lav_matrix_duplication_pre(W)
tt <- tx %x% I.p + I.p %x% tx 

#The following section of the code is very hard to read.
K1a <- t(mu.dev) %*% Sig.hat.inv %*% dxdm
K1b <- t(sigma.dev) %*% DW %*% tt %*% dxdm 
K2 <-  t(sigma.dev) %*% (lav_matrix_duplication_pre_post(W)) %*% dsdm 
K <- -2*(K1a)-K1b - K2



Q <- T.tol - t(K)%*% H.inv %*% K #T.tol uses a mixture of saturated and structured model estimates; K (particularly W matrix inside K) uses structured model estimates; H.inv probably uses structured model estimates? 
#the weight matrix inside T.tol is different from the weight matrix inside K. 
n <- inspect(fitA, "nobs")
F.hat <- t(tx)%*%Sig.hat.inv%*%tx + log(det(Sig.hat)) - log(det(S)) + sum(diag(S%*%Sig.hat.inv)) - p #This is second stage's F; this calculation is FINE! 
Fbc <- F.hat - sum(diag(Q%*%Omega ))/(2*n)
M.df <- fitmeasures(fitA, "df")
RMSEA.BC <- sqrt(Fbc/M.df)
RMSEA.BC



#####my code ###
fitA@Options$h1.information = "structured" 


Wc_str <- lavaan:::lav_model_h1_information_observed(lavmodel = fitA@Model,
                                                     lavsamplestats = fitA@SampleStats, lavdata = fitA@Data, 
                                                     lavoptions = fitA@Options, lavimplied = fitA@implied,
                                                     lavh1 =fitA@h1, lavcache = fitA@Cache)[[1]]



Uc.str <- Wc_str-Wc_str%*%Delta%*%solve(t(Delta)%*%Wc_str%*%Delta)%*%t(Delta)%*%Wc_str
Wc_str[1:5, 1:5]



c<- sum(diag(Uc.str%*%Gamma))
c #with Lai's method, the magnitute of c value is typically smaller than that of our method. 




RMSEA.BC2 <- sqrt(F.hat/M.df-c/(n*M.df)) 
RMSEA.BC2


####producing our c with as much as his matrices as possible

c3<- sum(diag(Q%*%Omega))/2 #Omega is our Gamma; Q is the residual weight matrix
c3 
 ###THIS SHOWS THAT THE MAIN DIFFERENCE COMING FROM the calculation of Q!!!!!!!!!!!!
RMSEA.BC3 <- sqrt(F.hat/M.df-c3/(n*M.df)) 
RMSEA.BC3


#compare lav_matrix_duplication_pre_post(W) with Wc_str
dim(Wc_str)
Wc_str[13:15, 13:15]
lav_matrix_duplication_pre_post(W)[1:3, 1:3]/2
#####end my code###

