---
layout: glossary
title: measure
category: Measure Theory
---

A **measure** on a [measurable space]({{ site.url }}/glossary/σ-algebra/) $$ (\Omega, \mathcal{A}) $$ is a function $$ \mu \colon \mathcal{A} \to [0, \infty]$$[^1] that satisfies the following conditions:

 [^1]: Here, $$[0, \infty]  = [0,\infty) \cup \{ \infty \}$$ is part of the extended real number system. Define arthimetic with $$ \infty $$ as follows:

    - if $$ x \ne \infty $$ then $$ x \pm \infty = \pm \infty $$
    - if $$ x \in (0, \infty) $$ then $$ x \cdot (\pm \infty) = \pm \infty $$
    - if $$ x \in (-\infty, 0) $$ then $$ x \cdot (\pm \infty) = \mp \infty $$
    - \$$ \infty + \infty = \infty $$
    - \$$ -\infty - \infty = -\infty $$

    Leave $$ \infty - \infty $$ and $$ \infty / \infty $$ undefined. If needed, define $$ 0 \cdot \infty = 0 $$.

1. $$ \mu(\emptyset) = 0 $$; the empty set has zero measure.
2. $$ \mu $$ is countably additive; if $$ A_1, A_2, A_3, \ldots \in \mathcal{A} $$ is a countable collection of disjoint subsets, then
   
   $$\mu\bigl( A_1 \cup A_2 \cup A_3 \cup \cdots \bigr) = \mu(A_1) + \mu(A_2) + \mu(A_3) + \cdots.$$

The triple $$ (\Omega, \mathcal{A}, \mu) $$ is a **measure space** and the elements of $$ \mathcal{A} $$ are **measurable sets** or **$$ \mathcal{A} $$-measurable sets**.

{% comment %}*Related*: [finite measure](#), [null set](#), [probability measure](#){% endcomment %}

<div class="box" markdown=1>
## Example (zero measure)
A very degenerate example of a measure on any measurable space $$ (\Omega, \mathcal{A}) $$ is **zero measure** given by

$$\mu(A) = 0$$

for all $$ A \in \mathcal{A} $$. Every measurable set has zero measure.
</div>

<div class="box" markdown=1>
## Example (counting measure)

A natural sense of measure is **counting measure**, which counts the number of elements in a subset. For a measurable set $$ A \in \mathcal{A} $$, let

$$\mu(A) = \begin{cases}\# A, & A \text{ finite};\\ \infty, & A \text{ infinite},\end{cases}$$

where $$ \# A $$ denotes the cardinality of $$ A $$. Clearly $$ \mu( \emptyset) = 0$$, and given disjoint sets $$ A_1, A_2, \ldots \in \mathcal{A} $$ it is true that $$\mu(A_1 \cup A_2 \cup \cdots) =  \mu(A_1) + \mu(A_2) + \cdots$$.
</div>

<div class="box green" markdown=1>
## Proposition

Let $$ (\Omega, \mathcal{A}, \mu) $$ be a measure space.

Measures are monotonic: if $$ A \subseteq B \in \mathcal{A} $$ are measurable, then $$ \mu(A) \leqslant \mu(B) $$. More precisely,

$$ \mu(A) = \mu(B) + \mu(A \setminus B). $$

Any measurable sets $$ A $$ and $$ B $$ satisfy an inclusion-exclusion property

$$ \mu (A \cup B) + \mu (A \cap B) = \mu(A) + \mu(B). $$

</div>

_Proof._ For the first property, consider

$$ \mu(B) =  \mu\bigl(A \cup (B \setminus A)\bigr) = \mu(A) + \mu(B \setminus A). $$

Since $$ \mu(B \setminus A) \geqslant 0 $$ by definition, the result follows.

The second property follows from the three disjoint unions

$$ \begin{align*}
A \cup B &= (A \setminus B) \cup (A \cap B) \cup (B \setminus A)\\
A &= (A \setminus B) \cup (A \cap B)\\
B &= (B \setminus A) \cup (A \cap B)
\end{align*} $$

and additivity of the measure $$ \mu $$. ∎


A **probability space** is a measure space $$ (\Omega, \mathcal{F}, \Pr) $$ where the measure satisfies $$ \Pr(\Omega) = 1 $$, and is called a **probability measure**.

<div class="box" markdown=1>
## Example (Dirac measure)

Given a point $$ x \in \Omega $$ in a measurable space $$ (\Omega, \mathcal{A}) $$, **Dirac measure** is defined by

$$\delta_x(A) = \mathbf{1}_A(x) = \begin{cases}0, & x \notin A;\\ 1, & x \in A,\end{cases}$$

for $$ A \in \mathcal{A} $$, where $$ \mathbf{1}_A $$ is the indicator function. This measure is a probability measure.
</div>

<div class="box" markdown=1>
## Example

Counting and Dirac measures are both examples of a more general measure defined by a function $$ f \colon \Omega \to [0, \infty] $$, namely

$$ \mu(A) = \sum_{x \in A} f(x) $$

for measurable sets $$ A \in \mathcal{A} $$.[^2]

[^2]: If $$ A $$ is an uncountable set, then define the sum to be
    
    $$ \sum_{x \in A} f(x) = \sup\Biggl\{ \sum_{x\in X} f(x) : X \subseteq A, X \text{ finite} \Biggr\}. $$

    In fact, this is the integral of $$ f $$ using counting measure over $$ A $$.
</div>

<div class="box" markdown=1>
## Example (cocountable measure)

Let $$\Omega$$ be an uncountable set and let $$ \mathcal{E} $$ be the σ-algebra of countable and cocountable sets. The **cocountable measure** is

$$ \mu(E) = \begin{cases}0, & E \text{ countable},\\ 1, & E \text{ cocountable},\end{cases}$$

for all $$ E \in \mathcal{E} $$.
</div>

<div class="box green" markdown=1>
## Proposition

Let $$ (\Omega, \mathcal{A}, \mu) $$ be a measure space and suppose $$A_1, A_2, A_3, \ldots \in \mathcal{A}$$ is a countable collection of measurable sets.

1. Measures are subadditive:
   
   $$\mu\bigl( A_1 \cup A_2 \cup A_3 \cup \cdots \bigr) \leqslant \mu(A_1) + \mu(A_2) + \mu(A_3) + \cdots.$$

2. Measures are continuous from below: if $$ A_1, A_2, A_3, \ldots $$ is an increasing sequence of measurable sets, that is, $$ A_1 \subseteq A_2 \subseteq A_3 \subseteq \cdots $$, then
   
   $$ \mu(A_1 \cup A_2 \cup A_3 \cup \cdots) = \lim_{n\to\infty} \mu (A_n). $$

3. Measures are continuous from above: if $$ A_1, A_2, A_3, \ldots $$ is a decreasing sequence of measurable sets, that is, $$ A_1 \supseteq A_2 \supseteq A_3 \supseteq \cdots $$, and $$ \mu(A_m) < \infty $$ for at least one $$ m $$, then
   
   $$ \mu( A_1 \cap A_2 \cap A_3 \cap \cdots ) = \lim_{n\to\infty} \mu (A_n). $$
</div>

_Proof._ Let $$ B_1 = A_1 $$ and for $$ k = 2, 3, \ldots $$, let

$$ B_k = A_k \setminus ( A_1 \cup A_2 \cup \cdots \cup A_{k-1} ). $$

Then $$ A_k \subseteq B_k $$ for all $$ k $$ and the sets $$ B_1, B_2, \ldots, B_k $$ are disjoint with $$ \bigcup_{k=1}^n A_k = \bigcup_{k=1}^{n} B_k $$ for all $$ n $$. Therefore, by monotonicity,

$$ \begin{align}
\mu (A_1 \cup A_2 \cup \cdots) &= \mu( B_1 \cup B_2 \cup \cdots )\\
&= \mu(B_1) + \mu(B_2) + \cdots \\
&\leqslant \mu(A_1) + \mu(A_2) + \cdots.
\end{align} $$

Now suppose $$ A_1 \subseteq A_2 \subseteq A_3 \subseteq \cdots $$ and let $$ A_0 = \emptyset $$. Then
  
$$ \begin{align}
\mu(A_1 \cup A_2 \cup A_3 \cdots) &= \mu(A_1) + \mu(A_2) + \mu(A_3) + \cdots\\
&= \mu(A_1 \setminus A_0) + \mu(A_2 \setminus A_1) + \mu(A_3 \setminus A_2) + \cdots\\
&= \lim_{n\to\infty} \sum_{k=1}^{n} \mu(A_k \setminus A_{k-1})\\
&= \lim_{n\to\infty} \mu(A_n).
\end{align} $$

Suppose instead $$ A_1 \supseteq A_2 \supseteq A_3 \supseteq \cdots $$ with $$ A_m $$ being $$ \mu $$-finite. For $$ k = 1, 2, 3, \ldots $$ let $$ B_k = A_m \setminus A_k $$ so that $$ B_1 \subseteq B_2 \subseteq B_3 \subseteq \cdots $$. Then $$ \mu(A_m) = \mu(B_k) + \mu(A_k) $$ for each $$ k $$ and

  $$ B_1 \cup B_2 \cup B_3 \cup \cdots = A_m \setminus (A_1 \cap A_2 \cap A_3 \cap \cdots). $$

  Apply continuity from below to produce

  $$ \begin{align*}
  \mu(A_m) &= \mu(A_1 \cap A_2 \cap A_3 \cap \cdots) + \mu(B_1 \cup B_2 \cup B_3 \cup \cdots)\\
  &= \mu(A_1 \cap A_2 \cap A_3 \cap \cdots) + \lim_{n\to\infty} \mu (B_n)\\
  &= \mu(A_1 \cap A_2 \cap A_3 \cap \cdots) + \lim_{n \to \infty} ( \mu(A_m) - \mu(A_n) ).
  \end{align*} $$

  Subtract the finite quantity $$ \mu(A_m) $$ from both sides to complete the proof. ∎
