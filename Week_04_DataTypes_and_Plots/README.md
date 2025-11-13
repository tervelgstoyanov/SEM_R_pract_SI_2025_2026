### Statistics and Emperical methods - Practicum
# Week 4 - Data Types and Plots

## Some definitions
Let $X$ be a random variable of interest. An **observation** is the measuring of $X$'s value and generally, is written with a small latin letter and a numerating index.  
***Note*** $X \neq x_1$
A **population** is called the set of all possible outcomes(на български е известен и терминът "генерална съвкупност").  
A **sample** is the set of the observations that we have.

## Data types
- numeric
- cathegorical

## Plots
### Plot
General plotting function for list of xs and ys.
```r
plot(
  x,
  y,
  type="b", # only points, only lines or both
  main="Title",
  xlab="x-axis label",
  ylab="y-axis label",
  
  xlim=c(0, 22), # vector from x-axis min and max value
  ylim=c(0, 50), # vector from y-axis min and max value
  
  pch=3, # plotting character of the point from 1 to 25
  col="red", # the color of the points,
  cex=3,# character expansion - how big to be the points
  
  lty=2, # line type from 1 to 6
  lwd=3 # line width default is 1
)
```
### Hist
A function to create **histograms** that are primarily used to visualize the distribution of some continuous numeric variable.
```r
data_vector <- rnorm(1000, mean = 50, sd = 10) # 100 random values
hist(
  data_vector,
  breaks=seq(0,100,5), # number of breaks or a vector of the break points
  probability=FALSE, # default TRUE and prints frequencies, FALSE: probability density function h = obs_prob / bin_width
  main="title",
  # xlab, ylab, xlim, ylim,
  col="gray",
  border="blue"
)
```
### Barplot
The barplot is used to visualize discrete variables.
```r
sales_matrix <- matrix(
  c(10, 15, 20, 25, 30, 35),
  nrow = 2,
  byrow = TRUE,
  dimnames = list(
    c("Product A", "Product B"),
    c("North", "Central", "South")
  )
)
sales_matrix
barplot(
  sales_matrix,
  main="Regional Sales by Product",
  ylab="Total Sales",
  col=c("darkorange", "darkblue"),
  legend.text=rownames(sales_matrix),
  beside=TRUE,
  border="grey",
  ylim=c(0,40)
)
```

### Pie
Similar to *barplot* but in a unit circle where each region corresponds to the relative size of each category.
```r
response_counts <- c(StronglyAgree = 10, Agree = 30, Neutral = 15, Disagree = 5)
pie(
  response_counts,
  #labels,
  clockwise=TRUE,
  init.angle=0
)
```
### Curve
With this function the plots of functions are drawn in given interval.
```r
curve(
  sin(x)+cos(x), # function with variable x
  from=-pi, to=3*pi, # domain range
  add=FALSE, # to add it on previous plot or not
  col="red"
)
```

### Lines
Drawing lines between list of points.
```r
lines(
    x, # list of x-coordinates
    y, # list of y-coordinates
    col,
    type,
    lwd,
    lty
)
```
### Stripchart
```r
wait <- c(2,3,3,5,5,2,7,10,4,3,1,7,11,10,5,6,3,8,5,12,5,3,8,5,7)
stripchart(wait, method="stack", pch=20, cex=1.5)
```
### Stem
```r
stem(wait)
```

## Numeric characteristics of the data
Let $x_1, ..., x_n$ be a sample of some r.v. $X$.  
The **mean value** of the data(извадъчно средно) is: $$\bar{x} = \frac{1}{n}\sum_{i=1}^n x_i$$
The **median** is the number that is in the middle as we order the observations in line. A popular notation is $x_{(1)}$ to be the smallest observation and $x_{(n)}$ the largest, i.e. M is defined to be $x_{(\frac{n+1}{2})}$ as $n$ is odd, and $\frac{x_{(\frac{n}{2})}+x_{(\frac{n}{2}+1)}}{2}$ as n is even.  


**p-quantile** is such a number that $100p$ percents of the data is less or equal to it and $100(1-p)$ percents of the data is larger or equal
$$IQR = Q_3 - Q_1$$

**Standard deviation** of $x_1, ..., x_n$ is defined:
$$s = \sqrt{\frac{1}{n-1}\sum_{i=1}^n (x_i - \bar{x})^2}$$

- mean(x)
- median(x)
- quantile(x, p)
- IQR(x)
- sd(x)
- summary(x)

### Boxplot
A function that plots the min-max value, Q1, Q3, and the median for given sample.
```r
boxplot(x, horizontal=TRUE)
```

## Useful functions
- read.table()
- table()
- cut()
