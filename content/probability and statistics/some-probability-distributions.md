title: Some probability distributions
date: 04 may 2021

## Chi-square distribution

__Q:__ Let $Y_1, Y_2, \ldots, Y_n$ be i.i.d. standard normal random variables. What is the distribution of 
$$
X = Y_1^2 + Y_2^2 + \ldots + Y_n^2 ?
$$

__A:__ __Chi-squared__. With $n$ degrees of freedom it has the following density function:

$$
f_X(x) = 
\begin{cases}
c x^{(n/2-1)} exp(-\frac{1}{2}x) 	& \text{if } x \geq 0 \\
0                               &  \text{otherwise}
\end{cases}
$$
where $c$ is a constant:
$$
c = \frac{1}{2^{n/2}\Gamma(n/2)}
$$

The __expected value__ and __variance__ of a Chi-square random variable with $n$ degrees of freedom are:
$$
\begin{align}
E[X]   &= n     &\qquad \text{(proof is easy)} \\
Var[X] &= 2n   &\qquad \text{(proof is less easy)}
\end{align}
$$

__Q:__ If $Y$ is a standard normal random variable, then what is the distribution of $Y^2$?

More on Chi-square [here][chi-square].


## Gamma distribution
Have you noticed that Chi-squared distribution is a bit restricted? It has no scaling, no freedom to choose degrees of freedom without changing the mean. Gamma distribution is a generalization of Chi-square distribution with freedom to choose degrees of freedom and arbitrary scaling.

If $Z$ is a Chi-squared distribution with $n$ degrees of freedom and $h$ is a strictly positive constant, then
$$
X = \frac{h}{n}Z
$$
has a Gamma distribution with parameters $n$ and $h$.

The __expected value__ and __variance__ of a Gamma random variable $X$ are:
$$
\begin{align}
E[X]   &= h     &\qquad \text{(proof is easy)} \\
Var[X] &= 2\frac{h^2}{n}   &\qquad \text{(proof is less easy)}
\end{align}
$$

__Q:__ Let $Y_1, Y_2, \ldots, Y_n$ be i.i.d. standard normal random variables. What is the distribution of 
$$
X = h\cdot \frac{Y_1^2 + Y_2^2 + \ldots + Y_n^2}{n} ?
$$

__A:__ __Gamma__.

__Q:__ If $Y \sim \mathcal{N}(\mu, \sigma^2)$, then what is the distribution of $Y^2$?


More on Gamma [here][gamma].




## Student's t-distribution

__Q:__ Let $X_1, X_2, \ldots, X_n$ be i.i.d. normal random variables with mean $\mu$ and standard deviation $\sigma$. What is the distribution of:
$$
\frac{ \overline{X_n} - \mu}{\sqrt{s_n^2/n}}
$$
__A:__ __Student's t-distribution__ with $n-1$ degrees of freedom.


__Q:__ Let $Y$ be a standard normal random variable, and $Z$ be Gamma random variable with parameters $n$ (shape) and $h$ = 1 (scale). What is the distribution of :
$$
\frac{ \overline{X_n} - \mu}{\sqrt{s_n^2/n}}
$$
__A:__ __Student's t-distribution__ with $n$ degrees of freedom.


The code below show three different ways of obtaining a $t$-distribution with $N$ degrees of freedom, and compares it with standard normal distribution.
```python3
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

N = 2
mu = 3
sigma = 4

def experiment0():  # red
    n = N + 1
    X = np.random.normal(loc=mu, scale=sigma, size=n)
    X_mean = np.mean(X)
    s_n_2 = 1 / (n-1) * np.sum( (X - X_mean)**2 )
    Z = (X_mean - mu) / np.sqrt(s_n_2 / n)
    return Z

def experiment1():  # green
    Y = np.random.normal()
    Z = np.random.gamma(shape=N-1, scale=1/(N-1))
    return Y / np.sqrt(Z)

def experiment2():  # magenta
    X = np.random.standard_t(N)
    return X

def experiment3(): # blue
    return np.random.normal()


clip = (-8, 8)
repeat = 100000
fig, ax = plt.subplots()
gridsize = 200
sns.kdeplot([experiment0() for _ in range(repeat)], ax=ax, color='red', alpha=0.3, gridsize=gridsize, clip=clip, label='t')
sns.kdeplot([experiment1() for _ in range(repeat)], ax=ax, color='green', alpha=0.3, gridsize=gridsize, clip=clip)
sns.kdeplot([experiment2() for _ in range(repeat)], ax=ax, color='magenta', alpha=0.3, gridsize=gridsize, clip=clip)
sns.kdeplot([experiment3() for _ in range(repeat)], ax=ax, color='blue', alpha=0.3, gridsize=gridsize, clip=clip, label='normal')

ax.set(xlim=clip)
fig.set_size_inches(12, 5)
plt.legend()
```

`Output:`

![student's t distribution plot]({static}/images/t-plot.png)








[gamma]: https://www.statlect.com/probability-distributions/gamma-distribution
[chi-square]: https://www.statlect.com/probability-distributions/chi-square-distribution


