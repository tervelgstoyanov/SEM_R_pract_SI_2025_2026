### Statistics and Emperical methods - Practicum
# Week 3 - Continuous distributions

## Continuous random variables
*def:* A random variable is called **continuous** iff it has a uncountably infinite number of distinct possible values. Then, the probability to observe a fixed value is always 0. Therefore it is calculated the probability of $X$ to be in given interval. For continuous random variables, it is defined a **density** function $f_X(x)$. The definition of the distribution function is the same but the calculation is done as integrating the density function from -infinity to x.

## Uniform distribution
A random variable $X$ has a **uniform** distribution over the finite interval $[a,b]$ iff X has a density function:
$$f_X(x) = \frac {1}{b-a}, \quad x \in [a,b]$$
Otherwise, the density is 0.
In R:

- dunif(x, a, b) -> $f_X(x)$;
- punif(x, a, b) -> $\mathbf{F}_{X}(x)$;
- runif(x, a, b) -> 
the function returns a vector from N numbers "drawn" from a uniform distribution;
- qunif(p, a, b) -> returns such value $x \in \mathbb{R}: \mathbf{F}_{X}(x) = p$.

## Exponential distribution
A random variable $X$ has a **exponential** distribution, $X\sim Exp(\lambda)$, iff $X$ has a density function:
$$f_X(x) = \lambda e^{-\lambda x}, \quad x >=0$$

The time between events in poisson distribution is modeled by the exponential.

In R:

- dexp(x, $\lambda$) -> $f_X(x)$;
- pexp(x, $\lambda$) -> $\mathbf{F}_{X}(x)$;
- rexp(N, $\lambda$) -> 
the function returns a vector from N numbers "drawn" from a exponential distribution;
- qexp(p, $\lambda$) -> returns such value $x \in \mathbb{R}: \mathbf{F}_{X}(x) = p$.

## Normal distribution
A random variable $X$ has a **normal** distribution, $X \sim N(\mu, \sigma^2)$, iff $X$ has a density function:
$$f_X(x) = \frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$

In R:

- dnorm(x, $\mu$, $\sigma$) -> $f_X(x)$;
- pnorm(x, $\mu$, $\sigma$) -> $\mathbf{F}_{X}(x)$;
- rnorm(N, $\mu$, $\sigma$) -> 
the function returns a vector from N numbers "drawn" from a normal distribution;
- qnorm(p, $\mu$, $\sigma$) -> returns such value $x \in \mathbb{R}: \mathbf{F}_{X}(x) = p$.
