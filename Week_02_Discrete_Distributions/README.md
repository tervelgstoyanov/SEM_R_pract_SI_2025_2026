### Statistics and Emperical methods - Practicum
# Week 2 - Discrete distributions

## Discrete random variables
*def:* A random variable is called **discrete** iff it has a finite or countably infinite number of distinct possible values. Let $x_1, x_2, ..., x_k, ...$ are the possible values of a discrete random variable $X$. Then the probability to observe a given value $x_k$ of $X$ is noted by $\mathbf{P}(X=x_k)$ (these probabilities must sum to 1 over all x's). For the use in the R language, The **distribution** function of a random variable is defined as $\mathbf{F}_{X}(x) := \mathbf{P}(X<=x)$.

## Bernoulli distribution
A random variable $X$ has a **Bernoulli** distribution iff X has two values 0 and 1, $\mathbf{P}(X=1) = p$, $\mathbf{P}(X=0) = 1-p$, we write $X \sim Bern(p), \space p \in [0,1]$. 

## Binomial distribution
A random variable $X$ has a **binomial** distribution iff $X$ is the number of successes from $n$ independent Bernoulli trials with success probability of $p$, $X \sim Bin(n, p)$.
$$\mathbf{P}(X=k) = \binom{n}{k}p^k(1-p)^{n-k}, \quad k = 0, 1, ..., n$$
In R:

- dbinom(k, n, p) -> $\mathbf{P}(X=k)$;
- pbinom(k, n, p) -> $\mathbf{F}_{X}(k)$;
- rbinom(N, n, p) -> 
the function returns a vector from N numbers "drawn" from a binomual distribution with parameters $n$ и $p$, i.e. man could think about it as the experiment is done N times and the observed values of $X$ are collected into a vector.

## Geometric distribution
A random variable $X$ has a **geometric** distribution iff $X$ is the number of failures until reaching success from independent Bernoulli trials with success probability of $p$, $X \sim Geom(p)$.
$$\mathbf{P}(X=k) = (1-p)^k p, \quad k = 0, 1, ..., n, ...$$
In R:

- dgeom(k, p) -> $\mathbf{P}(X=k)$;
- pgeom(k, p) -> $\mathbf{F}_{X}(k)$;
- rgeom(N, p) -> 
the function returns a vector from N numbers "drawn" from a geometric distribution with a parameter $p$.

## Negative Binomial distribution
A random variable $X$ has a **negative binomial** distribution iff $X$ is the number of failures until $r$ successes from independent Bernoulli trials with success probability of $p$, $X \sim NBin(r, p)$.
$$\mathbf{P}(X=k) = \binom{r+k-1}{r-1}p^r(1-p)^k, \quad k = 0, 1, ..., n, ...$$
In R:

- dnbinom(k, r, p) -> $\mathbf{P}(X=k)$;
- pnbinom(k, r, p) -> $\mathbf{F}_{X}(k)$;
- rnbinom(N, r, p) -> 
the function returns a vector from N numbers "drawn" from a negative binomial distribution with parameters $r$ и $p$.

## Hypergeometric distribution
Imagine an urn with M white and N black balls. n balls are drawn and let $X$ be the number of **white** drawn balls. Then, the distribution of $X$ is **hypergeometric**, $X \sim HGeom(M, N, n)$.
$$\mathbf{P}(X=k) = \frac{\binom{M}{k}\binom{N}{n-k}}{\binom{M+N}{n}}, \quad k = 0, 1, ..., n$$
In R:

- dhyper(k, M, N, n) -> $\mathbf{P}(X=k)$;
- phyper(k, M, N, n) -> $\mathbf{F}_{X}(k)$;
- rhyper(L, M, N, n) -> 
the function returns a vector from L numbers "drawn" from a negative binomial distribution with parameters $r$ и $p$.

## Poisson distribution
A random variable $X$ has a **Poisson** distribution, $X \sim Pois(\lambda), \lambda > 0$, iff the probability of $X$ to be $k$, for each $k$, for some $\lambda > 0$ is:  
$$\mathbf{P}(X=k)=e^{-\lambda}\frac{\lambda^k}{k!}, \quad k= 0, 1, ...$$

You can think about this distribution as modelling the probability a specific number of events to occur in a fixed interval, given the average rate of occurence(requests to server for the interval of one hour knowing that on average there are 5).

In R:

- dpois(k, $\lambda$) -> $\mathbf{P}(X=k)$;
- ppois(k, $\lambda$) -> $\mathbf{F}_{X}(k)$;
- rpois(N, $\lambda$) -> 
the function returns a vector from N numbers "drawn" from a Poisson distribution with a parameter $\lambda$.