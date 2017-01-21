---
title: Students
layout: default
active_tab: students
---



<div class="container-fluid">
  <div class="row">
  {% for student in site.data.past_postdocs %}
	{% if student.gender == "female" %}
      <div align="center" class="col-lg-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />
      </div>
	{% endif %}
  {% endfor %}

  {% for student in site.data.students %}
	{% if student.gender == "female" %}
      <div align="center" class="col-lg-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />
      </div>
	{% endif %}
  {% endfor %}

  {% for student in site.data.students_graduated %}
	{% if student.gender == "female" %}
      <div align="center" class="col-lg-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />
      </div>
	{% endif %}
  {% endfor %}

  {% for student in site.data.research_assistants %}
	{% if student.gender == "female" %}
      <div align="center" class="col-lg-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />
      </div>
	{% endif %}
  {% endfor %}

  {% for project in site.data.team_projects %}
    {% for student in project.students %}
	{% if student.gender == "female" %}
      <div align="center" class="col-lg-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />
      </div>
	{% endif %}
  {% endfor %}
  {% endfor %}
  </div>
</div>
