### Statistics and Emperical methods - Practicum
# Week 0 - Introduction to R

## Instalation of R and RStudio
You can follow this guide:

https://www.youtube.com/watch?v=9SzKJH93t5o

## Main concepts and functions
Everything is a vector.
- Data types - numeric, integer, character, logical

- Initializing of vectors
```r
n <- 100
v <- c(10, 21, 32, 47)
logs <- vector("logical", length=5)
```

- Indexing
You can regard the vectors as 1-indexed arrays(but 'array' in R is actually multi-dimensional array)
```r
v[1] # 10 will be printed
v[-4] # 10 21 32
v[c(2, 3)] # 21 32
v[-c(2, 3)] # 10 47
v[v > 25] # 32 47
```

- Useful functions
```r
length(v) # 4
sort(x) # 10 21 32 47
ifelse(<logical expression>, <'yes' case result>, <'no' case result>)
any(...)
all(...)
```

- Aggregating functions
```r
min(v) # 10
max(v) # 47
diff(v) # 11 11 15
sum(v) # 110
cumsum(v) # 10 31 63 110
```

- Sequence generation
```r
rep(5, times=8) # 5 5 5 5 5 5 5 5
rep(c(2, 6), each=5) # 2 2 2 2 2 6 6 6 6 6

seq(from=1, to=10, by 2) # 1 3 5 7 9
seq(from=0, to=1, length.out=4) # 0.000 0.3333 0.666667 1.000

10:16 # 10 11 12 13 14 15 16
```

- Matrix initialization
```r
M <- rbind(c(1, 2, 3, 4), c(5, 6, 7, 8))
M <- cbind(c(1, 2, 3, 4), c(5, 6, 7, 8))

M[c(3, 1), ] # prints the third and first row as a matrix
M[order(M[, 1]), ]
M[order(M[, 1], M[, 2]), ]

M <- matrix(c(1:16), nrow=8, ncol=2)
M <- matrix(c(1:16), nrow=8, ncol=2, byrow=TRUE)

A <- matrix(c(1, 5, -3, 3.4, 0, -2), nrow=3, ncol=2)
rownames(M) <- c("row1", "row2", "row3")
colnames(M) <- c("col1", "col2")
```

- Element-wise operations
```r
sqrt(M)
v^2
```

- Sample function
```r
sample(<vector>, <sample size>, replace=TRUE)
```

## Problems
From moodle page
