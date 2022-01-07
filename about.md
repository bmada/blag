---
layout: page
title: About
permalink: /about/
---

Welcome aboard. My name is Ben and I'll be your host for today.

## Colophon

Here we are, written in [Jekyll](https://jekyllrb.com/) using a (quite heavily) modified [minima](https://github.com/jekyll/minima) theme and [Jekyll Pure Liquid Heading Anchors](https://github.com/allejo/jekyll-anchor-headings). Generated and hosted with [Vercel](https://vercel.com/) using the typeface [Crimson Pro](https://fonts.google.com/specimen/Crimson+Pro) and math typesetting library [MathJax](https://www.mathjax.org/).


## Blogroll

Sites that I find interesting or want to keep for later. Probably too many to be useful.

{% if site.data.blogroll %}
<ul>
    {% for blogroll in site.data.blogroll %}
    <li>
    <a href="{{ blogroll.url }}" rel="external">
    <h3>{{ blogroll.title }}</h3>
    </a>
    {{ blogroll.comment | markdownify }}
    </li>
    {% endfor %}
</ul>
{% endif %}

