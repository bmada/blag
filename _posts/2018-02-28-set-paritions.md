---
layout: post
title:  "Partitions of a Set"
date:   2018-02-28
categories: mathematics
---

{::options parse_block_html="true" /}
<div class="cards">

Suppose we have a list or set of objects where no two objects are the same. For example, a deck of cards, or some numbers `4` `1` `8`, or the four symbols `♢` `♣` `♡` `♠`.

A **partition** is any way of subdividing a list like the ones above into separate subsets or sublists that recombine to produce the original list. For example,

`♢` \| `♣` \| `♡` \| `♠` &ensp; or &ensp; `♢` `♣` \| `♡` `♠`
{: .center}

where the vertical bars act as dividers. Dividing a deck of cards into random piles is a way of partitioning the deck. Each object in the original list must be in exactly one of the subsets and the order of the objects or subsets is not important. For example, these two partitions are equivalent

`♡` `♠` \| `♢` `♣` &nbsp; ≡ &nbsp; `♢` `♣` \| `♠` `♡`.
{: .center}

In this case there are two piles or subsets. One is `♡` `♠` and the other is `♢` `♣`, the order of the objects within each group is not important. However,

`♢` \| `♣` \| `♣` `♠`
{: .center}

is not a partition of the set since `♡` is not used, and `♣` is in two of the subsets.

<div class="box" markdown=1>
## Question

How many partitions of this four-element set

`♢` `♣` `♡` `♠`
{: .center}

are there? What if there are more objects, say

`1` `2` `3` … <code class="highlighter-rouge"><i>n</i> − 1</code> _`n`_ ?
{: .center}

</div>

With four objects it turns out there are exactly 15. For the general case, there is a way to determine both how many partitions and what they are.

## Up to four elements

Consider the **single element** set `♢`. There is of course only one partition on this set, the element itself

1. `♢`

Let's define $$B_n$$ to be the number of partitions on a set with $$n$$ elements. So, for example, we just found that $$B_1 = 1$$ since there is only one partition of a single element set. Let's also agree that $$B_0 = 1$$. These numbers are called **Bell numbers**.

What about the **two element** set `♢` `♣`? This set has two partitions since the objects can be placed into separate subsets or the same subset,

1. `♢` \| `♣` or `♣` \| `♢`
2. `♢` `♣` or `♣` `♢`

meaning $$B_2 = 2$$. In fact, we can generate these two partitions from the above partition of the single element set, `♢`, by introducing the new element `♣`. This element can either go into its own subset, giving the partition `♢` \| `♣`, or it can go into the same subset as `♢`, which is the partition `♢` `♣`.

Now consider the **three element** set `♢` `♣` `♡`. Rather than trying to write out all possible partitions of this set, let's count the number of ways to partition this set by using the partitions above.

Suppose we begin partitioning the "extra" elements `♣` `♡` by splitting them into two groups: those that are in a subset with our original element `♢`, and those that are not. Let's call this a _prepartition_ and write it like this:

`♢` `…` ‖ `…`.
{: .center}

The elements to the left `…` ‖ are in the same partition as `♢`, while elements to the right ‖ `…` are not, they are "waiting" to be partitioned.

Here is the key idea: if there are $$k$$ elements that are **not** in the subset with `♢` (that is, they are on the right ‖ `…`), then they can be partitioned in $$B_k$$ ways, by the definition of $$B_k$$.

Let's say that $$k = 1$$ so there is one element that is not in the same subset as `♢`. There are two choices for this element resulting in two prepartitions. Each prepartition can each be partitioned in $$B_1 = 1$$ way.

1. `♢` `♣` ‖ `♡` → `♢` `♣` \| `♡`
2. `♢` `♡` ‖ `♣` → `♢` `♡` \| `♣`

If $$k = 2$$, then there is only one prepartition that can be partitioned $$B_2 = 2$$ ways. Here, note that one prepartition generates two partitions

{:start="3"}
3. `♢` ‖ `♣` `♡` → `♢` \| `♣` `♡`
4. <span class="hidden hint"><span>`♢` ‖ `♣` `♡`</span></span> → `♢` \| `♣` \| `♡`

Similarly, if $$k = 0$$ then all elements are in the same subject so there's only one prepartition that can be partitioned in only one way. Note that this agrees with $$B_0 = 1$$.

{:start="5"}
 5. `♢` `♣` `♡` ‖ → `♢` `♣` `♡`

Since $$k$$ can only take on the values $$0$$, $$1$$ or $$2$$, we have found all the partitions, and we have also proved that $$B_3 = 5$$.

What's more, we have shown that

$$B_3 = 2B_1 + B_2 + B_0 = \sum_{k=0}^2 \binom{2}{k}B_k = 5$$

where the coefficients are binomial numbers that count the number of ways to choose $$k$$ elements from the remaining 2 elements `♣` `♡`.

Ok, how about the **four element** set `♢` `♣` `♡` `♠`? Using the logic above, we need to sum from $$k = 0$$ to $$k = 3$$, so the number of partitions is

$$B_{4} = \binom{3}{0} B_{0} + \binom{3}{1} B_{1} + \binom{3}{2} B_{2} + \binom{3}{3} B_{3} = 15,$$

where $$\binom{3}{k}$$ is the binomial coefficient representing the number of ways to choose $$k$$ elements from a total of 3 elements. We can do better than count the number of partitions and actually generate all 15 partitions. Let's assume as before that we prepartition the elements, `♢` `…` ‖ `…`.

If $$k = 0$$, there is one prepartition.

 1. `♢` `♣` `♡` `♠` ‖ → `♢` `♣` `♡` `♠`

If $$k = 1$$, there are $$\binom{3}{1} = 3$$ prepartitions.

{:start="2"}
 2. `♢` `♣` `♡` ‖ `♠` → `♢` `♣` `♡` \| `♠`
 3. `♢` `♣` `♠` ‖ `♡` → `♢` `♣` `♠` \| `♡`
 4. `♢` `♡` `♠` ‖ `♣` → `♢` `♡` `♠` \| `♣`

If $$k = 2$$, there are $$\binom{3}{2} = 3$$ prepartitions that can be partitioned in $$B_2 = 2$$ ways.

{:start="5"}
5. `♢` `♣` ‖ `♡` `♠` → `♢` `♣` \| `♡` `♠`
6. <span class="hidden hint"><span>`♢` `♣` ‖ `♡` `♠`</span></span> → `♢` `♣` \| `♡` \| `♠`
7. `♢` `♡` ‖ `♣` `♠` → `♢` `♡` \| `♣` `♠`
8. <span class="hidden hint"><span>`♢` `♡` ‖ `♣` `♠`</span></span> → `♢` `♡` \| `♣` \| `♠`
9. `♢` `♠` ‖ `♣` `♡` → `♢` `♠` \| `♣` `♡`
10. <span class="hidden hint"><span>`♢` `♠` ‖ `♣` `♡`</span></span> → `♢` `♠` \| `♣` \| `♡`

If $$k = 3$$, there is $$\binom{3}{3} = 1$$ prepartition that can be partitioned in $$B_3 = 5$$ ways. This prepartition is

`♢` ‖ `♣` `♡` `♠`.
{: .center}

Here, we could use the partitions of the three element set that we found earlier, but instead let's work **recursively**. What we need to do is partition the set `♣` `♡` `♠`, which can be done using prepartitions. This means we need to form prepartitions on top of the existing prepartition! Fix the element `♣` so that the general structure will is `♢` ‖ `♣` `…` ‖ `…`, note that the choice of this element is not important, we could have chosen `♡` or `♠`.

{:start="11"}
 11. `♢` ‖ `♣` `♡` `♠` → `♢` ‖ `♣` `♡` `♠` ‖ → `♢` \| `♣` `♡` `♠`
 12. <span class="hidden hint"><span>`♢` ‖ `♣` `♡` `♠`</span></span> → `♢` ‖ `♣` `♡` ‖ `♠`  → `♢` \| `♣` `♡` \| `♠`
 13. <span class="hidden hint"><span>`♢` ‖ `♣` `♡` `♠`</span></span> → `♢` ‖ `♣` `♠` ‖ `♡`  → `♢` \| `♣` `♠` \| `♡`
 14. <span class="hidden hint"><span>`♢` ‖ `♣` `♡` `♠`</span></span> → `♢` ‖ `♣` ‖ `♡` `♠`  → `♢` \| `♣` \| `♡` `♠`
 15. <span class="hidden hint"><span>`♢` ‖ `♣` `♡` `♠` → `♢` ‖ `♣` ‖ `♡` `♠`</span></span>  → `♢` \| `♣` \| `♡` \| `♠`

That's it! We have proved that $$ B_4 = 15 $$ and listed all 15 partitions.

## General number of elements

<div class="box red" markdown=1>
## Theorem

Let $$ n $$ be a positive integer. The number of ways to partition an $$ n $$-element set

`1` `2` `3` … <code class="highlighter-rouge"><i>n</i> − 1</code> _`n`_
{: .center}

is $$ B_n $$, where $$ B_0 = 1 $$ and

$$B_{n} = \binom{n - 1}{0} B_{0} + \binom{n - 1}{1} B_{1} + \cdots + \binom{n - 1}{n - 1} B_{n - 1} = \sum_{k=0}^{n-1} \binom{n - 1}{k} B_{k}.$$

</div>

_Proof._ Fix the first element `1` and form a prepartition by placing $$ (n - k - 1) $$ elements in the same subset. This leaves $$ k $$ other elements to be partitioned.

`1` <code class="highlighter-rouge">(<i>n</i> − <i>k</i> − 1) elements</code> ‖ <code class="highlighter-rouge"><i>k</i> elements</code>.
{: .center}

This prepartition results in $$ \binom{n-1}{k}B_k $$ partitions since there are

- $$ \binom{n-1}{k} $$ ways to choose $$ k $$ elements from `2` `3` … _`n`_, and
- $$ B_k $$ ways to partition the $$ k $$ element set.

By summing over all values of $$ k $$, we obtain the total number of ways to partition an $$ n $$ element set as

$$B_{n} = \binom{n - 1}{0} B_{0} + \binom{n - 1}{1} B_{1} + \cdots + \binom{n - 1}{n - 1} B_{n - 1} = \sum_{k=0}^{n-1} \binom{n - 1}{k} B_{k},$$

as required. ∎

This is a recursive relationship: to compute the value of $$B_n$$, we require the values of $$B_{n-1}, B_{n-2}$$, down to $$B_0$$. To calculate $$B_5$$, for example, we need to compute

$$\begin{aligned}
B_0 &= 1\\
B_1 &= B_0 = 1\\
B_2 &= B_0 + B_1 = 2\\
B_3 &= B_0 + 2B_1 + B_2 = 5\\
B_4 &= B_0 + 3B_1 + 3B_2 + B_3 = 15\\
B_5 &= B_0 + 4B_1 + 6B_3 + 4B_3 + B_4 = 52.
\end{aligned}$$

---

While the above method is useful for counting set partitions, it is less useful for generating them because it requires us to compute combinations of sets of certain sizes, which may be difficult.

Here is a more systematic way to generate set partitions that does not require forming combinations, but does not unfortunately lend itself to a natural combinatorial interpretation.

<div class="box" markdown=1>
## Algorithm (Set Partitions)

The input is an $$ n $$-element set such as

`1` `2` `3` … <code class="highlighter-rouge"><i>n</i> − 1</code> _`n`_.
{: .center}

If the input is a singleton set, then the set itself is the partition so return it. For example, given the set _`n`_, return the partition _`n`_.


Otherwise, remove and store the last element _`k`_ and recursively partition the remaining elements

`1` `2` `3` … <code class="highlighter-rouge"><i>k</i> − 1</code>.
{: .center}

For each recursively generated partition, create and return new partitions given by:

1. Inserting the stored element _`k`_ into each subset of the recursively generated partition. For example, when adding _`k`_ to the partition
    
    `1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code>
    {: .center}

    the output partitions are
    - `1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code>  → `1` **_`k`_** \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code>
    - <span class="hidden hint"><span>`1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code></span></span> → `1` \| `2` **_`k`_** \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code>
    - <span class="hidden hint"><span>`1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code></span></span> → `1` \| `2` \| `3` **_`k`_** \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code>
    - <span class="hidden hint"><span>`1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code></span></span> → …
    - <span class="hidden hint"><span>`1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code></span></span> → `1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code>  **_`k`_**

2. Inserting the stored element _`k`_ into its own new subset with the rest of the partition. For example
    - <span class="hidden hint"><span>`1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code></span></span> → `1` \| `2` \| `3` \| … \| <code class="highlighter-rouge"><i>k</i> − 1</code> \| **_`k`_**

</div>

Applied to the set `♢` `♣` `♡` `♠`, the logic of the algorithm is summarised in the list below.

1. `♢` → `♢` `♣` → `♢` `♣` `♡` → `♢` `♣` `♡` `♠`
2. <span class="hidden hint"><span>`♢` → `♢` `♣` → `♢` `♣` `♡` </span></span>→ `♢` `♣` `♡` \| `♠`
3. <span class="hidden hint"><span>`♢` → `♢` `♣`  </span></span>→ `♢` `♣` \| `♡` → `♢` `♣` `♠` \| `♡`
4. <span class="hidden hint"><span>`♢` → `♢` `♣`  → `♢` `♣` \| `♡` </span></span>→ `♢` `♣` \| `♡` `♠`
5. <span class="hidden hint"><span>`♢` → `♢` `♣`  → `♢` `♣` \| `♡` </span></span>→ `♢` `♣` \| `♡` \| `♠`
6. <span class="hidden hint"><span>`♢` </span></span>→ `♢` \| `♣` → `♢` `♡` \| `♣` → `♢` `♡` `♠` \| `♣`
7. <span class="hidden hint"><span>`♢` → `♢` \| `♣` → `♢` `♡` \| `♣` </span></span>→ `♢` `♡` \| `♣` `♠`
8. <span class="hidden hint"><span>`♢` → `♢` \| `♣` → `♢` `♡` \| `♣` </span></span>→ `♢` `♡` \| `♣` \| `♠`
9. <span class="hidden hint"><span>`♢` → `♢` \| `♣` </span></span>→ `♢` \| `♣` `♡` → `♢` `♠` \| `♣` `♡`
0. <span class="hidden hint"><span>`♢` → `♢` \| `♣` → `♢` \| `♣` `♡` </span></span>→ `♢` \| `♣` `♡` `♠`
1. <span class="hidden hint"><span>`♢` → `♢` \| `♣` → `♢` \| `♣` `♡` </span></span>→ `♢` \| `♣` `♡` \| `♠`
2. <span class="hidden hint"><span>`♢` → `♢` \| `♣` </span></span>→ `♢` \| `♣` \| `♡` → `♢` `♠` \| `♣` \| `♡`
3. <span class="hidden hint"><span>`♢` → `♢` \| `♣` → `♢` \| `♣` \| `♡` </span></span>→ `♢` \| `♣` `♠` \| `♡`
4. <span class="hidden hint"><span>`♢` → `♢` \| `♣` → `♢` \| `♣` \| `♡` </span></span>→ `♢` \| `♣` \| `♡` `♠`
5. <span class="hidden hint"><span>`♢` → `♢` \| `♣` → `♢` \| `♣` \| `♡` </span></span>→ `♢` \| `♣` \| `♡` \| `♠`

</div>

An implementation of the algorithm in Python is below (adapted from [here](https://stackoverflow.com/a/30134039/)), making use of generators with `yield`{:.language-python .highlight} and the list joining syntax `[*l, *m]`{:.language-python .highlight}.

{% highlight python %}
def partition(elements):
    'Generate all partitions of a given iterable `elements`'
    if len(elements) == 1:
        yield [elements]
        return
    
    last_element = elements[-1]
    remaining_elements = list(elements[:-1])

    for subpartition in partition(remaining_elements):
        for n, subset in enumerate(subpartition):
            insert = [*subset, last_element]
            yield [*subpartition[:n], insert, *subpartition[n + 1:]]

        yield [*subpartition, [last_element]]
{% endhighlight %}

When run, it produces the following output.

{% highlight bash %}
>>> for part in partition('♡♠♢♣'):
...     print(part)
...
[['♢', '♣', '♡', '♠']]
[['♢', '♣', '♡'], ['♠']]
[['♢', '♣', '♠'], ['♡']]
[['♢', '♣'], ['♡', '♠']]
[['♢', '♣'], ['♡'], ['♠']]
[['♢', '♡', '♠'], ['♣']]
[['♢', '♡'], ['♣', '♠']]
[['♢', '♡'], ['♣'], ['♠']]
[['♢', '♠'], ['♣', '♡']]
[['♢'], ['♣', '♡', '♠']]
[['♢'], ['♣', '♡'], ['♠']]
[['♢', '♠'], ['♣'], ['♡']]
[['♢'], ['♣', '♠'], ['♡']]
[['♢'], ['♣'], ['♡', '♠']]
[['♢'], ['♣'], ['♡'], ['♠']]
{% endhighlight %}
