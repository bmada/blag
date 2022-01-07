---
layout: glossary
title: ring
category: Abstract Algebra
---

A **ring** consists of an [additive group][additive group] $$ (R, +) $$ equipped with a multiplication map

$$ R \times R \longrightarrow R \qquad (r, s) \longmapsto r s $$

that satisfies the following conditions:

{:start="0"}
0. $$ R $$ is closed[^1]; if $$ r, s \in R $$, then

    $$ rs \in R. $$

1. Multiplication in $$ R $$ is associative; for all $$ r, s, t \in R $$,

    $$ ( r s ) t = r (s t). $$

2. $$ R $$ contains a multiplicative identity; there exists $$ 1 \in R $$ such that for all $$ r \in R $$,

    $$ 1 r = r 1 = r. $$

3. Multiplication in $$ R $$ is distributive with respect to addition; for all $$ r, s, t \in R $$

    $$\begin{align*}
    r (s + t) &= r s + r t,\\
    (s + t) r &= s r + t r.
    \end{align*}$$

<!--span class="graffiti">Multiplicative inverses are not required.</span-->

The ring is referred to as $$ R $$. More formally, the multiplication symbol can be made explicit

$$ (r, s) \longmapsto r \times s, $$

so that the ring refers to the triple $$ (R, +, \times) $$.

If the ring multiplication is commutative, that is, $$ rs = sr $$ for all $$ r, s \in R $$, then $$ R $$ is a **commutative ring**.

<div class="box" markdown=1>
## Example (zero ring)

The singleton set $$ \{ 0 \} $$ with operations

$$ 0 + 0 = 0 $$ and $$ 0 \times 0 = 0 $$
{: .center}

is the **zero ring**. This ring is unique in that additive and multiplicative identities coincide.
</div>

<div class="box" markdown=1>
## Example (ring of integers)

The prototypical example of a ring is the set of integers $$ \mathbf{Z} = \{ \ldots, -2, -1, 0, 1, 2, \ldots \} $$ together with standard addition $$ + $$ and multiplication $$ \times $$. The additive identity is $$ 0 $$ and the multiplicative identity is $$ 1 $$.
</div>

<div class="box" markdown=1>
## Example

Let $$ R = \{ 0, 1 \} $$ and define addition and multiplication using the tables below.

|**+**|**0**|**1**|
|**0**|0|1|
|**1**|1|0|
{: .thin}

|**×**|**0**|**1**|
|**0**|0|0|
|**1**|0|1|
{: .thin}

Then $$ (R, +, \times) $$ is a ring.

The addition table [gives]({{ site.url }}/glossary/group/#example) $$ R $$ an additive group structure and it can be verified using both tables that the multiplication is closed, associative, contains an identity, and distributes over addition.
</div>

<div class="box" markdown=1>
## Example

Define the subset of real numbers

$$ \mathbf{Z}[\sqrt{2}] = \{ a + b\sqrt{2} : a, b \in \mathbf{Z} \} \subseteq \mathbf{R}. $$

If $$ a, b, a', b' \in \mathbf{Z} $$, then

$$ (a + b\sqrt{2}) + (a' + b'\sqrt{2}) = (a + a') + (b + b')\sqrt{2} \in \mathbf{Z}[\sqrt{2}] $$

and

$$ (a + b\sqrt{2})(a' + b'\sqrt{2}) = (aa' + 2bb') + (ab' + ba')\sqrt{2} \in \mathbf{Z}[\sqrt{2}]. $$

Certainly $$ 0, 1 \in \mathbf{Z}[\sqrt{2}] $$ and the remaining properties are inherited from addition and multiplication in $$ \mathbf{R} $$, so $$ \mathbf{Z}[\sqrt{2}] $$ is a (commutative) ring.
</div>

<div class="box" markdown=1>
## Example

Let $$ C[0, 1] $$ be the space of all real-valued continuous functions on the interval $$ [0, 1] $$. Define addition and multiplication pointwise; for $$ f, g \in C[0, 1] $$, let

$$ \begin{align*}
(f + g)(x) &= f(x) + g(x)\\
(fg)(x) &= f(x)g(x)
\end{align*} $$

for all $$ x \in [0, 1] $$. Then $$ C[0, 1] $$ is a ring, where the additive identity is the constant zero function

$$ \mathbf{0} \colon [0, 1] \to \mathbf{R} \quad x \mapsto 0 $$

and the multiplicative identity is the constant one function

$$ \mathbf{1} \colon [0, 1] \to \mathbf{R} \quad x \mapsto 1. $$

</div>

<div class="box green" markdown=1>
## Proposition

Let $$ (R, +, \times) $$ be a ring.

1. The multiplicative identity element $$ 1 \in R $$ is unique.
2. $$0r = 0 = r0$$ for all $$ r \in R $$, where $$ 0 $$ is the additive identity in the group $$ (R, +) $$.
3. $$(-1)r = -r $$ for all $$ r \in R $$, where $$ -1 $$ is the additive inverse of the multiplicative identity in $$ R $$ and $$ -r $$ is the additive inverse of $$ r $$ in $$ (R, +) $$.

</div>

_Proof._ If $$ 1' \in R $$ is an alternate multiplicative identity then

$$ 1' = 1 \times 1' = 1. $$

Hence the multiplicative identity is necessarily unique. Secondly, for any $$ r \in R $$, note

$$ r0 = r(0 + 0) = r0 + r0, $$

where the addition of $$ -r0 $$ shows $$ r0 = 0 $$. Similarly, $$ 0r = 0 $$.

Finally,

$$ 0 = 0r = \bigl(1 + (-1)\bigr)r = r + (-1)r. $$

Adding $$ -r $$ to both sides completes the proof. ∎

A **division ring** is a nonzero ring where every nonzero element has a multiplicative inverse. That is, for all nonzero $$ r \in R $$, there exists $$ r^{-1} \in R $$ such that

$$ r r^{-1} = r^{-1} r = 1. $$

A commutative division ring is a **field**.

<div class="box" markdown=1>
## Example

The sets

- $$ \mathbf{Q} $$ (rationals),
- $$ \mathbf{R} $$ (reals), and
- $$ \mathbf{C} $$ (complex numbers)

with usual addition and multiplication are all commutative division rings, that is, fields.
</div>


A **unit** is an element $$ r \in R $$ that has a multiplicative inverse. The set of units of $$ R $$ is denoted $$ R^{\times} $$.

<div class="box green" markdown=1>
## Proposition

Let $$ R $$ be a ring. Then set of units $$ R^{\times} $$ under ring multiplication is a group.

</div>

_Proof._ The multiplicative identity of $$ R $$ is invertible, so $$ 1 \in R^{\times} $$. Associativity is inherited from the ring definition of $$ R $$, and furthermore $$ R^{\times} $$ contains inverses by definition.

For closure, if $$ r, s \in R^{\times} $$, then $$ r^{-1}, s^{-1} \in R^{\times} $$ and

$$ (r s) (s^{-1} r^{-1}) = r (s s^{-1}) r^{-1} = rr^{-1} = 1, $$

so the inverse of $$ rs $$ exists, with $$ (rs)^{-1} = s^{-1} r^{-1} \in R^{\times} $$.

Thus, $$ R^{\times} $$ with ring multiplication is a group. ∎

<div class="box" markdown=1>
## Example (matrix ring)

Let $$ R $$ be a ring and $$ n $$ be a positive integer. Define $$ M_n(R) $$ to be $$ n \times n $$ matrices of the form

$$ \begin{bmatrix}
r_{11} & r_{12} & \cdots & r_{1n}\\
r_{21} & r_{22} & \cdots & r_{2n}\\
\vdots & \vdots &  & \vdots\\
r_{n1} & r_{n2} & \cdots & r_{nn}
\end{bmatrix} = (r_{ij}), $$

where the $$ (i, j) $$th entry is $$ r_{ij} \in R $$ for $$ i, j = 1, 2, \ldots n $$.

Then $$ M_n(R) $$ is the $$ n \times n $$ **matrix ring** over the ring $$ R $$ when equipped with addition defined componentwise by

$$ (r_{ij}) + (s_{ij}) = (r_{ij} + s_{ij}) $$

and multiplication defined by

$$ (r_{ij})(s_{ij}) = (t_{ij}) $$

for all $$ (r_{ij}), (s_{ij}) \in M_n(R) $$, where $$ (t_{ij}) \in M_n(R) $$ is defined as

$$ t_{ij} = r_{i1}s_{1j} + r_{i2}s_{2j} + \cdots + r_{in}s_{nj} = \sum_{k=1}^{n} r_{ik}s_{kj}. $$

Note that $$ M_n(R) $$ need not be multiplicatively commutative, even if $$ R $$ is.

The additive identity is the zero matrix, where $$ 0 \in R $$ is the additive identity in $$ R $$,

$$ O = \begin{bmatrix}
0 & 0 & \cdots & 0\\
0 & 0 & \cdots & 0\\
\vdots & \vdots &  & \vdots\\
0 & 0 & \cdots & 0
\end{bmatrix}. $$

The multiplicative identity is the identity matrix, where $$ 1 \in R $$ is the multiplicative identity in $$ R $$,

$$ I = \begin{bmatrix}
1 & 0 & \cdots & 0\\
0 & 1 & \cdots & 0\\
\vdots & \vdots &  & \vdots\\
0 & 0 & \cdots & 1
\end{bmatrix}. $$

</div>


<div class="box" markdown=1>
## Example (polynomial ring)

Let $$ R $$ be a ring and let $$ R[x] $$ be the set of all sequences[^2]

$$ (r_0, r_1, r_2, \ldots) $$

such that $$ r_0, r_1, r_2, \ldots \in R $$ and there is some nonnegative $$ n $$ such that $$ r_{n+1} = r_{n+2} = r_{n+3} = \cdots = 0 $$. This sequence represents the polynomial

$$ r_0 + r_1 x + r_2 x^2 + \cdots + r_n x^n. $$

Equip $$ R[x] $$ with operations defined for all $$ p = (r_0, r_1, \ldots), q = (s_0, s_1, \ldots) \in R[x] $$ by

$$ p + q = (r_0 + s_0) + (r_1 + s_1) + \cdots $$

and

$$ pq = (p_0q_0, p_0q_1 + p_0q_1, \ldots) = (t_0, t_1, \ldots) $$

where $$ t_k = \sum_{i + j = k} r_i s_j = \sum_{i=0}^k r_{i} s_{k-i} $$.

Then $$ R[x] $$ is the **polynomial ring** over $$ R $$ in the indeterminate $$ x $$. The additive identitiy is $$ 0 = (0, 0, \ldots) $$ and the multiplicative identity is $$ 1 = (1, 0, 0, \ldots) $$. Elements of $$ R[x] $$ are generally written as polynomials using the identifications

$$ x = (0, 1, 0, 0, \ldots) $$ and $$ x^n = (0, \ldots, 0, 1, 0, \ldots) $$
{: .center}

so it is understood that

$$ r_0 + r_1 x + \cdots r_n x^n \in R[x]. $$

</div>

<div class="box red" markdown=1>
## Theorem (binomial theorem)

Let $$ R $$ be a ring and $$ n $$ be a positive integer. If $$ r, s \in R $$ commute under multiplication, that is, $$ rs = sr $$, then the **binomial theorem**

$$ (r + s)^n = \binom{n}{0} s^n + \binom{n}{1} rs^{n-1} + \cdots + \binom{n}{n} r^n = \sum_{k=0}^n \binom{n}{k} r^{k}s^{n-k} $$

holds true, where

$$ \binom{n}{k} = \frac{n!}{k!(n-k)!} $$

is the **binomial coefficient**.
</div>

_Proof._ If $$ r, s \in R $$ such that $$ rs = sr $$, then for any nonnegative integers $$ n, m $$,

$$ r^n s^m = s^m r^n. $$

The proof then follows from induction, where the inductive step amounts to [Pascal's identity](https://en.wikipedia.org/wiki/Pascal%27s_rule)

$$ \begin{align*}
\binom{n}{k} + \binom{n}{k-1} &= \frac{n!}{k!(n-k)!} + \frac{n!}{(k-1)!(n-k+1)!}\\
&= \frac{(n+1)!}{k!(n-k+1)!}\\
&= \binom{n+1}{k},
\end{align*} $$

where $$ k $$ is a positive integer. ∎

[^1]: This is immediate from the the definition of ring multiplication as a binary operation $$ R \times R \to R $$.
[^2]: This construction is to avoid ambiguity where different looking polynomials represent the same element. Consider what $$ x $$ means as an element of $$ R[x]$$ if $$ x \in R $$, for example.

[group]: {{ site.url }}/glossary/group/
[additive group]: {{ site.url }}/glossary/group/#additive-group
[ring]: {{ site.url }}/glossary/ring/
[quotient group]: {{ site.url }}/glossary/quotient-group/
[field]: {{ site.url }}/glossary/field/
[module]: {{ site.url }}/glossary/module/
[submodule]: {{ site.url }}/glossary/submodule/

