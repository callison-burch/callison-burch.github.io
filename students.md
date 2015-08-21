---
title: Students
layout: default
active_tab: publications
---


<div class="container-fluid">
  <div class="row">
  {% for student in site.data.students %}
      <div class="col-xl-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
        {% if student.homepage %}
        <a href="{{ student.homepage }}"><img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 200px; max-width: 200px"/></a><br />
         <b><a href="{{ student.homepage }}">{{ student.name }}</a></b><br />
        {% else %}
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 200px; max-width: 200px"/><br />
         <b>{{ student.name }}</b><br />
        {% endif %}
        {{ student.degree }}<br />
        {{ student.institution }}<br /> 
      </div>
  {% endfor %}
  </div>
</div>



<h3>Past PhD Students</h3>



<div class="container-fluid">
  <div class="row">
  {% for student in site.data.students_graduated %}
      <div class="col-xl-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 200px; max-width: 200px"/><br />
         <b>{{ student.name }}</b><br />
        Graduated from {{ student.institution }},  {{ student.graduation_date }}<br /> 
        Thesis: {{ student.thesis_title }}<br />
	{% if student.advisors contains ' and ' %}
		Advisors: {{student.advisors}}<br />
	{% else %}
		Advisor: {{student.advisors}}<br />
	{% endif %}
      </div>
  {% endfor %}
  </div>
</div>

