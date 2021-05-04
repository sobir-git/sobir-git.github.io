title: Set estimation about the mean
date: 04 may 2021


Suppose there's a __normal distribution__ with mean $\mu$ and variance $\sigma^2$ in Wonderland. No one has seen it. But some samples have been fallen accidentally:
$$
X_1, X_2, \ldots, X_n
$$

Out task is to come up with a good __interval estimate__ for mean $\mu$. For variance? - Later...

Few things to note ahead. The __point estimate for the mean__ is 
$$\overline{X_n} = \frac{1}{n}\sum_{i=1}^n X_i$$. 

The __point estimate for the variance__, or the __adjusted sample variance__, if needed, is 
$$s_n = \frac{1}{n-1}\sum_{i=1}^n (X_i - \overline{X_n})^2$$

## When variance is "known"
Don't pay attention to what is known or not. It's just wording. What matters is the math that follows.

Let the interval estimate be
$$
T_n = \left[ \overline{X_n} - \sqrt{\frac{\sigma^2}{n}}z, \overline{X_n} + \sqrt{\frac{\sigma^2}{n}}z \right]
$$


where $z > 0$ and is a constant. Then, what is the __coverage probability__ of $T_n$?
$$
C(T_n, \mu) = P(\mu \in T_n) = P(-z < Z < z)
$$
where $Z$ is standard normal random variable. We are done!


## When variance is "unknown"
The point of "knowing" is whether you can use that knowledge in constructing your estimate. So here, we use sample variance $s_n^2$ instead of $\sigma$ (population variance).

Let the interval estimate be
$$
T_n = \left[ \overline{X_n} - \sqrt{\frac{s_n^2}{n}}z, \overline{X_n} + \sqrt{\frac{s_n^2}{n}}z \right]
$$


where $z > 0$ and is a constant. Then, what is the __coverage probability__ of $T_n$?
$$
C(T_n, \mu) = P(\mu \in T_n) = P(-z < Z_{n-1} < z)
$$
where $Z_{n-1}$ is a standard Student's t random variable with $n-1$ degrees of freedom. We are done!
