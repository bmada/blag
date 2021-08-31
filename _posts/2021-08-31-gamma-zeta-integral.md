---
layout: post
title: "Gamma, Zeta and an Integral"
date: 2021-08-31 +1000
categories: mathematics
---
The [gamma function][gamma], [Riemann zeta function][zeta] and an integral satisfy an incredible relationship: if $$ s > 1 $$ then

$$ \int_{0}^{\infty} \frac{x^{s-1}}{e^x - 1} \, dx = \Gamma(s) \zeta(s).$$

This relationship was derived by Bernhard Riemann in 1859[^1], but was also derived earlier for the particular case where $$ s $$ is even by Niels Abel in 1823[^2]. In physics, the $$ s = 4 $$ case of this integral,

$$ \int_{0}^{\infty} \frac{x^3}{e^x - 1} \, dx = \Gamma(4)\zeta(4) = \frac{\pi^4}{15}, $$

appears when deriving the [Stefan-Boltzmann law](sigma), which relates the temperature of certain objects to the energy radiated from them.

 [^1]: In his groundbreaking 8 page paper _Über die Anzahl der Primzahlen unter einer gegebenen Größe_ ([_On the Number of Prime Numbers less than a Given Quantity_](http://www.claymath.org/sites/default/files/ezeta.pdf))
 [^2]: In _Oplösning af et Par Opgaver ved Hjelp af bestemt Integraler_ (_Solutions of Some Problems using Definite Integrals_) reprinted as _Solution de quelques problèmes à l'aide d'intégrales définies_, paper II in [Œuvres complètes de Niels Henrik Abel](https://archive.org/details/117742591)


## Derivation

The derivation below is mostly unchanged from the original approached of Abel and Riemann. On a first glance, it looks straightforward, but there are some subtle steps along the way that do require justifying which are often overlooked.

<div class="box green" markdown=1>
## Proposition
For any real number $$ s > 1 $$, the gamma and zeta functions satisfy

$$ \int_{0}^{\infty} \frac{x^{s-1}}{e^x - 1} \, dx = \Gamma(s) \zeta(s).$$

</div>

_Proof._ Let $$ s > 1 $$ and recall the integral definition of the Gamma function,

$$ \Gamma(s) = \int_{0}^{\infty} t^{s-1} e^{-t} \, dt. $$

Make the integral substitution $$ t = nx $$ with $$ dt = n \, dx $$ to produce

$$ \Gamma(s) = n^s \int_{0}^{\infty} x^{s-1} e^{-nx} \, dx. $$

Recall the zeta function is defined by $$\zeta(s) = \sum_{n=1}^{\infty}1/n^s$$ for $$ s>1 $$. This yields

$$ \Gamma(s)\zeta(s) = \sum_{n=1}^{\infty} \frac{\Gamma(s)}{n^s} = \sum_{n=1}^{\infty} \int_{0}^{\infty} x^{s-1} e^{-nx} \, dx. $$

Integrate the last expression term by term (in other words, exchange the sum and integral), so that

$$
\Gamma(s)\zeta(s) = \int_{0}^{\infty} \sum_{n=1}^{\infty} x^{s-1} e^{-nx} \, dx = \int_{0}^{\infty} x^{s-1} \sum_{n=1}^{\infty} e^{-nx} \, dx.
$$

Finally, sum the infinite geometric series $$ \sum_{n=1}^{\infty} e^{-nx} = \frac{1}{e^x - 1} $$. This results in

$$ \Gamma(s) \zeta(s) = \int_{0}^{\infty} \frac{x^{s-1}}{e^x - 1} \, dx, $$

as desired. ∎

### Problem #1: Does the integral even exist?

The integral is improper in two ways:

1. The upper limit is infinity.
2. The integrand is not defined at the lower limit of zero.

This means that **the standard integral comparison test does not directly apply** since the integral is doubly improper. The usual way to resolve this is to break the integral apart at some point,

$$ \int_{0}^{\infty} \frac{x^{s-1}}{e^x - 1} \, dx = \int_{0}^{1} \frac{x^{s-1}}{e^x - 1} \, dx + \int_1^\infty \frac{x^{s-1}}{e^x - 1} \, dx, $$

and apply a comparison test to each component. However,  it is cleaner to consider the integral as a Lebesgue integral (though the reasoning is essentially the same). Using the bound 

$$ 0 < \frac{x^{s-1}}{e^x - 1} < x^{s-2} e^{-x/2} $$

for $$ x > 0 $$, the integral converges since

$$
\begin{align*}
\int_{0}^{\infty} \frac{x^{s-1}}{e^x - 1} \, dx
&< \int_{0}^{\infty} x^{s-2} e^{-x/2} \, dx\\
&= 2\int_{0}^{\infty} (2t)^{s-2} e^{-t} \, dt\\
&= 2^{s-1} \Gamma(s-1)\\
&< \infty,
\end{align*}
$$

provided $$ s > 1 $$. The integral therefore exists.

### Problem #2: Can you exchange the sum and integral?

Unpacking the series into a sequence of partial sums, the exchange ultimately boils down to the following swap

$$ \lim_{n\to\infty} \int_{0}^{\infty} f_n = \int_{0}^{\infty} \lim_{n\to\infty} f_n. $$

Some justify the exchange due to uniform convergence of the series[^3]<sup>, </sup>[^4]. However, **uniform convergence alone is _not_ enough to justify this exchange**, as the following counterexample shows.

 [^3]: See [Deriving the Stefan-Boltzmann law from Planck’s law](https://gotohaggstrom.com/Deriving%20the%20Stefan-Boltzmann%20law%20from%20Plancks%20law.pdf)
 [^4]: See [Analytical Derivation of the Stefan-Boltzmann Law for Integral Radiance from Planck's Law for Spectral Radiance](https://ur.booksc.eu/ireader/70008568)

<div class="box blue" markdown="1">
## Counterexample (Escape to Width Infinity)

Let the sequence of functions $$ \{ f_n \}_{n=1}^{\infty} $$ be defined by

$$ f_n(x) = \frac{1}{n} \mathbf{1}_{[0, n]} = \begin{cases}1/n & 0 \leqslant x \leqslant n;\\0 & \mathrm{otherwise}.\end{cases} $$

Then $$ f_n $$ converges pointwise and uniformly to the zero function. Then

$$ \int_{0}^{\infty} \lim_{n\to\infty}f_n = 0. $$

And yet

$$ \lim_{n\to\infty}\int_{0}^{\infty} f_n(x) \, dx = \lim_{n\to\infty} \int_{0}^{n} \frac{1}{n} \, dx = \lim_{n\to\infty} 1 = 1. $$

</div>

So what goes wrong? The interval of integration is unbounded which gives enough room for the area to leak out. Uniform convergence only justifies the exchange on a compact interval.

It is possible to define a notion of uniform convergence of improper integrals that permits the exchange, but again it is cleaner to use Lebesgue integration and appeal to a more powerful theorem.

<div class="box red" markdown="1">
## Theorem (Monotone Convergence Theorem)

Let $$ (\Omega, \mathcal{A}, \mu) $$ be a measure space and suppose $$ \{ f_n \}_{n=1}^{\infty} $$ is a sequence of nonnegataive measurable functions on $$ \Omega $$ such that:

1. The sequence $$ \{ f_n \}_{n=1}^{\infty} $$ is nondecreasing; for all $$ x \in \Omega $$,

   $$ 0 \leqslant f_1(x) \leqslant f_2(x) \leqslant \cdots. $$

2. The limit $$ \lim_{n\to\infty} f_n(x) $$ exists for all $$ x \in \Omega $$, and may be infinite.

Then $$ \lim_{n\to\infty} f_n $$ is a nonnegative integrable function and

$$ \int_{\Omega} \lim_{n\to\infty} f_n \, d\mu = \lim_{n\to\infty} \int_{\Omega} f_n \, d\mu. $$

</div>

<div class="box grey" markdown="1">
## Corollary
Suppose $$ \{ f_n \}_{n=1}^{\infty} $$ is a sequence of nonnegataive measurable functions. Then

$$ \sum_{n=1}^\infty \int_{0}^{\infty} f_n(x) \, dx = \int_{0}^{\infty} \sum_{n=1}^{\infty} f_n(x) \, dx. $$

</div>

_Proof._ Assume usual Lebesgue measure and let $$ g_N = \sum_{n=1}^{N} f_n $$ be the $$N$$th partial sum. Since each $$ f_n $$ is nonnegative, the partial sums form a nondecreasing sequence of functions,

$$ 0 \le g_1(x) \le g_2(x) \le \cdots \quad \text{ for all } x > 0. $$

Note that by definition

$$ \lim_{N\to\infty} g_N = \sum_{n=1}^{\infty}f_n $$

and apply the Monotone Convergence Theorem to the sequence $$ \{ g_N \}_{N=1}^{\infty} $$ to produce the result. ∎

There are analogues of this corollary that assume less using the Dominated Convergence Theorem and Fubini's theorem, but this version is enough to justify the exchange.

### Problem #3: Does the geometric series converge?

This condition easily is verified. The common ratio of the geometric series $$ \sum_{n=1}^{\infty} e^{-nx} $$ satisfies the condition for convergence since $$ \lvert e^{-x} \rvert < 1 $$ as $$ x > 0 $$.


## Applications

This integral has important applications the area of statistical mechanics. As noted earlier, it appears when deriving the Stefan-Boltzmann Law, which states that the heat power radiated from a black body is

$$ P = A \sigma T^4 $$

where $$ T $$ is temperature, $$ A $$ is area and $$ \sigma $$ is the constant[^5]

$$ \sigma = \frac{2\pi k^4}{c^2 h^3} \int_{0}^{\infty} \frac{x^3}{e^x-1} \, dx= \frac{2 \pi k^4}{c^2 h^3} \biggl( \frac{\pi^4}{15} \biggr) = 5.67\ldots\times10^{-8} \text{ W/m$^2$/K$^4$}. $$

This comes from integrating Planck's Law and making a substitution $$ x = h\nu/kT $$

$$ \frac{P}{A} = \frac{2\pi h}{c^2} \int_{0}^{\infty} \frac{\nu^3}{e^{h\nu/kT} - 1} \, d\nu = T^4 \frac{2 \pi k^4}{c^2h^3} \int_{0}^{\infty} \frac{x^3}{e^x - 1} \, dx. $$

Bose-Einstein integrals are of the form $$ \int_{0}^{\infty} \frac{t^{s-1}}{e^t/z - 1} \, dt $$ and can be expressed in terms of the [polylogarithm function][polylog],

$$ \text{Li}_s(z) = \frac{1}{\Gamma(s)} \int_{0}^{\infty} \frac{t^{s-1}}{e^t/z - 1} \, dt, $$

where the polylogarithm is defined as $$ \text{Li}_s(z) = \sum_{k=1}^{\infty} z^k/k^s $$. Setting $$ z = 1 $$ recovers the Zeta function $$  \zeta(s) = \text{Li}_s(1) $$ and the original integral. In particular, when studying ideal Bose gases, the following relations are used

$$ \int_{0}^{\infty} \frac{x^{1/2}}{e^x - 1} \, dx = \frac{\sqrt{\pi}}{2}\zeta(3/2), $$

$$\int_{0}^{\infty} \frac{x^{3/2}}{e^{x} - 1} \, dx = \frac{3\sqrt{\pi}}{4} \zeta(5/2). $$

both of which are specific examples of the integral.

 [^5]: Here, $$ k $$ is the Boltzmann constant, $$ h $$ is Planck's constant and $$ c $$ is the speed of light

[gamma]: https://en.wikipedia.org/wiki/Gamma_function
[zeta]: https://en.wikipedia.org/wiki/Riemann_zeta_function
[polylog]: https://en.wikipedia.org/wiki/Polylogarithm
[MCT]: https://en.wikipedia.org/wiki/Monotone_convergence_theorem#Lebesgue.27s_monotone_convergence_theorem
[sigma]: https://en.wikipedia.org/wiki/Stefan–Boltzmann_constant