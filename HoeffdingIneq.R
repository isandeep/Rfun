## ################################################################
## purpose: simulate hoeffding inequality in R
## author: Sandeep Illuri
## created: 19 Feb 2015 13:44:10 IST
## ################################################################

nCoins <- 1000  # fair coins p(HEAD)=p(TRIAL)=0.5
size <- 10 # simulate each coin 10 times



v1 <- list()
v_rand <- list()
v_min <- list()

for (i in 1:100000){
    res <- rbinom(nCoins, size, 0.5)
    c1 <- 1
    c_rand <- sample(1:1000, 1)
    c_min <- which(res == min(res))
    v1[[i]] <- res[c1]/10
    v_rand[[i]] <- res[c_rand]/10
    v_min <- res[c_min]/10
}

v1 = unlist(v1)
v_rand = unlist(v_rand)
v_min = unlist(v_min)
E_X = 0.5*size  # Expected value of x
