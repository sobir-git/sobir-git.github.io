title: Remembering formula of normal distribution
date: 03 may 2021

When googled, I got this for the normal distribution:

<p align="center">
  <img src="{static}/images/normal_distribution.svg" />
</p>

You can see it in many other different forms. I will try my best to show at best how can you remember it, or at least what you should keep in mind.

It breaks down into two parts:
$$
\frac{1}{\sigma\sqrt{2\pi}}
$$
and
$$
e^{-\frac{1}{2}(\frac{x-\mu}{\sigma})^2}
$$

The first part is just a **normalizing constant** that is worth memorizing.

Let's break down the **second part**:

1. Exponent $e$: the normal distribution converges asymptotically to 0 **exponentially** on both tails, or more accurately *quadratic exponentially* (if that's is a term).

2. Negative sign in the exponent: without which it would diverge on both tails.

3. The fraction $(\frac{x-\mu}{\sigma})^2$: it is the part that gives it parametrization of different means and standard deviations. The numerator $x - \mu$ ensures that at it has the peak at $x = \mu$ and the denominator $\sigma$ is used to stretch the x-axis linearly, so that desired standard deviation is obtained. Without the square the distribution wouldn't be symmetric.

4. The fraction $\frac{1}{2}$: sure, it would look cooler without this fraction, but the standard deviation would be $\sigma / \sqrt{2}$ instead of just $\sigma$.