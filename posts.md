---
layout: page
title: Posts
permalink: /posts/
---

<div class="post-content archive">
{% if site.posts.size > 0 %}
{% for post in site.posts %}
{% assign currentDate = post.date | date: "%Y" %}
{% if currentDate != myDate %}
{% unless forloop.first %}</ul>{% endunless %}
<h2>{{ currentDate }}</h2>
<ul class="post-list">
{% endif %}
{% assign myDate = currentDate %}
  <li>
	<a href="{{ post.url | relative_url }}">
		<span class="post-meta">{{ post.date | date: "%B %-d" }}</span>
		{{- post.title | escape }}
	</a>
  </li>
{% if forloop.last %}</ul>{% endif %}
{% endfor %}
{% endif %}
</div>
