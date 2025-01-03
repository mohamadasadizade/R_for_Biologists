# Data visualization
1. plotting
2. line graphs
3. bar charts
4. pie charts
5. box plots
6. histogram




```
plot(xdata, ydata,
     main = "title",
     xlab = "x lable",
     ylab = "y lable",
     xlim = min:max ,
     ylim = min:max ,
     col = "color_name" ,
     type = "l")

```




#### Plotting

Plotting is the process of creating a visual representation of data, like a graph or chart, to make it easier to understand patterns, trends, or relationships. It turns numbers into pictures!


```python
#png(file = "chart.png")
plot(1:10, main="My Chart", xlab="The x-axis", ylab="The y-axis", col = "darkcyan")
```


    
![png](Session_5_files/Session_5_2_0.png)
    



```python
x <- iris$Sepal.Length
y <- iris$Petal.Length

#png(file = "chart.png")
plot(x, y, xlab="Sepal Length", ylab="Petal.Length", main = "IRIS", col = "red")
```


    
![png](Session_5_files/Session_5_3_0.png)
    



```python
#png(file = "chart.png")

line1 <- c(0, 8, 14, 42)
line2 <- seq(2, 8, by=2)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
```


    
![png](Session_5_files/Session_5_4_0.png)
    


#### barplot

A barplot is a chart that uses bars to show data comparisons. The length of each bar represents the value of a category, making it easy to compare different groups.


```python
summary(iris)

```


      Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
     Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
     1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
     Median :5.800   Median :3.000   Median :4.350   Median :1.300  
     Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
     3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
     Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
           Species  
     setosa    :50  
     versicolor:50  
     virginica :50  
                    
                    
                    



```python
y <- iris[iris$Sepal.Width > 4,1]
print(y)
```

    [1] 5.7 5.2 5.5



```python
#png(file = "chart.png")

# Calculate the average Sepal.Length for each species
avg_sepal_length <- tapply(iris$Sepal.Length, iris$Species, mean)

barplot(avg_sepal_length,
        main = "Average Sepal Length by Species",
        ylab = "Average Sepal Length",
        xlab = "Species",
        col = c("lightblue", "lightgreen", "lightcoral"),
        names.arg = names(avg_sepal_length),
        horiz = TRUE)
```


    
![png](Session_5_files/Session_5_8_0.png)
    



```python
print(avg_sepal_length)
```

        setosa versicolor  virginica 
         5.006      5.936      6.588 


#### Pie chart


A pie chart is a circle divided into slices to show parts of a whole. Each slice represents a category's proportion to the total, making it easy to compare parts at a glance.


```python
x <- tapply(iris$Sepal.Length, iris$Species, mean)
labels <- names(x)

#png(file = "chart.png")
pie(x, label = labels, main="Average Sepal Length")

```


    
![png](Session_5_files/Session_5_11_0.png)
    


####boxplot

A boxplot is a chart that shows the spread and centers of data. It uses a box to represent the middle most of the data and lines to show the range. The line in the middle of the box shows the median, or middle value. It's great for spotting outliers and understanding data distribution.


```python
#png(file = "chart.png")
boxplot(iris$Sepal.Length)
```


    
![png](Session_5_files/Session_5_13_0.png)
    



```python
#png(file = "chart.png")

trans <- read.csv("Expression.csv")
boxplot(trans$Gene.A)
```


    
![png](Session_5_files/Session_5_14_0.png)
    


#### Histogram

A histogram is a chart that shows how data is spread out. It groups data displays how many values fall into each group. It's like a bar chart but for showing the frequency of data.


```python
#png(file = "chart.png")
hist(iris$Petal.Length, xlab = "Petal Length", col = "darkcyan")
```


    
![png](Session_5_files/Session_5_16_0.png)
    



```python
data <- rnorm(1000000, mean = 0, sd = 1)
# rnorm() generate random numbers from a normal distribution

hist(data, breaks = 50)
```


    
![png](Session_5_files/Session_5_17_0.png)
    

