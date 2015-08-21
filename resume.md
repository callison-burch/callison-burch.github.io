---
title: Chris Callison-Burch 
layout: default
active_tab: CV
---

<h2>Employment</h2>

<table class="table"> 
  <tbody>
  {% for job in site.data.employment %}
     <tr>
       <td><b>{{job.position}}</b><br /> {{job.employer}}, {{job.location}}</td>
       <td>{{job.start_date}}-{{job.end_date}}</td>
     </tr>
<!--
     {% if job.description %}
     <tr>
        <td colspan="2">{{job.description}}</td>
     </tr>
     {% endif %}
-->
  {% endfor %}
  </tbody>
</table>

<h2>Education</h2>
<table class="table"> 
  <tbody>
  {% for degree in site.data.education %}
     <tr>
       <td><b>{{degree.degree}}</b><br /> 
		{{degree.institution}}, {{degree.location}}
		{% if degree.thesis %}<br /> 
		<i>Thesis:</i>{{degree.thesis}}.<br /> 
		<i>Advisors:</i>{{degree.advisor}}. 
     		{% endif %}
	</td>
       <td>{{degree.end_date}}</td>
     </tr>
  {% endfor %}
  </tbody>
</table>


<h2>Teaching</h2>

<table class="table"> 
  <tbody>
  {% for course in site.data.teaching %}
     <tr>
       <td>
	{% if course.url %}
		<a href="{{course.url}}"><b>{{course.title}}</b></a>
	{% else %}
		<b>{{course.title}}</b>
	{% endif %}
		({{course.number}})
	{% if course.coinstructors %}
		<i>co-taught with {{course.coinstructors}}</i>
	{% endif %}
		<br /> 
		{{course.institution}}
	</td>
       <td>{{course.term}} {{course.year}}</td>
     </tr>
     {% if course.description %}
     <tr>
        <td colspan="2">{{course.description}}</td>
     </tr>
     {% endif %}
  {% endfor %}

  </tbody>
</table>


<h2>Teaching Reviews at Penn</h2>

<table class="table"> 
  <tbody>
     <tr>
       <th>Term</th>
       <th>Course Title (Number)</th>
       <th>Students Enrolled</th>
       <th>Course Quality</th>
       <th>Instructor Quality</th>
     </tr>
  {% for course in site.data.teaching %}
      {% if course.institution == "University of Pennsylvania" %}
     <tr>
       <td>{{course.term}} {{course.year}}</td>
       <td>{{course.title}} ({{course.number}})</td>
       <td>{{course.enrollment}}</td>
       <td>{{course.course_rating}}</td>
       <td>{{course.instructor_rating}}</td>
     </tr>
      {% endif %}
  {% endfor %}
  </tbody>
</table>


<h2>Grants</h2>

<table class="table"> 
  <tbody>
     <tr>
       <th>Grant Title</th>
       <th>Awarding Body</th>
       <th>Amount</th>
       <th>Dates</th>
       <th>PI Info</th>
     </tr>
  {% for grant in site.data.grants %}
     <tr>
       <td>{{grant.title}}</td>
       <td>{{grant.awarding_body}}</td>
       <td>{{grant.amount}}</td>
       <td>{{grant.start_date}}{% if grant.end_date %}-{{grant.end_date}}{% endif %}</td>
       <td>{% if grant.PI_info %}{{grant.PI_info}}{% endif %}</td>
     </tr>
  {% endfor %}
  </tbody>
</table>



<h2>Publications</h2>

<!-- iterate over the different publication types -->
{% assign publication_types = "conference,journal,chapter,workshop,thesis" | split: "," %}
{% for publication_type in publication_types %}

<!-- print the publication type -->
{%if publication_type == "conference" %}
<h3>Refereed conference papers (all have acceptance rates ≈ 25%)</h3>
{% elsif publication_type == "journal" %}
<h3>Journal articles</h3>
{% elsif publication_type == "chapter" %}
<h3>Book chapters</h3>
{% elsif publication_type == "workshop" %}
<h3>Refereed workshop papers</h3>
{% elsif publication_type == "thesis" %}
<h3>Theses</h3>
{% endif %}


<ol>
  {% for year in (2000..2015) reversed %}
    {% for publication in site.data.publications %}
    {%if publication.year == year and publication.type == publication_type%}
<li>
	{{ publication.authors }}, ({{publication.year}}).
        {% if publication.url %}
		<a href="{{ publication.url }}">{{ publication.title }}.</a>
        {% else %}
		{{ publication.title }}.
	{% endif %}
	{{ publication.venue }}.
</li>
    {% endif %}
    {% endfor %}
  {% endfor %}
</ol>
{% endfor %}




<h2>Invited Talks</h2>

<ol>
    {% for talk in site.data.talks %}
<li>
	{{ talk.venue }}. {{talk.title}}. {{talk.date}}
</li>
  {% endfor %}
</ol>


<h2>Academic Service</h2>

<ul>
    {% for item in site.data.service %}
<li>
	{{item.description}}
</li>
  {% endfor %}
</ul>



<h2>PhDs Graduated</h2>

<ol>
    {% for student in site.data.students_graduated %}
<li>
	{{ student.name }}, {{ student.institution }} 
	{% if student.advisors contains ' and ' %}
		(advisors: {{student.advisors}}),
	{% else %}
		(advisor: {{student.advisors}}),
	{% endif %}
	"{{ student.thesis_title }}", {{ student.graduation_date }}.
</li>
  {% endfor %}
</ol>


<h2>Thesis Committees</h2>

<ol>
    {% for student in site.data.thesis_committees %}
<li>
	{{ student.name }}, {{ student.institution }} 
	{% if student.advisors contains ' and ' %}
		(advisors: {{student.advisors}}),
	{% else %}
		(advisor: {{student.advisors}}),
	{% endif %}
	"{{ student.thesis_title }}", {{ student.graduation_date }}.
</li>
  {% endfor %}
</ol>

