---
title: Students
layout: default
active_tab: students
---

<h3>Past PhD Students</h3>

<div class="container-fluid">
  <div class="row">
  {% for student in site.data.students_graduated %}
      <div class="col-lg-4 col-md-6 col-xs-12" style="margin-bottom: 20px">
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ student.name }}</b><br />
        Graduated from {{ student.institution }},  {{ student.graduation_date }}<br /> 

	{% if student.thesis_link %}
        Thesis: <a href="publications/{{ student.thesis_link}}">{{ student.thesis_title }}</a><br /> 
	{% else %}
        Thesis: {{ student.thesis_title }}<br />
	{% endif %}
	{% if student.advisors contains ' and ' %}
		Advisors: {{student.advisors}}<br />
	{% else %}
		Advisor: {{student.advisors}}<br />
	{% endif %}
	{% if student.current_position and student.current_employer %}
		Current position: {{ student.current_position }} at {{ student.current_employer }}
	{% endif %}
      </div>
  {% endfor %}
  </div>
</div>


<h3>Past Postdocs</h3>

<div class="container-fluid">
  <div class="row">
  {% for postdoc in site.data.past_postdocs %}
      <div class="col-lg-4 col-md-6 col-xs-12" style="margin-bottom: 20px">
        {% if postdoc.homepage %}
        <a href="{{ postdoc.homepage }}"><img src="assets/img/students/{{postdoc.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/></a><br />
         <b><a href="{{ postdoc.homepage }}">{{ postdoc.name }}</a></b><br />
        {% else %}
	<img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ postdoc.name }}</b><br />         
        {% endif %}
	{% if postdoc.current_position and postdoc.current_employer %}
		Current position: {{ postdoc.current_position }} at {{ postdoc.current_employer }}
	{% endif %}
      </div>
  {% endfor %}
  </div>
</div>

<!--

<h3>Past Visiting Scholars</h3>

<div class="container-fluid">
  <div class="row">
  {% for visitor in site.data.past_visitors %}
      <div class="col-lg-4 col-md-6 col-xs-12" style="margin-bottom: 20px">
        {% if visitor.homepage %}
        <a href="{{ visitor.homepage }}"><img src="assets/img/students/{{visitor.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/></a><br />
         <b><a href="{{ visitor.homepage }}">{{ visitor.name }}</a></b><br />
        {% else %}
  <img src="assets/img/students/{{student.pic}}"  class="img-circle" style="height: 100%; width: 100%; max-height: 250px; max-width: 250px"/><br />
         <b>{{ visitor.name }}</b><br />         
        {% endif %}
  {% if visitor.institution %}
    {{ visitor.institution }}
  {% endif %}
      </div>
  {% endfor %}
  </div>
</div>
-->

