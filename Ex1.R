## Pieter Bouke
## Good Meta Data
## Function works fine
## Good testing (test1, test2)

#creator: Bouke Pieter Ottow
#date: 5-11-2013
#
#This function plots a map of the administrative boundaries of a country.
#Required input is country-code and level.
#Default is "NLD" and level 1

library(raster)
create_map <- function(country = "NLD", level = 1) {
  data <- raster::getData("GADM", country = country, level = level)
  plot(data, bg = "grey", axes=T, col = "red")
}
create_map("BEL", 0) # test 1
create_map() # test 2