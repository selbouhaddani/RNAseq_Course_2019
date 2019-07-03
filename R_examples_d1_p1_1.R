if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install("RNAseq123")
pkgs <- c("tidyverse", "RColorBrewer", "R.utils", "glmnet", "ISLR", "ranger", 
          "caret", "tree", "rpart", "randomForest", "e1071", "tidyverse", "OmicsPLS")
sapply(pkgs, function(e) if (!requireNamespace(e, quietly = TRUE)) install.packages(e) else "already installed")

###### Some distributions ##########

par(mfrow=c(2,2))
plot(seq(-3, 3, length.out = 1000), 
     dnorm(x = seq(-3, 3, length.out = 1000)), type = 'l', ylab = "Normal")
plot(seq(0, 5, length.out = 1000), 
     dexp(x = seq(0, 5, length.out = 1000), rate = 3), type = "l", ylab = "Exponential")
plot(seq(0,10,by = 1), 
     dpois(x = seq(0,10,by = 1), lambda = 3), type='h', ylab = "Poisson")
plot(seq(0,10,by = 1), 
     dnbinom(x = seq(0,10,by = 1), size = 2, mu = 3), type='h', ylab = "NB")
par(mfrow=c(1,1))

## Corresponding histograms

par(mfrow=c(2,2))
X <- rnorm(n = 1000, mean = 1.8, sd = 0.1)
hist(X)
X <- rexp(n = 1000, rate = 3)
hist(X)
X <- rpois(n = 1000, lambda = 3)
hist(X)
X <- rnbinom(n = 1000, size = 2, mu = 3)
hist(X)
par(mfrow=c(1,1))




