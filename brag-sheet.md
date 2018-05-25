---
title: Faculty Brag Sheet
layout: default
active_tab: main_page 
keep_sidebar: false 
---


{% capture this_year %}{{'now' | date: '%Y'}}{% endcapture %}
{% capture last_year %}{{'now' | date: '%Y'  | minus: 1}}{% endcapture %}

# Faculty Brag Sheet - Chris Callison-Burch 

## A. Teaching and Undergraduate Advising

### Teaching

I taught CIS 121 in Fall (which had an enrollment of 216), and CIS 530 in the Spring (with an enrollment of 64).  

This was the third time that I taught CIS 121.   I made several intentional changes to try to make it more cohesive.  Since I use the Sedgwick and Wayne textbook and their lecture slides,  I decided to make the course more like Princeton's COS 226 in order to bring the homeworks more in line with the other materials.  I dropped the CIS 121 term project, and replaced it with weekly programming assignments, several of which I directly drew from COS 226 (with Kevin Wayne's permission).  In retrospect these changes didn't work well - the TAs didn't have enough time to get up to speed on the new HWs, and the students didn't like that the fact that Penn had a course that was a derivative of Princeton's course.  Students also didn't like the fact that I made lecture attendance mandatory.   My teaching reviews for 121 suffered as a result. 

This was the first time that I taught Computational Linguistics, and I enjoyed it immensely.  I developed [the course content](http://computational-linguistics-class.org) from scratch, and tried some experimental things like doing part of the course as a flipped classroom, and designing open ended assignments with leaderboards.  Overall I felt that the course went very well, especially since it was my first time teaching the material.  I would like to teach this course again, perhaps alternating every other year with Ani Nenkova. 


### Undergraduate and Master's Research Projects 

{% assign women = 0 %}
{% assign total_students = 0 %}
{% assign counter = 1 %}

{% for semester in site.data.past_research_assistants %}
{% if semester.semester contains this_year or (semester.semester contains last_year and semester.semester contains "Fall" ) %}
{% for student in semester.students %}
  {% assign total_students = total_students | plus: 1 %}
  {% if student.gender == "female" %}
    {% assign women = women | plus: 1 %}
  {% endif %}
{% endfor %}
{% endif %}
{% endfor %}

{% for semester in site.data.past_team_projects %}

{% if semester.semester contains this_year or  (semester.semester contains last_year and semester.semester contains "Fall" ) %}

{% for project in semester.projects %}
  {% for student in project.students %}
    {% assign total_students = total_students | plus: 1 %}
    {% if student.gender == "female" %}
      {% assign women = women | plus: 1 %}
    {% endif %}
  {% endfor %}
{% endfor %}

{% endif %}
{% endfor %}


This year, I worked with {{total_students}} undergraduates and master's students on independent studies, RAships, and senior design projects.  {{ women | times: 100 | divided_by: total_students}}% of the students were women.


One of the undergraduates who I have done research with for the past 3 years, John Hewitt, has accepted a PhD position at Stanford in Natural Language Processing, starting the the Fall.  John had two ACL papers accepted this year.



{% for semester in site.data.past_research_assistants %}
{% if semester.semester contains this_year or  (semester.semester contains last_year and semester.semester contains "Fall" ) %}


#### {{ semester.semester }} 
<ol start="{{counter}}">
{% for student in semester.students %}
<li> {{ student.name }} - {{ student.degree }} - {{ student.role }} </li>
{% assign counter = counter | plus: 1 %}
{% endfor %}
</ol>
{% endif  %}
{% endfor %}


### Senior Design Projects 

{% for semester in site.data.past_team_projects %}

{% if semester.semester contains this_year or  (semester.semester contains last_year and semester.semester contains "Fall" ) %}
#### {{ semester.semester }} 

<ol>
{% for project in semester.projects %}
<li>{{project.project_name}}
{% if project.award %}
- <b>{{project.award}}</b>
{% endif %}

<ol start="{{counter}}">
{% for student in project.students %}
<li> {{ student.name }}  </li>
{% assign counter = counter | plus: 1 %}
{% endfor %}
</ol>
</li>
{% endfor %}
</ol>

{% endif  %}
{% endfor %}


## B.  Doctoral Student Education 


### Current PhD Students and Postdocs

My lab currently has 7 PhD students, 2 postdocs and 1 visiting researcher. I also have 1 remaining PhD student  at Johns Hopkins University.  Two of my other remaining JHU PhD students --Juri Ganitkevitch and Courtney Napoles-- successfully defended  their theses this year. 


<ol>
    {% for student in site.data.students %}
<li> {{ student.name }},  {{ student.degree }}, {{ student.institution }}.
    {% if student.expected_graduation_date %}
Expected graduation date: {{ student.expected_graduation_date }}
    {% endif %}
</li>

  {% endfor %}
</ol>

Currently, women make up 60% of my lab.  I've had a good track record of placing women in tenure-track faculty positions:
* This year, My postdoc Derry Wijaya has accepted a faculty position in computer science at Boston University.  She had 14 interviews, and 7 offers (UIC, Boston College, Boston University, SUNY Binghamton, Temple, Tufts, and Rochester). 
* Last year, my PhD student Ellie accepted a faculty position in computer science at Brown University. She had 12 interviews for faculty positions, which resulted in 7 offers from Princeton, Brown, NYU, University of Wisconsin-Madison, University of Michigan (offers from 2 departments), and the University of Colorado at Boulder. 
* Two years ago, my postdoc Wei Xu  accepted a faculty position in computer science at Ohio State University. She had 12 interviews for faculty positions, and OSU solved her two body problem. 

I have several other women in the pipeline who I hope to place into faculty jobs. The next one is likely to be Anne Cocos who is on target to graduate next year.  She won a Google Fellowship this year, and I think she will be a superb professor.

## C.  Research 


### Publications


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

This year I had a SNAFU with funding.  I was provisionally awarded a 4.5 year $4M DARPA AIDA grant, but it was rescinded by the DARPA contracting office because of a perceived COI with the Linguistics Data Consortium, which was awarded the contract to create the program's evaluation data and which shared the same CAGE code with the rest of Penn.  LDC has since got its own CAGE code, and this conflict should not arise again in the future.  Unfortunately, the decision to rescind the award couldn't be reversed.  I'm therefore spending this summer applying for a lot of grants.

{% assign grant_status = "current,pending" | split: "," %}
{% for status in grant_status %}

<!-- print the grant status -->
{%if status == "current" %}
#### Current grants
{% elsif status == "pending" %}
#### Pending grants
{% elsif status == "past" %}
#### Past grants
{% else %}
### Other</h3>
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
 
I served as the General Chair for the ACL 2017 conference.  We had 1,500+ paper submissions this year.  I secured several first time sponsors including Apple and Alibaba.  I introduced a new initiative  to offer on-site subsidized childcare at the conference.  I was the most junior person to be selected to serve as the General Chair.

