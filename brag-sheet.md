---
title: Faculty Brag Sheet
layout: default
active_tab: students
---


{% capture this_year %}{{'now' | date: '%Y'}}{% endcapture %}
{% capture last_year %}{{'now' | date: '%Y'  | minus: 1}}{% endcapture %}

<div class="container-fluid">
  <div class="row">

<h1>Faculty Brag Sheet - Chris Callison-Burch </h1>

<h2>A. Teaching and Undergraduate Advising</h2>

<p>In the Fall, I taught CIS 121 for the second time.  It had an enrollment of 219, and I recruited 26 undergraduate TAs to help me.   In the Spring, I had teaching relief because of the birth of my daughter, Willa Mercurio Callison.  Here are my teaching reviews while at Penn.  </p>

<h3>Teaching Reviews at Penn</h3>

Quality scale (0-4): 0=Poor, 1=Fair, 2=Good, 3=Very Good, 4=Excellent
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
       <td>{{course.course_rating | round: 1}}</td>
       <td>{{course.instructor_rating | round: 1}}</td>
     </tr>
      {% endif %}
  {% endfor %}
  </tbody>
</table>


<h3>Undergraduate Advising </h3>

<p>I have worked extensively with undergraduates and master's students on independent studies and RAships. I have made a special effort to recruit more women into computer science by doing research project with younger women.</p>


{% for semester in site.data.past_research_assistants %}
{% if semester.semester contains this_year or  semester.semester contains last_year %}
{% assign counter = 0 %}
{% for student in semester.students %}
{% if student.gender == "female" %}
{% assign counter = counter | plus: 1 %}
  {% endif %}
{% endfor %}
	<h4>{{ semester.semester }} - {{counter}} women</h4>
<ol>
	{% for student in semester.students %}
<li> {{ student.name }} - {{ student.degree }} - {{ student.role }} </li>
	{% endfor %}
</ol>
{% endif  %}
{% endfor %}

<h3>Team Projects </h3>

{% for item in site.data.past_team_projects %}

{% if item.semester contains this_year or  item.semester contains last_year %}
<h4>{{ item.semester }} </h4>

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

{% endif  %}
{% endfor %}

  </div>
</div>

<h2>B.  Doctoral Student Education </h2>


<h2>Current PhD Students and Postdocs</h2>

<p>My lab currently has 4 PhD students, 2 postdocs and 1 visiting researcher. I also have 3 PhD students remaining at Johns Hopkins University.</p>

<ol>
    {% for student in site.data.students %}
<li> {{ student.name }},  {{ student.degree }}, {{ student.institution }}.
    {% if student.expected_graduation_date %}
    Expected graduation date: {{ student.expected_graduation_date }}
    {% endif %}
</li>

  {% endfor %}
</ol>

<p>My PhD student Ellie Pavlick has accepted a faculty position in computer science at Brown University. She had 12 interviews for faculty positions, which resulted in 7 offers from Princeton, Brown, NYU, University of Wisconsin-Madison, University of Michigan (offers from 2 departments), and the University of Colorado at Boulder. </p>

<p>Last year, my postdoc Wei Xu  accepted a faculty position in computer science at Ohio State University. She had 12 interviews for faculty positions, and OSU solved her two body problem. </p>

<p>I have 2 more women in the pipeline who I expect to place into faculty jobs: Derry Wijaya and Anne Cocos.</p>


<h2>C.  Research </h2>


<h3>Publications</h3>


Since I am the General Chair of ACL 2017, I did not submit papers to the conference to avoid the appearance of conflict of interests.  My students and I have 6 papers under review for EMNLP 2017.

<ol>
  {% for year in (last_year..this_year) reversed %}
    {% for publication in site.data.publications %}
    {%if publication.year == year%}

        {% if publication.url %}
<li><a href="http://cis.upenn.edu/~ccb/{{ publication.url }}">
	{{ publication.authors }} ({{publication.year}}).
	{{ publication.title }}.
	{{ publication.venue }}  {{ publication.year }}.
        {% if publication.page_count < 8  %}
		{% if publication.venue == "ACL" or publication.venue == "NAACL" or publication.venue == "EMNLP" or publication.venue == "EACL" %}
       			{% if publication.type == "demo" %}
				Demo papers.
			{% else %}
				Short papers.
			{% endif %}
		{% endif %}
	{% endif %}

        {% if publication.award %}
	<b> {{ publication.award }}.</b>
	{% endif %}
</a>
        {% if publication.page_count %}
		{{publication.page_count}} pages.
	{% endif %}
</li>
        {% else %}
<li>{{ publication.authors }} ({{publication.year}}).{{ publication.title }}.</li>
	{% endif %}
    {% endif %}
    {% endfor %}
  {% endfor %}
</ol>



<h3>Grants</h3>

{% assign grant_status = "current,pending" | split: "," %}
{% for status in grant_status %}

<!-- print the grant status -->
{%if status == "current" %}
<h4>Current grants</h4>
{% elsif status == "pending" %}
<h4>Pending grants</h4>
{% elsif status == "past" %}
<h4>Past grants</h4>
{% else %}
<h3>Other</h3>
{% endif %}


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
    {% if grant.status == status %}
     <tr>
       <td>{{grant.title}}</td>
       <td>{{grant.awarding_body}}</td>
       <td>{{grant.amount}}</td>
       <td>{{grant.start_date}}{% if grant.end_date %}-{{grant.end_date}}{% endif %}</td>
       <td>{% if grant.PI_info %}{{grant.PI_info}}{% endif %}</td>
     </tr>
     {% endif %}
  {% endfor %}
  </tbody>
</table>

{% endfor %}


<h2>E. Service </h2>
 
I am serving as the General Chair for the ACL 2017 conference.  We had 1,500+ paper sumbissions this year.  I secured several first time sponsors including Apple and Alibaba.  I introduced a new initiative  to offer on-site subsidized childcare at the conference.  I am the most junior person to be selected to serve as the General Chair.

