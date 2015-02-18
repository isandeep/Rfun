## Purpose: Show L2 regularization in action (Ridge regression)
## Author: Sandeep Illuri
## Created: 18 Feb, 2015 12:28:10 IST

library(MASS)

x1 <- rnorm(20)
x2 <- rnorm(20, mean=x1, sd=.01)
y <- rnorm(20, mean=3+x1+x2)
lm(y ~ x1 + x2)$coeff
## (Intercept)          x1          x2 
##    2.590740   -2.203207    4.187654 
coef(lm.ridge(y ~ x1 + x2, lambda=1))
##                  x1        x2 
## 2.5717762 0.9620549 0.9698479 
