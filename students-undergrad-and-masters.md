---
title: Students
layout: default
active_tab: students
---



<h3 id="RAs">Undergraduate/Masters RAs</h3>

<div class="container-fluid">
  <div class="row">
  {% for student in site.data.research_assistants %}
      <div class="col-lg-4 col-md-6 col-xs-12" style="margin-bottom: 20px">
        {% if student.homepage %}
        <a href="{{ student.homepage }}"><img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/></a><br />
         <b><a href="{{ student.homepage }}">{{ student.name }}</a></b><br />
        {% else %}
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />    
        {% endif %}     
        {{ student.degree }}<br />
	{% if student.project %}
		Project: {{ student.project }} 
	{% endif %}
      </div>
  {% endfor %}
  </div>
</div>


<h3 id="RAs">Undergraduate Project Teams</h3>
  {% for project in site.data.team_projects %}
<h4 align="center"> {{project.project_name}} </h4>
<div class="container-fluid">
  <div class="row">
    {% for student in project.students %}
        <div class="col-lg-3 col-md-6 col-xs-12" style="margin-bottom: 20px">
          {% if student.homepage %}
          <a href="{{ student.homepage }}"><img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/></a><br />
           <b><a href="{{ student.homepage }}">{{ student.name }}</a></b><br />
          {% else %}
    <img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
           <b>{{ student.name }}</b><br />    
          {% endif %}     
        </div>
    {% endfor %} 
  </div>
</div>
  {% endfor %}



