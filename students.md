---
title: Lab
layout: default
active_tab: students
---



<div class="container-fluid">
  <div class="row">
  {% for student in site.data.students %}
      <div class="col-lg-4 col-md-6 col-xs-12" style="margin-bottom: 20px">
        {% if student.homepage %}
        <a href="{{ student.homepage }}"><img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/></a><br />
         <b><a href="{{ student.homepage }}">{{ student.name }}</a></b><br />
        {% else %}
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />
        {% endif %}
        {{ student.degree }}<br />
        {{ student.institution }}<br /> 
      </div>
  {% endfor %}
  </div>
</div>

## [Past Students, Postdocs and Visitors](students-past.html)