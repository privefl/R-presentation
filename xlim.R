library(tidyverse)

simu <- data.frame(x = 1:10, y = c(1:9, 100) + rnorm(10))
myggplot(simu, aes(x, y)) + 
  geom_point(cex = 2) + 
  geom_smooth(method = "lm")



myggplot(simu, aes(x, y)) + 
  geom_point(cex = 2) + 
  geom_smooth(method = "lm") + 
  xlim(NA, 9.5)


myggplot(simu, aes(x, y)) + 
  geom_point(cex = 2) + 
  geom_smooth(method = "lm") + 
  coord_cartesian(xlim = c(1, 9.5))
