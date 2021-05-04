title: Set estimation
date: 03 may 2021

Suppose there's a unknown distribution parametrized by $\theta_0$. Let $\Xi$ be a random vector from that distribution. Suppose we have sample $\xi$ as a realization of random vector $\Xi$. Using this sample we want to estimate $\theta_0$. Suppose we have modeled the distrubution with parameter space $\Theta$. 

So is an estimate? An estimate is as subset of parameter space: 
$$T \subseteq \Theta$$

The estimate has a probability of containing the true parameter $\theta_0$, we call it **coverage probability**:
$$
C(T, \theta_0) = P_{\theta_0}(\theta_0 \in T[\Xi])
$$
Note that in the above equation, the random element is $T[\Xi]$ and $\theta_0$ is fixed. In other words, it is probability that the computed set estimate contains the true parameter, given the randomness of $\Xi$. In other words, for a fixed original distribution, if we run the experiment many times[for which we get different realizations of $\Xi$ each time], then the coverage probability measure the number of times our set estimate will contain the true parameter.

Often times, the coverage probability is not computable, because we don't know $\theta_0$. Therefore, another measure which is **confidence coefficient** comes handy:
$$
c(T) = \inf_{\theta \in \Theta} C(T, \theta)
$$
It measures the smallest probability of coverage considering all possible values of true parameter.

**Q:** $\theta_0$ is always unknown, that's the whole point of set estimation. So in what conditions can coverage probability be computed?

**A:** Sometimes, the coverage probability is same for all possible $\theta \in \Theta$, so it will be independent of $\theta_0$. Example includes set estimation about the mean when original distribution is assumed to be normal.

