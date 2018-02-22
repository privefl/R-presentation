library(bigstatsr)

fbm <- FBM(5000, 2000);
fbm[] <- rnorm(length(fbm))

corr <- big_cor(fbm)


my_list <- list(list(a = 2, b = 3), list(c = 4, d = 2))
