## Jan Verbesselt
## a facet wrap example
rm(list = ls())
library(rasta)

## load the data
## for your information
## the .rda was created with the following code within my data folder
# save (sceneinfo, ts1, ts2, file="data/ex7.rda", compress = "xz")

load("data/ex7.rda")

## create a data.frame
d1 <- data.frame(
  date = sceneinfo$date,
  sensor = sceneinfo$sensor,
  ndvi = as.numeric(ts1), 
  zone = "region1"
)

d2 <- data.frame(
  date = sceneinfo$date,
  sensor = sceneinfo$sensor,
  ndvi = as.numeric(ts2), 
  zone = "region2"
)

## add data.frame d2 to d1
tss <- rbind(d1, d2)
tss <- subset(tss, sensor!="TM")

## a ggplot with facet_wrap
ggplot(data = tss, aes(x = date, y = ndvi)) +
  geom_point() +
  geom_line() +
  facet_wrap(~ zone, nrow = 2) +
  theme_bw()

## lines on top of each other
ggplot(data = tss, aes(x = date, y = ndvi, colour = zone)) +
  geom_point() + geom_line()
