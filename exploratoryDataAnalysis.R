# Exploratory analysis on Quantitative Data
data(iris)
names(iris)
summary(iris)
hist(iris$Sepal.Length)

boxplot(iris$Sepal.Length, main="Summary of iris", xlab="Sepal Length")

plot(iris$Sepal.Length,iris$Sepal.Width)

# Exploratory analysis on Categorical Data
data(mtcars)
names(mtcars)
str(mtcars)
counts <- table(mtcars$gear)
counts
barplot(counts,main="Cars", xlab= "Number of Gears")
barplot(counts,main="Cars", xlab= "Number of Gears", horiz = TRUE, col='red')

library(ggplot2)
qplot(Sepal.Length, Petal.Length,data = iris)
qplot(Sepal.Length, Petal.Length,data = iris, color = Species)
qplot(Sepal.Length, Petal.Length,data = iris, color = Species, size = Petal.Width)

qplot(Sepal.Length, Petal.Length,data = iris, color = Species, 
      main = "Sepal vs. Petal Length is Iris data", xlab= "Sepal Length", 
      ylab = "Petal Length")

