install.packages("ggplot2")

library("ggplot2")

set.seed(1410)
dsmall <- diamonds[sample(nrow(diamonds),100),]

head(dsmall)

qplot(carat,price, data=diamonds)
qplot(log(carat), log(price), data=diamonds)
qplot(carat, x*y*z, data = diamonds)
qplot(carat, price, data=dsmall,color=color)
qplot(carat, price, data=dsmall,shape=cut,color=color)

