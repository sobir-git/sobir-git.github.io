title: Some statistical terms
date: 1 may 2021

### Joint probability distribution function
It characterizes the probability of a random vector in its domain.
So, for a random vector $X \in R^n$, it is a function 
$$f_X: R^n \to [0, \inf) .$$
Computing the integral over the support region should result in $1$.

There is another term called _joint distribution function_ which is a synonym to _joint cumulative distribution function_ (also _joint cdf_). At a given point $x$ it gives the probability that all components of $X$ are smaller than the corresponding component $x$.

### Marginal distribution function
For a random vector, it is the probability of one of its components. 
So, for a random vector $X \in R^n$ and its component $X_i$, it is a function 
$$f_{X_i}: R \to [0, \inf) .$$
