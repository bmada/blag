---
layout: glossary
title: coset
category: Abstract Algebra
---

Let $$ H \leq G $$ be a [subgroup].

A **coset**, more precisely a **left coset**, of $$ H $$ in $$ G $$ is a set of the form

$$ gH = \{ gh : h \in H \} \subseteq G $$

for some $$ g \in G $$. The set of all left cosets is denoted

$$ G/H = \{ gH : g \in G \}. $$

The **index** of $$ H $$ in $$ G $$, denoted $$ [G : H] $$ is the number of left cosets of $$ H $$ in $$ G $$.

<div markdown="1" class="box">
## Example (additive cosets of integers)

The subsets $$ 2\mathbf{Z} = 0 + 2\mathbf{Z} \subseteq \mathbf{Z} $$ and $$ 1 + 2\mathbf{Z} \subseteq \mathbf{Z} $$ are cosets of the additive subgroup of even integers $$ (2\mathbf{Z}, +) $$. These represent the set of even and odd integers.

Given a positive integer $$ n $$, the cosets of $$ n \mathbf{Z} $$, the [additive subgroups of $$ \mathbf{Z} $$]({{ site.url }}/glossary/subgroup/#example-additive-subgroups-of-integers), are of the form

$$ p + n\mathbf{Z} = \{ p + nm : m \in \mathbf{Z} \} $$

where $$ p = 0, 1, 2, \ldots, n - 1 $$. Thus, the index of $$ n\mathbf{Z} $$ in $$ \mathbf{Z} $$ is

$$ [\mathbf{Z} : n\mathbf{Z}] = n. $$

</div>

A **right coset** is defined similarly

$$ Hg = \{ hg : h \in H \} \subseteq G $$

for some $$ g \in G $$, and

$$ H\backslash G = \{ Hg : g \in G \}. $$


<div class="box green" markdown=1>
## Lemma

Let $$ H $$ a subgroup of a group $$ G $$ and suppose $$ g, h \in G $$. The following are equivalent

1. \\( gH = hH \\)
2. \\( Hg^{-1} = Hh^{-1} \\)
3. \\( gH \subseteq hH \\)
4. \\( h \in gH \\)
5. \\( g^{-1} h \in H \\)

</div>

<div class="box red" markdown="1">
## Theorem (Lagrange's Theorem)

Let $$ G $$ be a finite group with subgroup $$ H $$. Then $$ \vert H \vert $$ divides $$ \vert G \vert $$ and

$$ [G : H] = | G / H | = \frac{|G|}{|H|}. $$

</div>

_Proof._ Cosets of $$ H $$ define equivalence classes on $$ G $$ under the equivalence relation $$ h \sim g $$ if and only if $$ hH = gH $$. Then $$ G $$ can be partitioned into a union of disjoint cosets

$$ G = g_1H \cup g_2H \cup \cdots \cup g_{[G : H]}H. $$

Each coset has the same cardinality due to the existence of the bijective map

$$ H \longrightarrow g H \qquad h \longmapsto g h. $$

That is, $$ \vert H \vert = \vert g_1H \vert = \vert g_2H \vert = \cdots = \vert g_{[G : H]}H \vert $$ and so

$$ |G| = |H| + |H| + \cdots + |H| = [G : H] |H| $$

where $$ [G : H] = \vert G / H \vert $$ by definition. ∎

<div markdown="1" class="box">
## Example

The additive group of integers can be decomposed into the union of distinct cosets

$$ \mathbf{Z} = n\mathbf{Z} \cup (1 + n\mathbf{Z}) \cup \cdots \cup \bigl( (n - 1) + n\mathbf{Z} \bigr). $$

</div>

[subgroup]: {{ site.url }}/glossary/subgroup/
