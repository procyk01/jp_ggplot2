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


mtcars <- transform(mtcars, mpg=sqrt(mpg))
head(mtcars)

