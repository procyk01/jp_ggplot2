# ggplot2  ch4

p <- ggplot(diamonds, aes(carat, price, color=cut))
p <- p + layer(geom="point")
p

p <- ggplot(diamonds, aes(x=carat))
p <- p + layer(
  geom = "bar",
  geom_params = list(fill="steelblue"),
  stat = "bin",
  stat_params = list(binwidth=2)
  )
p

p <- ggplot(diamonds, aes(x=carat))
p <- p + geom_histogram(binwidth=2, fill="steelblue")
p

p <- ggplot(diamonds, aes(x=carat))
p <- p + geom_bar(binwidth=2, fill="steelblue")
p


p <- ggplot(msleep, aes(sleep_rem/sleep_total, awake))
summary(p)
p <- p + geom_point()
summary(p)


p <- ggplot(mtcars, aes(mpg, wt, color=cyl)) + geom_point()
p
mtcars <- transform(mtcars, mpg=mpg^2)
p %+% mtcars

# remove the square transformation
mtcars <- transform(mtcars, mpg=sqrt(mpg))
head(mtcars)

p <- ggplot(mtcars)
summary(p)
p <- p + aes(wt, hp)
summary(p)
p + geom_point()
p + geom_point(aes(color=factor(cyl)))
p + geom_point(aes(y=disp))
# axis labels are based on the default!! they don't change with aes(y=___)

p <- ggplot(mtcars, aes(mpg,wt))
p + geom_point(color="darkblue")
p + geom_point(aes(color="darkblue"))


library(nlme)
p <- ggplot(Oxboys, aes(age, height))
p + geom_line()

p <- ggplot(Oxboys, aes(age, height, group=Subject))
p <- p + geom_line()

p <- p + geom_smooth(aes(group=Subject), method="lm", se=F)
p <- p + geom_smooth(aes(group=1),color="red", method="lm", size=2, se=F)
p

boysbox <- ggplot(Oxboys, aes(Occasion, height))
boysbox <- boysbox + geom_boxplot()
boysbox <- boysbox + geom_line(aes(group=Subject),color="#3366FF")
boysbox

p <- ggplot(diamonds,aes(carat))
p <- p + geom_bar(aes(color=cut, fill=cut))
p <- p + geom_histogram(aes(y=..density.., color=cut, fill=cut), binwidth=0.1)
p 