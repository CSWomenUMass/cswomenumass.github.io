---
layout: default
title: Positions
---

Why get more involved with CS Women? Officers have a high degree of contact with faculty and are asked to participate in high-profile events. It's a great way to make friends, make research connections, and have fun or whatever.

_For applications requiring you specify your status in the program, please include both academic program (e.g., M.S in Computer Science) and year, where year is your numeric year in the program (not the qualitative descriptor, such as "sophomore" or "PhD candidate")._

{% include toggle_logic.html %}

<ul>
{% for pos in site.positions %}
{% if pos.available %}
<li class="post">
<a class="post-title" href="#" onclick="toggle_and_align({{ pos.pos_id }});">{{ pos.title }}<span class="label label-warning" style="font-size:10pt; display:inline-block; vertical-align:middle; margin-left:10px; margin-bottom:10px;">Available Now</span></a>
	<div class="position row" id="{{ pos.pos_id }}" style="display:none; margin-left: 10px">
	<p>{{ pos.content }}</p>
	<a class="label label-info" style="float:right; font-size: 10pt; margin-bottom:20px" onclick="toggle_and_align({{ pos.pos_id }})">Collapse</a>
	</div>
	<!-- TODO: add a collapse button -->
</li>
{% endif %}
{% endfor %}
</ul>

<a href="#">
<span class="label label-info" style="float:right; font-size: 10pt;">Scroll to top</span>
</a>
