---
layout: page
title: Glossary
permalink: /glossary/
---

Welcome. Here lies an evolving glossary for mathematical terms.

{% assign groups = site.glossary | group_by: "category" | sort: "name" %}

{% for group in groups %}
<h2>{{ group.name }}</h2>

 {% for item in group.items %}
 - [{{ item.title }}]({{ item.url }})
 {%endfor%}
{%endfor%}
