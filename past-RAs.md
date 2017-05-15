---
title: Past RAs
layout: default
active_tab: students
---



<div class="container-fluid">
  <div class="row">


<h1>Independent Studies and RAships </h1>

  {% for semester in site.data.past_research_assistants %}
	<h2>{{ semester.semester }}</h2>
<ol>
	{% for student in semester.students %}
<li> {{ student.name }} - {{ student.degree }} - {{ student.role }} </li>
	{% endfor %}
</ol>
  {% endfor %}


<h1>Team Projects </h1>

{% for item in site.data.past_team_projects %}
<h2>{{ item.semester }} </h2>

<ol>
{% for project in item.projects %}
<li>{{project.project_name}}
{% if project.award %}
- <b>{{project.award}}</b>
{% endif %}

<ul>
{% for student in project.students %}
<li> {{ student.name }}  </li>
{% endfor %}
</ul>
</li>
{% endfor %}
</ol>
{% endfor %}

  </div>
</div>
