---
layout: glossary
title: norm
category: Functional Analysis
---

A **norm** on a vector space $$ \renewcommand\vec{\boldsymbol} \newcommand\wc{\mkern 2mu\cdot\mkern 2mu} V $$ over a field $$ \mathbf{F} $$ is a map

$$ \| \wc \| \colon V \longrightarrow [0, \infty) \quad \vec{v} \longmapsto \| \vec{v} \| $$

with the following properties:

{:start="0"}
0. $$ \| \wc \| $$ is nonnegative[^1]; $$ \| \vec{v} \| \geqslant 0 $$ for all $$ \vec{v} \in V $$.
1. $$ \| \vec{v} \| = 0 $$ if and only if $$ \vec{v} $$ is the zero vector $$ \vec{0} $$.
2. For all scalars $$ \lambda \in \mathbf{F} $$ and vectors $$ \vec{v} \in V $$, the norm $$ \| \cdot \| $$ satisfies

   $$  \| \lambda \vec{v} \| = \vert \lambda \vert \| \vec{v} \|. $$

   Here, $$ \vert \wc \vert $$ is an absolute value on $$ \mathbf{F} $$.

3. $$ \| \wc \| $$ satisfies the triangle inequality; for all $$ \vec{u}, \vec{v} \in V $$,

   $$ \| \vec{v} + \vec{u} \| \le \| \vec{v} \| + \| \vec{u} \|. $$

The pair $$ (V, \| \wc \|) $$ of a vector space and a norm is a **normed space**, also referred to less formally as $$ V $$.

[^1]: This property is included in the definition of the function.

<div class="box" markdown="1">
## Example (Absolute Value)
The usual **absolute value** is itself a norm on $$ \mathbf{R} $$ defined in equivalent ways

$$ \vert x \vert := \sqrt{x^2} = \max\{ -x, x \} = \begin{cases}x, & x \geqslant 0;\\-x, & x \leqslant 0\end{cases}$$

for all $$ x \in \mathbf{R} $$. The absolute value $$ \vert \wc \vert $$ is nonnegative, $$ \vert x \vert = 0 $$ if and only if $$ x = 0 $$ and if $$ \lambda \in \mathbf{R} $$, then $$ \vert \lambda x \vert = \vert \lambda \vert \vert x \vert $$. With $$ x, y \in \mathbf{R} $$, the triangle inequality follows by taking square roots of

$$ (x + y)^2 = x^2 + 2xy + y^2 \leqslant x^2 + 2 \vert x \vert \vert y \vert + y^2 = (\vert x \vert + \vert y \vert)^2, $$

noting that $$ xy \leqslant \vert x \vert \vert y \vert $$ and that both sides are nonnegative.

Over $$ \mathbf{C} $$, the absolute value for $$ z = a + ib \in \mathbf{C} $$ is

$$ | z | = \sqrt{a^2 + b^2}. $$

With $$ z_1, z_2 \in \mathbf{C} $$, the triangle inequality is shown by noting $$ \Re(z) = a \leqslant \vert z \vert $$ for any $$ z \in \mathbf{C} $$, so that

$$\begin{align*}
\vert z_1 + z_2 \vert^2 &= (z_1 + z_2)(\overline{z_1 + z_2})\\
&= (z_1 + z_2)(\overline{z_1} + \overline{z_2})\\
&= z_1 \overline{z_1} + z_1 \overline{z_2} + z_2 \overline{z_1} + z_2 \overline{z_2}\\
&= \vert z_1 \vert^2 + 2\Re(z_1 \overline{z_2}) + \vert z_2 \vert^2\\
&\leqslant \vert z_1 \vert^2 + 2 \vert z_1 \overline{z_2} \vert + \vert z_2 \vert^2\\
&= \vert z_1 \vert^2 + 2 \vert z_1 \vert \vert \overline{z_2} \vert + \vert z_2 \vert^2\\
&= (\vert z_1 \vert + \vert z_2 \vert)^2,
\end{align*}$$

where $$ \overline{z} = a - ib $$ is the complex conjugate, and $$ \vert \overline{z} \vert = \vert z \vert $$.

Taking square roots yields the triangle equality.
</div>

<div markdown="1" class="box green">
## Proposition (Reverse Triangle Inequality)
Let $$ (V, \| \wc \|) $$ be a normed space. For all $$ \vec{v}, \vec{u} \in V $$, the reverse triangle inequality holds

$$ -\| \vec{v} - \vec{u} \| \le \| \vec{v} \| - \| \vec{u} \| \le \| \vec{v} - \vec{u} \|. $$

</div>

_Proof._ By the triangle inequality,

$$ \| \vec{v} \| - \| \vec{u} \| = \| \vec{u} + (\vec{v} - \vec{u}) \| - \| \vec{u} \| \le \| \vec{v} - \vec{u} \|. $$

Replace $$ \vec{v} $$ and $$ \vec{u} $$, and note that $$ \| \vec{v} - \vec{u} \| = \| \vec{u} - \vec{v} \| $$ to produce the opposite inequality. ∎

<div class="box" markdown="1">
## Example (Euclidean norm)
Given a real _n_-dimensional vector $$ \vec{x} = (x_1, x_2, \ldots, x_n) \in \mathbf{R}^n $$, the **Euclidean norm** is

$$ \| \vec{x} \| = \sqrt{ { x_1 }^2 + { x_2 }^2 + \cdots + { x_n }^2 }. $$

The triangle inequality is a consequence of the Cauchy–Schwarz inequality. For $$ \vec{u}, \vec{v} \in \mathbf{R}^n $$, introducting the inner product yields

$$ \| \vec{u} + \vec{v} \|^2 = \langle \vec{u} + \vec{v}, \vec{u} + \vec{v} \rangle = \| \vec{u} \|^2 + 2\bigl| \langle \vec{u}, \vec{v} \rangle \bigr| + \| \vec{v} \|^2. $$

The Cauchy–Schwarz inequality states

$$ \bigl| \langle \vec{u}, \vec{v} \rangle \bigr| \leqslant \| \vec{u} \| \| \vec{v} \| $$

and the triangle inequality then follows,

$$ \| \vec{u} + \vec{v} \|^2 \leqslant \| \vec{u} \|^2 + 2\| \vec{u} \| \| \vec{v} \| + \| \vec{v} \|^2 = \bigl( \|\vec{u} \| ^2 + \| \vec{v} \|^2 \bigr)^2. $$

Note under the identification of $$ \mathbf{C} $$ as $$ \mathbf{R}^2 $$, the Euclidean norm aligns with the absolute value.

</div>

<div class="box" markdown="1">
## Example (_p_-norm)

Let $$ 1 \leqslant p < \infty $$ . For a real _n_-dimensional vector $$ \vec{x} = (x_1, x_2, \ldots, x_n) \in \mathbf{R}^n $$, the **_p_-norm** is

$$ \| \vec{x} \|_p = \bigl( {|x_1|}^p + {|x_2|}^p + \cdots + {|x_n|}^{p} \bigr)^{1/p}. $$

The case $$ p = 2 $$ reduces to the Euclidean norm. For $$ p = \infty $$, define

$$ \| \vec{x} \|_{\infty} = \max_{1\leqslant k \leqslant n} | x_k |. $$

It is possible to show that $$ \lim_{p\to\infty} \| \wc \|_p = \| \wc \|_{\infty} $$.

For $$ 1 < p < \infty $$, the triangle inequality is not immediate; it is known as Minkowski's inequality. For $$ \vec{x}, \vec{y} \in \mathbf{R}^n $$, we have

$$ \Biggl( \sum_{k=1}^n | x_k + y_k |^p \Biggr)^{1/p} \leqslant \left( \sum_{k=1}^n | x_k |^p \right)^{1/p} + \left( \sum_{k=1}^n | y_k |^p \right)^{1/p}. $$

</div>

<div class="box" markdown="1">
## Example (Matrix norm)

Given a norm $$ \| \wc \| $$ on $$ \mathbf{R}^n $$, the **induced matrix norm** on $$ \mathbf{R}^{n\times n} $$ is defined by

$$ \| A \| = \sup_{\vec{x}\ne\vec{0}} \frac{\| A\vec{x} \|}{\| \vec{x} \|} = \sup_{\| \vec{x} \| = 1} \| A \vec{x} \| $$

for $$ A \in \mathbf{R}^{n\times n} $$ and $$ \vec{x} \in \mathbf{R}^n $$. The matrix norm properties are inherited from the base norm.

This norm is also characterised by $$ \| A \| $$ being the smallest constant $$ C $$ such that

$$ \| A \vec{x} \| \leqslant C \| \vec{x} \| $$

for all $$ \vec{x} \in \mathbf{R}^n $$.

</div>


<div class="box" markdown="1">
## Example (_L<sup>p</sup>_-norm)

The _p_-norm can be extended to infinite dimensional sequence spaces and more general measure spaces.

Let $$ 1 \leqslant p < \infty $$ and $$ (\Omega, \mathcal{A}, \mu) $$ be a [measure space]. Consider the space $$ L^p(\Omega) $$ of equivalence classes[^2] of measurable functions $$ f \colon \Omega \to \mathbf{F} $$ such that

$$ \int_{\Omega} |f|^p \, d\mu < \infty. $$

[^2]: Functions are considered equivalent if they are equal $$ \mu $$-almost everywhere. This is necessary to ensure $$ \| f \|_p = 0 $$ implies $$ f = 0 $$. Often the distinction between a function and its equivalence class is inconvenient so it is usually glossed over.

The _L<sup>p</sup>_-norm on a measurable function $$ f $$ is

$$ \| f \|_p = \Biggl( \int_{\Omega} \vert f \vert^p \, d\mu \Biggr)^{1/p}. $$

The triangle inequality holds for $$ \| \wc \|_p $$ by Minkowski's inequality.

Under counting measure, this norm reduces to an infinite sum on sequence spaces. For $$ \vec{x} = \{ x_k \}_{k=1}^{\infty} \in \ell^{p} $$,

$$ \| \vec{x} \|_p = \Biggl( \sum_{k=1}^{\infty} |x_k|^p \Biggr)^{1/p}. $$

</div>

Two norms $$ \| \wc \| $$ and $$ \| \wc \|' $$ on the same space $$ V $$ are **equivalent** if there are constants $$ A, B \in \mathbf{F} $$ such that

$$ A \| \vec{v} \| \leqslant \| \vec{v} \|' \leqslant B \| \vec{v} \| $$

for all $$ \vec{v} \in V $$.

<div markdown="1" class="box green">
## Proposition

Any two norms on a finite-dimensional vector space are equivalent.

</div>

[measure space]: {{ site.url }}/glossary/measure/
