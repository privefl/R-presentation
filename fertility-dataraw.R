library(tidyr)
fertilityData <- read.csv("../gRadual-intRoduction-tidyverse/data/total_fertility.csv", 
                          check.names = FALSE)

library(tidyverse)
fertilityData[1:12, 1:7] %>%
  drop_na() %>% 
  as_tibble() %>%
  dput()

fertilityData %>%
  rename(Country = `Total fertility rate`) %>%
  gather(key = "Year", value = "Fertility", -Country)

gather(fertilityData, "year", -1)

library(dplyr)
# From http://stackoverflow.com/questions/1181060
stocks <- tibble(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)

gather(stocks, stock, price, -1)
stocks %>% gather(stock, price, -time)
