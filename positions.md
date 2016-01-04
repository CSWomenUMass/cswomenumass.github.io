---
layout: default
title: Positions
---

Why get more involved with CS Women? Officers have a high degree of contact with faculty, are asked to participate in high-profile events, and are given priority for outreach, publicity, and networking-related activities (e.g., the Grace Hopper Celebration). 

_For applications requiring you specify your status in the program, please include both academic program (e.g., M.S in Computer Science) and year, where year is your numeric year in the program (not the qualitative descriptor, such as "sophomore" or "PhD candidate")._

{% include toggle_logic.html %}

<ul>
{% for pos in site.positions %}
{% if pos.available %}
<li class="post">
<a class="post-title" href="#" onclick="toggle_and_align({{ pos.pos_id }});">{{ pos.title }}</a>
	<!-- <span style="color:red; weight:bold">&nbsp;~Available NOW~</span> -->
	&nbsp;&nbsp;<span class="label label-warning" style="font-size:10pt; display:inline-block; vertical-align:middle; margin-bottom:10px;">Available Now</span>
	<div class="position" id="{{ pos.pos_id }}" style="display:none">
	<p>{{ pos.content }}</p>
	</div>
	<!-- TODO: add a collapse button -->
</li>
{% endif %}
{% endfor %}
</ul>

[[Scroll to top]](#)
