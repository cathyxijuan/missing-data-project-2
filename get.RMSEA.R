
# R code for RMSEA point estimate and confidence interval
# under MAR normal or MCAR normal data

############################################
#  Stpe 1: fit the saturated model
############################################
library(lavaan)

fit.sat <- lavaan(Msat, as.data.frame(X), se="none", missing="fiml")
# Msat = saturated model
# X = sample of incomplete data
# fit the saturated model with FIML	in lavaan	


############################################
#  Stpe 2: fit the researcher's model
############################################
S.sat <- inspect(fit.sat, "cov.ov")
mu.sat <- inspect(fit.sat, "mean.ov")
Omega <- inspect(fit.sat, "inverted.information.observed")


############################################
#  Stpe 3: find RMSEA point estimate and CI with the correct method
############################################

# define a new function get.RMSEA()
get.RMSEA <- function(fitA, p, Omega, conf=.90){ 
  H <- inspect(fitA, "hessian")*2
  H.inv <- try(chol2inv(chol(H)), TRUE)
  D <- lav_matrix_duplication(p) 
  output <- rep(NA, 3)
  
  if(class(H.inv)=="matrix"){
    pstar <- p*(p+1)/2
    I.p <- diag(1, p)
    I.pstar <- diag(1, pstar)
    O.ppstar <- matrix(0, p, pstar) 
    O.pstarp <- matrix(0, pstar, p)
    dxdm <- cbind(I.p, O.ppstar)
    dsdm <- cbind(O.pstarp, I.pstar)
  
    Sig.hat <- inspect(fitA, "cov.ov")
	Sig.hat.inv <- chol2inv(chol(Sig.hat))
    S <- as.matrix(inspect(fitA, "sampstat")$cov, p, p)
	S.inv <- chol2inv(chol(S))
	tx <- resid(fitA)$mean
	
	J1 <- 2*t(tx) %*% Sig.hat.inv %*% dxdm
	J2 <- lav_matrix_duplication_post(t(lav_matrix_vec(S.inv))) %*% dsdm
	J3 <- lav_matrix_duplication_post(t(lav_matrix_vec(Sig.hat.inv))) %*% dsdm
	g <- J1-J2+J3

	T1 <- 2*t(dxdm) %*% Sig.hat.inv %*% dxdm
	T2 <- t(dsdm) %*% lav_matrix_duplication_pre_post(S.inv %x% S.inv) %*% dsdm
	T <- T1+T2
	
	Delta <- lavaan:::computeDelta(fitA@Model)[[1]]
	a1 <- p+1
	a2 <- p+pstar
	mu.dev <- Delta[1:p,]
	sigma.dev <- Delta[a1:a2,]
	
	W <- Sig.hat.inv %x% Sig.hat.inv
	DW <- lav_matrix_duplication_pre(W)
	tt <- tx %x% I.p + I.p %x% tx 
	
	K1a <- t(mu.dev) %*% Sig.hat.inv %*% dxdm
	K1b <- t(sigma.dev) %*% DW %*% tt %*% dxdm 
	K2 <-  t(sigma.dev) %*% lav_matrix_duplication_pre_post(W) %*% dsdm
	K <- (-2)*K1a - K1b - K2
	Q <- T - t(K)%*% H.inv %*% K
	
	n <- inspect(fitA, "nobs")
	F.hat <- t(tx)%*%Sig.hat.inv%*%tx + log(det(Sig.hat)) - log(det(S)) + sum(diag(S%*%Sig.hat.inv)) - p
	Fbc <- F.hat - sum(diag(Q%*%Omega))/(2*n)
	Fbc <- ifelse(Fbc < 0, 0, Fbc)
	var1 <- g %*% Omega %*% t(g) / n
	SE1 <- sqrt(var1)
	
	M.df <- fitmeasures(fitA, "df")
	RMSEA.BC <- sqrt(Fbc/M.df)
	z <- qnorm((1 - conf)/2, lower.tail = FALSE)
	F.up <- Fbc + z*SE1
	F.up <- ifelse(F.up < 0, 0, F.up)
	F.low <- Fbc - z*SE1
	F.low <- ifelse(F.low < 0, 0, F.low)
	RMSEA.up <- sqrt(F.up/M.df)
	RMSEA.low <- sqrt(F.low/M.df)

    output <- c(RMSEA.BC, RMSEA.low, RMSEA.up)
	names(output) <- c("RMSEA","CI_low","CI_up")
  }# End of if Hessian is positive definite

return(output)
}# End of get.RMSEA()


## use the new function to find RMSEA point estimate and CI
fitA <- lavaan(MA, sample.cov=S.sat, sample.mean=mu.sat, sample.nobs=N, se="none")
# MA = researcher's model

get.RMSEA(fitA, p, Omega, conf=.90)

