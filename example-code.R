library(bigstatsr)

fbm <- FBM(5000, 2000);
fbm[] <- rnorm(length(fbm))

corr <- big_cor(fbm)
