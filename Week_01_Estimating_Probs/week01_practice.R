# Estimating probabilities

## 1
exp.ball <- function () {
  balls <- c(1:8)
  first <- sample(balls, 1)
  second <- sample(balls, 1)
  
  first == second
}
prob.ball <- function (N) {
  results <- replicate(N, exp.ball())
  sum(results) / N
}

prob.ball(100000)

## 3
### Let the right key be denoted by 1 and the others with 0.
exp.keys <- function () {
  keys <- c(rep(0, 3), 1)
  sample <- sample(keys, 4, replace=FALSE)
  
  sample[4]
}
prob.keys <- function (N) {
  results <- replicate(N, exp.keys())
  sum(results) / N
}

prob.keys(100000)

## 4
### Let a known question be 1, an unknown - 0.
exp.exam <- function () {
  questions <- c(rep(0, 3), rep(1, 17))
  sample <- sample(questions, 2, replace=FALSE)
  
  sum(sample) == 1
}
prob.exam <- function (N) {
  results <- replicate(N, exp.exam())
  sum(results) / N
}

prob.exam(100000)

## 10
exp.flight <- function () {
  passengers <- sample(c(0, 1), 143, replace=TRUE, prob=c(0.08, 0.92))
  
  sum(passengers)
}
prob.flight.a <- function (N) {
  results <- replicate(N, exp.flight())
  sum(results <= 138) / N
}
prob.flight.b <- function (N) {
  results <- replicate(N, exp.flight())
  sum(results == 137) / N
}
