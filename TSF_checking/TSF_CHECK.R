# Code for doing a quick check on the arrangment of time since fire values for each of the 5 vegetaion classes used in my honours project
library(sf)
library(ggplot2)

#Path to time since fire & veg class file
TSF_PATH <- "TSF_checking/TSF_CHECK.shp"

#Read .shp
TSF_Check <- st_read(TSF_PATH)

ggplot(TSF_Check, aes(x=TSF)) + geom_density() + facet_wrap(~Class)
