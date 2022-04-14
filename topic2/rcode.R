install.packages("reticulate")
library(reticulate)
#use_python("/usr/local/bin/python")
setwd('D:/dataworks2/STAT-3255/topic2')

pd = import("pandas",convert=FALSE)
collisions = pd$read_csv("nyc_mv_collisions_202201.csv")
collisions$head()
class(collisions)
collisions_r = collisions %>% as.data.frame()

source_python('add.py')
add(5, 10)
library(tidyverse)
ggplot(df_r$hour24) %>% geom_histogram()
library(ggplot2)

ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

ggplot(df_r,aes(x=hour24,fill=Borough))+ 
  geom_histogram(binwidth = 1, bins = 24)+
  ggtitle("Hourly Request by Borough")
