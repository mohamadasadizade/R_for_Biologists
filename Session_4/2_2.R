################################################################################

# genetic variants dataset and multiple condition filtering

################################################################################

data <- read.csv("./Variants.csv")

print(data)

summary(data)

#Multiple condition filtering
print(data[data[["Impact"]]>80 & data[["Clinical.Significance"]] >=2 , ])

################################################################################

# Iris dataset and basic statistics

################################################################################

iris

summary(iris)

mean(iris$Sepal.Length)

var(iris$Sepal.Length)

sd(iris$Sepal.Length)

for (
  i in c("Sepal.Length", 
            "Sepal.Width", 
            "Petal.Length", 
            "Petal.Width")) 
  {
  variance <- var(iris[[i]])
  cat("variance of", i, "is", variance, "\n")
}

for (
  i in c("Sepal.Length", 
         "Sepal.Width", 
         "Petal.Length", 
         "Petal.Width")) 
{
  sd <- sd(iris[[i]])
  cat("standard deviation of", i, "is", sd, "\n")
}


#filtering
setosa <- iris[iris$Species == "setosa",]
#find the row that corresponds to setosa
summary(setosa)

nrow(iris[iris$Species == "setosa",])

x <- iris[iris$Species == "setosa" & iris$Sepal.Width > 4,]
print(x)


################################################################################

# Gene expression datasets

################################################################################

trans <- read.csv("Expression.csv")

print(trans)

summary(trans)

#correlation matrix
#A correlation matrix is used to find the dependence between multiple columns.
#You can find the correlation matrix using the cor() function.

cor_gene <- cor(trans[2:6])
print(cor_gene)

print(round(cor_gene, 2))

# cyan for negative, pink for positive correlations
heatmap(cor_gene,
        col = colorRampPalette(c("cyan", "white", "pink"))(50),
        symm = TRUE)


#t-test 

results <- data.frame(
  Gene = names(trans)[2:(ncol(trans)-1)],
  
  # sapply(df, function(x))
  P_value = sapply(trans[2:(ncol(trans)-1)], function(x) {
    t.test(x ~ trans$Cancer)$p.value
  }),
  
  log2FC = sapply(trans[2:(ncol(trans)-1)], function(x) {
    log2(
      mean(x[trans$Cancer == 1]) /
        mean(x[trans$Cancer == 0])
    )
  })
)



results <- results[order(results$P_value), ]

#print(results)

results$P_value <- format.pval(
  results$P_value,
  digits = 3,
  eps = 0.001
)

print(results)


################################################################################

# tapply() vs sapply() in R

################################################################################


# ------------------------------------------------------------
# 1. sapply()
# ------------------------------------------------------------

# sapply() applies a function to each element of a vector or list.
# It is useful when you want to repeat the same operation
# for multiple elements.

# Example:
x <- list(
  gene1 = c(1, 2, 3),
  gene2 = c(10, 20, 30),
  gene3 = c(5, 6, 7)
)

# Calculate the mean of each element:
sapply(x, mean)


# ------------------------------------------------------------
# 2. tapply()
# ------------------------------------------------------------

# tapply() applies a function to different groups of a vector.
# It is useful when you have:
#   1. A variable containing the values
#   2. A variable defining the groups

# Example:
expression <- c(10, 20, 30, 40, 50, 60)

group <- c(
  "Control", "Control", "Control",
  "Cancer", "Cancer", "Cancer"
)

# Calculate the mean expression for each group:
tapply(expression, group, mean)


################################################################################

# scaling data

################################################################################

# ------------------------------------------------------------
# 1. standard scaling
# ------------------------------------------------------------

trans <- read.csv("Expression.csv")

x <- trans$Gene.A

# Standard scaling
z_score <- (x - mean(x)) / sd(x)
print(z_score)

z_score <- scale(x)


# Create a copy of the original data
trans_scaled <- trans

# Select gene columns
genes <- 2:(ncol(trans) - 1)

# Standard scaling
trans_scaled[genes] <- scale(trans[genes])

# Check the result
head(trans_scaled)

# ------------------------------------------------------------
# 2. min-max scaling 
# ------------------------------------------------------------

min_max <- (x - min(x)) / (max(x) - min(x))

print(min_max)

range(min_max)