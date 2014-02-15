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
qplot(carat, price, data=diamonds, alpha=I(1/10))
qplot(carat, price, data=diamonds, alpha=I(1/100))
qplot(carat, price, data=diamonds, geom="smooth")
qplot(carat, price, data=diamonds, geom=c("point","smooth"))
qplot(carat, price, data=dsmall, geom=c("point","smooth"))
qplot(carat, price, data=dsmall, geom=c("point","smooth"),se=FALSE)
qplot(carat, price, data=dsmall, geom=c("point","smooth"), method="loess",span=0.2)
qplot(carat, price, data=dsmall, geom=c("point","smooth"), method="loess",span=1)

library("mgcv")
qplot(carat, price, data=diamonds, geom=c("point","smooth"), method="gam", formula=y~s(x))
qplot(carat, price, data=diamonds, geom=c("point","smooth"), method="gam", formula=y~s(x, bs="cs"))

library("splines")
qplot(carat, price, data=dsmall, geom=c("point","smooth"), method="lm")
qplot(carat, price, data=dsmall, geom=c("point","smooth"), method="lm", formula=y~ns(x,5))

library("MASS")
qplot(carat, price, data=dsmall, geom=c("point","smooth"), method="rlm", formula=y~ns(x,5))

qplot(color, price/carat, data=diamonds)
qplot(color, price/carat, data=diamonds, geom="jitter")
qplot(color, price/carat, data=diamonds, geom="boxplot")
qplot(cut, price/carat, data=diamonds, geom="boxplot", color=color)
qplot(color, price/carat, data=diamonds, geom="jitter", alpha=I(1/5))


qplot(carat, data=diamonds, geom="histogram")
qplot(carat, data=diamonds, geom="density")
qplot(carat, data=diamonds, geom="histogram", binwidth=1, xlim=c(0,3))
qplot(carat, data=diamonds, geom="histogram", binwidth=0.1, xlim=c(0,3))
qplot(carat, data=diamonds, geom="histogram", binwidth=0.01, xlim=c(0,3))

qplot(carat, data=diamonds, geom="histogram", fill=color, xlim=c(0,3))
qplot(carat, data=diamonds, geom="density", color=color, xlim=c(0,3))


qplot(color, data=diamonds, geom="bar")
qplot(color, data=diamonds, geom="bar", weight=carat) + scale_y_continuous("carat")
