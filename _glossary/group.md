---
layout: glossary
title: group
category: Abstract Algebra
---

A **group** is a nonempty set $$ G $$ equipped with a binary operation<!--span class="graffiti">The group operation is what adds structure to a set</span-->

$$ G \times G \longrightarrow G \quad (g, h) \longmapsto g * h $$

that satisfies the following conditions:

{:start="0"}
0. $$ G $$ is closed[^1]; if $$ g, h \in G $$, then

    $$ g * h \in G. $$

1. $$ G $$ is associative; for all $$ g, h, k \in G $$,

    $$ (g * h) * k = g * (h * k). $$

2. $$ G $$ contains an identity; there is an element $$ e \in G $$ such that

    $$ g * e = e * g = g $$

    for any element $$ g \in G $$.[^2]
3. $$ G $$ contains inverses; for any $$ g \in G $$, there exists $$ g^{-1} \in G $$ such that

    $$ g * g^{-1} = g^{-1} * g = e. $$

The group is referred to as $$ G $$, or more formally, $$ (G, *) $$.

[^2]: This element is necessarily unique. Suppose $$ e $$ and $$ e' $$ are identity elements, then $$ e = e * e' = e' $$ by definition.

<div markdown="1" class="box">
## Example (additive group of integers)

The set of integers $$ \mathbf{Z} = \{ \ldots, -2, -1, 0, 1, 2, \ldots \} $$ together with standard addition $$ + $$ forms a group $$ (\mathbf{Z}, +) $$.
</div>

<div markdown="1" class="box green">
## Proposition
Let $$ (G, *) $$ be a group.

1. The identity element of a group is unique.
2. For each $$ g \in G $$, its inverse $$ g^{-1} $$ is unique.
3. $$ (g^{-1})^{-1} = g $$ for all $$ g \in G $$.
4. $$ (g * h)^{-1} = h^{-1} * g^{-1} $$ for all $$ g, h \in G $$.
</div>

If the group operation is commutative, that is, $$ g * h = h * g $$ for all group elements $$ g, h \in G $$, then $$ (G, *) $$ is a **commutative** or **abelian group**.

A **multiplicative group** usually has group operation $$ \times $$ or $$ \cdot $$ with identity $$ 1 $$, and the inverse of $$ g $$ is written $$ g^{-1} $$. The multiplication $$ g \times h  $$ or $$ g \cdot h $$ is often abbreviated $$ gh $$, and the $$n$$-times product is denoted $$ g \times g \times \cdots \times g = g^n $$.

An **additive group**{: #additive-group} is commutative and the group operation is usually written $$ + $$. The identity is written $$ 0 $$ and the inverse of $$ g $$ is $$ -g $$, with $$ g + (-h) $$ abbreviated to $$ g - h $$. The $$ n $$-times addition is denoted $$ g + g + \cdots + g = ng $$.

The **order** $$ \vert G \vert $$ of a group $$ (G, *) $$ is the number of elements in the set $$ G $$. If $$ \vert G \vert < \infty $$, then $$ (G, *) $$ is a **finite group**.

<div class="box" markdown="1">
## Example
Let $$ G = \{ -1, 1 \} $$. The pair $$ (G, \times) $$ with usual multiplication $$ \times $$ is a commutative group. The multiplication table is shown below.

|**×**|**−1**|**1**|
|**−1**|1|−1|
|**1**|−1|1|
{: .thin}

The table indicates that $$ G $$ is closed, the identity element is $$ 1 $$ and each element is its own inverse. Associativity is inherited from the definition of $$ \times $$.

In fact, any group $$ G = \{ e, g \} $$ with two elements, i.e., any group of order two, has this multiplication structure.

|**∗**|**_g_**|**_e_**|
|**_g_**|_e_|_g_|
|**_e_**|_g_|_e_|
{: .thin}

All other groups with two elements have a direct correspondence to this group that preserves the multiplication structure, called an [isomorphism][group isomorphism].
</div>

<div class="box" markdown="1">
## Example (general linear group)
The set of all real invertible 2 by 2 matrices

$$ \biggl\{ \begin{bmatrix}a&b\\c&d\end{bmatrix} \in \text{M}_2(\mathbf{R}) : ad \ne bc \biggr\} $$

with matrix multiplication

$$ \begin{bmatrix}a&b\\c&d\end{bmatrix} \begin{bmatrix}a'&b'\\c'&d'\end{bmatrix} = \begin{bmatrix}aa'+bc'&ab'+bd'\\ca'+dc'&cb'+dd'\end{bmatrix} $$

form a group, denoted $$ \text{GL}_2(\mathbf{R}) $$. The set is closed since the product of two invertible matrices is invertible. Associativity is inherited from matrix multiplication and the group identity is the 2 by 2 identity matrix

$$ I_2 = \begin{bmatrix}1&0\\0&1\end{bmatrix}. $$

The inverse of an element in $$ \text{GL}_2(\mathbf{R}) $$ is simply the inverse of the matrix, which must be invertible,

$$ \begin{bmatrix}a&b\\c&d\end{bmatrix}^{-1} = \frac{1}{ad - bc} \begin{bmatrix}d&-b\\-c&a\end{bmatrix} \in \text{GL}_2(\mathbf{R}). $$

Similarly, the set of all real invertible _n_ by _n_ matrices also form a group, denoted $$ \text{GL}_n(\mathbf{R}) $$.

More generally, let $$ V $$ be a [vector space][vector space]. The **general linear group** over $$ V $$ is the set of all bijective linear transformations on $$ V $$

$$ \text{GL}(V) = \{ f \colon V \to V : f \text{ bijective and linear} \} $$

equipped with function composition $$ \circ $$. We can identify $$ \text{GL}_n(\mathbf{R}) $$, the group of real invertible _n_ by _n_ matrices, with the group $$ \mathrm{GL}(\mathbf{R}^n) $$ of all bijective linear transformations of $$ \mathbf{R}^n $$.
</div>

<div class="box" markdown="1">
## Example (multiplicative group of integers)
Let $$ \mathbf{Z}_n = \{ 0, 1, 2, \ldots, n - 1 \} $$ and define

$$ \mathbf{Z}_n^* = \{ a \in \mathbf{Z}_n : \operatorname{gcd}(a, n) = 1 \}. $$

For example, $$ \mathbf{Z}_{9}^* = \{ 1, 2, 4, 5, 7, 8 \} $$. These are exactly the elements in $$ \mathbf{Z}_{9} $$ that have a multiplicative inverse modulo 9, forming a group under this multiplication.

The set $$ \mathbf{Z}_n^* $$ equipped with multiplication modulo $$ n $$ is the **multiplicative group of integers**.

To prove this, suppose $$ a, b \in \mathbf{Z}_n^* $$. Then by [Bézout's identity](https://en.wikipedia.org/wiki/Bézout%27s_identity), there exist integers $$ x, y, w, z $$ such that $$ ax + ny = 1 $$ and $$ bw + nz = 1 $$. We then find that

$$ (ax + ny)(bw + nz) = ab(xw) + n(axz + byw + nyz) = 1 $$

Thus, $$ \operatorname{gcd}(ab, n) = 1 $$ again by Bézout's identity so $$ ab \in \mathbf{Z}_n^* $$ and the set is closed under multiplication modulo $$ n $$. Associativity is inherited from multiplcation: for any elements $$ a, b, c \in \mathbf{Z}_n^* $$,

$$ a (b c) = (a b) c = (abc) \bmod n. $$

The identity element is $$ 1 \in \mathbf{Z}_n^* $$. Finally, every element $$ a \in \mathbf{Z}_n^* $$ has an inverse $$ a^{-1} $$, which is itself invertible meaning $$ a^{-1} \in \mathbf{Z}_n^* $$. Thus $$ \mathbf{Z}_n^* $$ with multiplication modulo $$ n $$ is a group.
</div>

<div class="box" markdown="1">
## Example (symmetric group)
Suppose $$ S = \{ 1, 2, \ldots, n \} $$ and let

$$ S_n = \{ \sigma \colon S \to S : \text{$\sigma$ is a bijection} \} $$

be the set of permutations on $$ S $$. Then $$ (S_n, \circ) $$ is a group, called the **symmetric group**.
</div>

<div class="box" markdown="1">
## Example
Let $$ \Omega $$ be a set and consider the powerset, that is, set of all subsets $$ 2^\Omega = \{ A : A \subseteq \Omega \} $$ with the symmetric difference operator

$$ A \mathbin{\triangle} B = (A \setminus B) \cup (B \setminus A) $$

for subsets $$ A, B \in 2^\Omega $$. Then $$ ( 2^\Omega, \mathbin{\triangle} ) $$ is a group.
</div>

[^1]: This is immediate from the the definition of a binary operation.

[subgroup]: {{ site.url }}/glossary/subgroup/
[cyclic group]: {{ site.url }}/glossary/cyclic-group/
[group isomorphism]: {{ site.url }}/glossary/group-isomorphism/
[vector space]: {{ site.url }}/glossary/vector-space/
