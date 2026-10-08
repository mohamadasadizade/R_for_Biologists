################################################################################

# Data Visualization

################################################################################

#plot(data,
#     main = "title",
#     xlab = "x lable",
#     ylab = "y lable",
#     xlim = min:max ,
#     ylim = min:max ,
#     col = c("color1", "color2"),
#     type = "l")


################################################################################

#lets turn numbers into pictures!

#png(file = "./image1.png")
plot(1:10,
     main="My Chart", 
     xlab="The x-axis", 
     ylab="The y-axis", 
     col = "darkcyan")

################################################################################

x <- iris$Sepal.Length
y <- iris$Petal.Length


plot(x, y, 
     xlab="Sepal Length", 
     ylab="Petal.Length", 
     main = "IRIS", 
     col = "red")

################################################################################


line1 <- c(0, 8, 14, 42)
line2 <- seq(2, 8, by=2)

plot(line1, type = "l", col = "green")
lines(line2, type="l", col = "red")

################################################################################

#bar plot

summary(iris)

sepal_average <- tapply(iris$Sepal.Length, iris$Species, mean)

barplot(sepal_average)

barplot(sepal_average,
        main = "Average Sepal Length by Species",
        ylab = "Average Sepal Length",
        xlab = "Species",
        col = c("lightblue", "lightgreen", "lightcoral"),
        names.arg = names(sepal_average),
        horiz = TRUE)

################################################################################

#pie chart

x <- tapply(iris$Sepal.Length, iris$Species, mean)

pie(x, label = names(x), main="Average Sepal Length")

################################################################################

#box plot

trans <- read.csv("Expression.csv")
boxplot(trans[2:6],
        ylab= "Expression", 
        col = c("lightblue", "lightgreen", "lightcoral", "lightyellow", "lightcyan")
        )

################################################################################

#Histogram

hist(iris$Petal.Length, 
     xlab = "Petal Length", 
     col = "darkcyan")

################################################################################

#visualizing normal distribution!

data <- rnorm(100000, mean = 0, sd = 1)
# rnorm() generate random numbers from a normal distribution

hist(data, breaks = 50, col = "darkcyan")