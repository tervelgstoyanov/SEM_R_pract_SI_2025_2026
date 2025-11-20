### Statistics and Emperical methods - Practicum
# Week 5 - Multidimensional data

## Multidimensional data
Demonstrate the `survey` packet:
```r
library(MASS)
?survey
str(survey)
fix(survey)
```

Индексиране:
```r
survey[, 'Exer']
survey$Smoke
survey[, 1]
survey[3, ]
```

Параметърът `na.rm=TRUE` при извеждане на числови характеристики.

Метод `table` за две категорни променливи и неговите версии:
```r
table(survey$Exer, survey$Smoke, <useNA="always">)
prob.table(table(survey$Exer, survey$Smoke))
prob.table(table(survey$Exer, survey$Smoke), 1) # by row norm
prob.table(table(survey$Exer, survey$Smoke), 2) # by col norm
```

"Разбиване" на числова променлива по някоя категорна:
```r
boxplot(Height ~ Sex)
```
Пресмятане на `извадъчна` корелация:
```r
cor(Height, Pulse, use="complete.obs")
```


## Central limit theorem
Let $X_1, X_2, ..., X_n$ are iid random variables with an expectation $\mu$ and a variance $\sigma^2$. Define:
$$\bar{X} = \frac{1}{n}\sum_{i=1}^n X_i$$
By CLT as n grows the distribution of $\frac{\bar{X}-\mu}{\sigma / \sqrt{n}}$ goes to the **standard normal** distribution, i.e. $\frac{\bar{X}-\mu}{\sigma / \sqrt{n}} \in N(0, 1)$.
