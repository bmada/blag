---
layout: glossary
title: module
category: Abstract Algebra
---

Let $$ \renewcommand\vec{\boldsymbol} R $$ be a [ring].

A **module**, more precisely a **left _R_-module**, consists of a [additive group][group] $$ (M, +) $$ equipped with a scalar multiplication map

$$ R \times M \longrightarrow M \qquad (r, \vec{m}) \longmapsto r \vec{m}, $$

that satisfies the following compatibility conditions:

1. $$ 1 \vec{m} = \vec{m} $$ for all $$ \vec{m} \in M $$, where $$ 1 $$ is the multiplicative identity of $$ R $$.
2. $$ M $$ is associative; for all $$r, s \in R $$ and $$ \vec{m} \in M $$,

   $$ (r s) \vec{m} = r ( s \vec{m} ), $$

   where $$ rs $$ is multiplication in $$ R $$.

3. $$ M $$ is distributive; for all $$ r, s \in R $$ and $$ \vec{m}, \vec{n} \in M $$,

   $$\begin{align*}
   r (\vec{m} + \vec{n}) &= r \vec{m} + r \vec{n}\\
   (r + s) \vec{m} &= r \vec{m} + s \vec{m}.
   \end{align*}$$

   where $$ r + s $$ is addition in $$ R $$.

<div markdown="1" class="example box">
## Example
The real vector space $$ \mathbf{R}^n $$ is a module. Indeed, Any [vector space] $$ V $$ over a [field] $$ \mathbf{F} $$ is automatically a module.

A module is a generalisation of a vector space where the space of scalars form a ring instead of a field.
</div>

A **right _R_-module** is defined similarly with a scalar multiplication map

$$ M \times R \longrightarrow M \qquad (\vec{m}, r) \longmapsto \vec{m}r. $$

An ***R*-*S*-bimodule** is both a left _R_-module and a right _S_-module, where $$ R $$ and $$ S $$ are rings. To distinguish between left _R_-modules, right _R_-modules and *R*-*S*-bimodules, the respective notations $$ _RM $$, $$ M_R $$ and $$ _RM_S $$ are used.



<div markdown="1" class="box">
## Example
Any ring $$ R $$ equipped with the same multiplication operation is a left _R_-module, a right _R_-module as well as an _R_-*R*-bimodule. This is immediate from the definition of a ring since $$ (R, +) $$ is a commutative group and for all $$ r, s, t \in R $$:

  - $$ 1 r = r $$,
  - $$ (r s) t = t (r s) $$,
  - $$  r (s + t) = r s + r t $$ and $$ (s + t) r = s r + t r $$.

</div>

<div markdown="1" class="box green">
## Proposition

Let $$ M $$ be an _R_-module.

1. $$ 0 \vec{m} = \vec{0} $$ for all $$ m \in M $$, where $$ 0 $$ is the additive identity in the ring $$ R $$ and $$ \vec{0} $$ is the additive identity in the group $$ (M, +) $$.
2. $$ (-1)\vec{m} = -\vec{m} $$ for all $$ m \in M $$, where $$ -1 $$ is the additive inverse of the multiplicative identity in $$ R $$ and $$ -\vec{m} $$ is the additive inverse of $$ \vec{m} $$ in $$ (M, +) $$.

</div>

_Proof._ For the first result, note that

$$ 0 \vec{m} = (0 + 0) \vec{m} = 0 \vec{m} + 0 \vec{m} $$

and add $$ -0 \vec{m} $$ to both sides. For the second, note

$$ \vec{0} = 0\vec{m} = \bigl(1 + (-1)\bigr)\vec{m} = \vec{m} + (-1)\vec{m}. $$

Adding $$ -\vec{m} $$ to both sides completes the proof. ∎

<div markdown="1" class="box">
## Example
Every commutative group $$ G $$ is naturally a $$ \mathbf{Z} $$-module, where the scalar multiplication $$ \mathbf{Z} \times G \to G $$ is $$ n $$-times addition defined by

$$ ng = \begin{cases}
g + g + \cdots + g, & n > 0;\\
0, & n = 0;\\
(-n)(-g), & n < 0.
\end{cases} $$

for $$ n \in \mathbf{Z} $$ and $$ g \in G $$.

</div>

<div markdown="1" class="box green">
## Proposition

Let $$ R^\text{op} $$ be the [opposite ring] of $$ R $$, that is, multiplication in $$ R^\text{op} $$ is performed in the reverse order. Then a left _R_-module can be identified with a right _R_<sup>op</sup>-module.
</div>

_Related:_ [submodule]

[group]: {{ site.url }}/glossary/group/
[ring]: {{ site.url }}/glossary/ring/
[opposite ring]: {{ site.url }}/glossary/ring/
[commutative group]: {{ site.url }}/glossary/group/
[field]: {{ site.url }}/glossary/field/
[vector space]: {{ site.url }}/glossary/vector-space/
[submodule]: {{ site.url }}/glossary/submodule/
