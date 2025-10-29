# Discrete Distributions

## 18
### X - the number of obtained sixes
### X in {0, ..., 10}
### X ~ Bin(10, 1/6)
## a) P(X = 2):
dbinom(2, 10, 1/6)
## b) P(X <= 2):
pbinom(2, 10, 1/6)
## c) P(X >= 2) = 1 - P(X < 2) = 1 - P(X <= 1):
1 - pbinom(1, 10, 1/6)
## d) P(3 <= X <= 8) = P(X <= 8) - P(X <= 2):
pbinom(8, 10, 1/6) - pbinom(2, 10, 1/6)

## 19
### X - the number of throws before throwing 6
### X in 0, 1, ...
### X ~ Geom(1/6)
## a) we get 6 not later than on the 10th throw, 
##    i.e. P(X <= 9):
pgeom(9, 1/6)
## b) 1 - P(X <= 5):
1 - pgeom(5, 1/6)

## 20
### X - the number of throws before the third 6
### X ~ NegBin(3, 1/6)
## not more than 20 throws, i.e. P(X <= 17):
pnbinom(17, 3, 1/6)

## 21
### X - the number of charged bateries
### X ~ HyperGeom(5+3, 5, 2)
## P(X <= 1):
phyper(1, 5, 3, 2)

## 22
### X - the number of errors in 5 pages
### X ~ Pois(lambda = 5 * 300 / 500)
lambda = 5 * 300 / 500
## a) P(X <= 2):
ppois(2, lambda)
## b) P(1 <= X <= 3) = P(X <= 3) - P(X = 0):
ppois(3, lambda) - dpois(0, lambda)
