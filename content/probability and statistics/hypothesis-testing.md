title: Hypothesis Testing
date: 1 may 2021


The following are my notes when I studied [this chapter][1] on hypothesis testing.

First we define what is a **statistical model**.

### Statistical Models
The term didn't catch attention, as if I already knew it. Perhaps true. I know both words in isolation, and I've seen both together. But here follows the formal definition.

Given an unknown distribution. Assume we only have some samples from it. Of course we cannot characterize the original distribution just from a finite number of samples. We can only infer some properties of it given particular circumstances. For example we assume that it belongs to a certain class of probability distributions. If we assume it is a normal distribution, then we go further and estimate its mean and variance, or make a probabilistic statements about it. 

So, the class which we assumed the unknown distributions belongs to is called our _statistical model_. We could have modeled it correctly, in which case we say our model is **correctly specified**. Otherwise, it is **mis-specified**.


### Statistical Inference
A statistical inference is a statement about the population from a given sample. They are based on a given sample and the statistical model. A statistical inference has the form of model restriction. Let the original model be $\Phi$. Then the statistical inference can talk about a subset of model, $\Phi_R$, in one of the following forms: (a) the unknown distribution belongs to $\Phi_X$, or (b) the unknown distribution does not belong to $\Phi_X$.

- In **hypothesis testing**, first such a model restriction is proposed, then the choice is made whether to accept the restriction or reject it.

- In **estimation**, a restriction is to be chosen with certain level of certainty.

- In **Bayesian inference**, we already have a subjective restriction, and it is updated with the knowledge of the given sample.

What is a **sample**? A realization of a random vector.


### Hypothesis testing
Quoting from the book:
> Hypothesis testing is a method of making statistical inferences by establishing an hypothesis, called null hypothesis, and using some data to decide whether to reject or not to reject the hypothesis.

For parametric models, let $\Theta \subseteq \mathbb{R}^p$ be the parameter space. Let the true parameter of the unknown distribution be $\theta_0$. Let the chosen parameter restriction be $\Theta_R$. Then the **null hypothesis** is defined as
$$H_0: \theta_0 \in \Theta_R$$

And the **alternative hyptothesis** is defined as
$$H_1: \theta_0 \in \Theta_R^c$$


#### Types of errors
Whether the null hypothesis is accepted or rejected, the decision may be wrong. Two types of errors exist:
1. Reject the null hypothesis when it is indeed true, called **Type I error**.
2. Do not reject the null hypothesis when it is indeed false, called **Type II error**.

~ (how can one not confuse these two terms? my trick is to think _conservatively_: rejecting the true null hypothesis, which is often deemed as default is the main error, hence type I.)


#### Critical region
Is a subset of support where the null hypothesis is rejected when the sample observed happens to be from there. For hypothesis tests about the mean, the critical region could be a value above or below which has very low probability and the presence of the sample in it is a strong evidence agains the null hypothesis.

> Q: How do we choose critical region? 
>
> We can choose whatever, but the hypothesis test results can be wrong. I suppose, the "smaller" the critical region we choose, the more likely the test result will stick with null hypothesis. 

From the book:
> The critical region is often defined implicitly through a **test statistic** and a **critical region** for the test statistic. 

#### Test statistic
Is a function of sample (a quantity derived from the sample). Hence, it is a random variable. Its critical region is a subset of $\mathbb{R}$. Once one draws its critical region, it implies a certain critical region for the sample as well. The test will be based on test statistic:
$$
\text{test statistic is in critical region} \Rightarrow \text{sample is in critical region} \Rightarrow H_0 \text{ is rejected} 
$$$$
\text{test statistic not in critical region} \Rightarrow \text{sample not in critical region} \Rightarrow H_0 \text{ is not rejected}
$$

> Q: Why use test statistic when defining a critical region is enough?
> 
> I suppose, usually the test statistic is much easier to reason about and define a reasonable critical region. On the other hand, defining a critical region for the sample is impractical as you have multiple samples and each can be vectors.


#### Power of test
Power of a test is the probability of rejecting the null hypothesis when, in fact, it is false. Power is a number between 0 and 1. Thus, the power of 1 indicates that the test is "powerful", i.e. it rejects the null hypothesis whenever it is false. In other terms, it indicates immunity from Type II error. 
Yes, it would be great to know the power of your test. So, how? 


#### Power function
This is the generalization of the notion of power of test. While power of test is just a quantity, the power function is defined on every possible parameter $\theta$, in case of parametric tests. 
$$
\pi(\theta) = P(\text{sample falls in critical region} | \text{true distribution parameter is } \theta)
$$

More on power function [here][2] that has a simple example included:
> Suppose you are testing the null hypothesis that the true parameter is equal to zero:
> $$H_0: \theta = 0$$
> Suppose that the value of the power function at $\theta =1$ is
> $$\pi(1) = 0.5$$
> What does this mean? It means that if the true parameter is equal to 1, then there is a 50% probability that the test will reject the (false) null hypothesis that the parameter is equal to 0.


Q: Knowing the power function of your test is great. But how can you derive it?


#### Size of a test
Size of a test is a measure of incorrectly rejecting the null hypothesis. It is defined in terms of the power function:
$$
sup_{\theta \in \Theta_R} \pi(\theta)
$$
In other words, it is the upper bound probability of incorrectly rejecting the null hypothesis. Ideally, we want the size of test to be 0.




[1]: https://www.statlect.com/fundamentals-of-statistics/hypothesis-testing
[2]: https://www.statlect.com/glossary/power-function