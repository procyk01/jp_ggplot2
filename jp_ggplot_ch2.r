# ggplot2 - Chapter 3

library("ggplot2")
head(mpg)

qplot(displ, hwy, data=mpg, color=factor(cyl))
qplot(displ, hwy, data=mpg) + geom_smooth()
qplot(displ, hwy, data=mpg, facets=.~year) + geom_smooth()

