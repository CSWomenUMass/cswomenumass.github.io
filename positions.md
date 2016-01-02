---
layout: default
title: Positions
---
_For applications requiring you specify your status in the program, please include both academic program (e.g., M.S in Computer Science) and year, where year is your numeric year in the program (not the qualitative descriptor, such as "sophomore" or "PhD candidate")._

<ul>
{% for pos in site.positions %}
<li class="post"><a class="post-title" href="#" onclick="$('#{{ pos.pos_id }}').toggle();">{{ pos.title }}</a>
	{% if pos.available %}
	<span style="color:red; weight:bold">&nbsp;~Available NOW~</span>
    {% endif %}
	<div class="position" id="{{ pos.pos_id }}" style="display:none">
	<p>{{ pos.content }}</p>
	</div>
</li>
{% endfor %}
</ul>
