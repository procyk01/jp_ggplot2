install.packages("ggplot2")

library("ggplot2")

set.seed(1410)
dsmall <- diamonds[sample(nrow(diamonds),100),]

head(dsmall)

qplot(carat,price, data=diamonds)