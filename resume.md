---
title: Chris Callison-Burch 
layout: default
active_tab: CV
---

{% capture mark_pre_tenure %}False{% endcapture %}

<h1>Chris Callison-Burch: CV</h1>
<p class="text-muted">
(Last updated {{ site.time | date: "%B %d, %Y" }})<br/>
</p>

<h2>Education</h2>
<table class="table"> 
  <tbody>
  {% for degree in site.data.education %}
     <tr>
       <td><b>{{degree.degree}}</b><br /> 
    {{degree.institution}}, {{degree.location}}
    {% if degree.thesis %}<br /> 
    <i>Thesis:</i> <a href="{{degree.thesis_url}}">{{degree.thesis}}</a><br /> 
  {% endif %}
    {% if degree.advisor contains ' and ' %}
    <i>Advisors:</i> {{degree.advisor}}
  {% else %}
    <i>Advisor:</i> {{degree.advisor}}
  {% endif %}
  </td>
       <td>{{degree.end_date}}</td>
     </tr>
  {% endfor %}
  </tbody>
</table>


<h2>Professional Appointments</h2>

<table class="table"> 
  <tbody>
  {% for job in site.data.employment %}
     <tr>
       <td><b>{{job.position}}</b><br /> {{job.employer}}, {{job.location}}</td>
       <td>{{job.start_date}}-{{job.end_date}}</td>
     </tr>
  {% endfor %}
  </tbody>
</table>

<h2>Publications</h2>

My publications have been cited more than 31,000 times. I have an h-index of 71.

<!--
According to Google Scholar, [my publications have been cited more than 25,000 times](https://scholar.google.com/citations?user=nv-MV58AAAAJ&hl=en), with 12,000 of those citations coming since after I got tenure in 2017.  I have an h-index of 61 (46 post tenure).  [My Semantic Scholar profile](https://www.semanticscholar.org/author/Chris-Callison-Burch/1763608) has an automatically ranked list of my most influential publications. Here is a filtered list of [my most influential publications since getting tenure](https://www.semanticscholar.org/author/Chris-Callison-Burch/1763608?year%5B0%5D=2017&year%5B1%5D=2030&sort=influence). 
-->

<!--
{% assign publication_types = "conference,journal,chapter,workshop,thesis" | split: "," %}
-->

<!-- iterate over the different publication types -->
{% assign publication_types = "conference,journal,workshop" | split: "," %}
{% for publication_type in publication_types %}

<!-- print the publication type -->
{%if publication_type == "conference" %}
<h3>Conference papers</h3>
<!--
<p>The most prominent publication venues for natural language processing research are conferences organized by the Association for Computational Linguistics.  The top-tier conferences are: ACL, EMNLP, and NAACL. COLING, AACL, and EACL are very strong venues as well.  Our conferences require full-paper submissions, and have a rigorous double-blind reviewing process.  Most of our conferences have <a href="https://aclweb.org/aclwiki/Conference_acceptance_rates">acceptance rates</a> of around 25%, with conferences now regularly receiving thousands of paper submissions each year.</p> 
-->

{% assign selective_venues = "ACL,NAACL,EMNLP,EACL,AAAI,ICML,CHI,CVPR,NeurIPS,ICLR,TACL,Computational Linguistics" | split: "," %}
<!--
{% for venue in selective_venues %}
{% assign counter = 0 %}
{% for publication in site.data.publications %}
{% if publication.venue == venue %}
    {% assign counter = counter | plus:1 %}
{% endif %}
{% endfor %}
{{counter}} {{venue}}.
{% endfor %}
-->


{% elsif publication_type == "journal" %}
<h3>Journal articles</h3>
{% elsif publication_type == "chapter" %}
<h3>Book chapters</h3>
{% elsif publication_type == "workshop" %}
<h3>Workshop papers</h3>
<!--
<p>NLP workshops are usually peer reviewed, but they have more generous acceptance rates than the main ACL conferences.  Workshops are good venues to present work to special interest groups.</p> 
-->
{% elsif publication_type == "thesis" %}
<h3>Theses</h3>
{% endif %}


<ol>
{% capture this_year %}{{'now' | date: '%Y'}}{% endcapture %}
  {% for year in (2000..this_year) reversed %}
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if year == 2017 and publication_type != "thesis" and publication_type != "chapter" %}
  <h4>Pre-tenure Publications:</h4>
  {% elsif year == 2013 and publication_type != "thesis" %}
  <h4>Publications before joining Penn:</h4>
  {% endif %}
  {% endif %}
  <!-- End marker -->
    {% for publication in site.data.publications %}
    {%if publication.year == year and publication_type == publication.type %}

        {% if publication.url %}
<li><a href="{{ publication.url }}">
	{{ publication.authors | replace: "*", "" | replace: "Chris Callison-Burch", "<b>Chris Callison-Burch</b>" }} ({{publication.year}}).
	{{ publication.title }}.
	
  <!-- highlight selective venues -->
  {% if selective_venues contains publication.venue  %}
  <b>{{ publication.venue }} </b>
  {% else %}
  {{ publication.venue }}  
  {% endif %}


  {{ publication.year }}.
        {% if publication.page_count < 8  %}
		{% if publication.venue == "ACL" or publication.venue == "NAACL" or publication.venue == "EMNLP" or publication.venue == "EACL" %}
       			{% if publication.type == "demo" %}
				Demo papers.
			{% else %}
				Short papers.
			{% endif %}
		{% endif %}
	{% endif %}

</a>
  {% if publication.award %}
	<b> {{ publication.award }}.</b>
	{% endif %}

  {% if publication.highly_cited %}
  <b> {{ publication.highly_cited }} citations.</b>
  {% endif %}

  {% if publication.page_count %}
  <font color="gray">
		{{publication.page_count}} pages.
  </font>
	{% endif %}
</li>
        {% else %}
<li>{{ publication.authors | replace: "*", "" | replace: "Chris Callison-Burch", "<b>Chris Callison-Burch</b>" }} ({{publication.year}}).{{ publication.title }}.</li>
	{% endif %}
    {% endif %}
    {% endfor %}
  {% endfor %}
</ol>
{% endfor %}




<h2>Invited Talks and Panels</h2>

<ol>
    {% for talk in site.data.talks %}
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if talk.date == "February 2, 2017" %}
  <h4>Pre-tenure talks:</h4>
  {% elsif talk.date == "March 22, 2013" %}
  <h4>Talks before joining Penn:</h4>
  {% endif %}
  {% endif %}
  <!-- End marker -->
      {% if talk.url %}
        <li> <a href="{{talk.url}}">{{ talk.venue }}. {{talk.title}}</a>. {{talk.date}} </li>
      {% else %}
       <li> {{ talk.venue }}. {{talk.title}}. {{talk.date}} </li>
      {% endif %}
  {% endfor %}
</ol>



<h2>Grants</h2>

<!-- {% assign grant_status = "current,pending,past" | split: "," %} -->
{% assign grant_status = "current,past" | split: "," %}
{% for status in grant_status %}

<!-- print the grant status -->
{%if status == "current" %}
<h3>Current grants</h3>
{% elsif status == "pending" %}
<h3>Pending grants</h3>
{% elsif status == "past" %}
<h3>Past grants</h3>
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
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if status == "past" and grant.title == "CI-NEW&colon; NIEUW&colon; Novel Incentives and Workflows in Linguistics Data Collection" %}
  <tr><td colspan="5"><h4>Grants received before tenure:</h4></td></tr>
  {% elsif status == "past" and grant.title == "Large-scale Paraphrasing for Natural Language Understanding (DEFT)" %}
  <tr><td colspan="5"><h4>Grants received prior to joining Penn:</h4></td></tr>
  {% endif %}
  {% endif %}
  <!-- End marker -->
    {% if grant.status == status and grant.type != "gift" %}
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




<h2>Teaching</h2>

<!--
Since I got tenure in 2017, I have dedicated more of my focus to teaching.  At that time, I analyzed my teaching reviews and found a substantial anti-correlation between class size and student reviews of course and instructor quality.  I gave myself the task of understanding how I could scale my classes, while still maintaining the course quality that I was able to initially achieve in my small (<100 student) courses.  I am proud that I successfully improved my teaching quality even in semesters when I am teaching courses with >500 students enrolled.  Since 2019, I have consistently received teaching scores that fall between very good and excellent.  

I now gladly take on additional teaching duties.  
I regularly take on voluntary teaching overloads. I twice added NLP to my teaching load when a colleague is unavailable to teach it, I took on extra sections of AI when demand outstripped the max capacity of the lecture hall, and I offered two seminar courses because of high student interest in LLMs and research. 

I also teach two courses for Penn Engineering's online masters degree programs – I teach Artificial Intelligence (identical to my on-campus course), and a newly redesigned version of my Natural Language Processing course, which focuses on large language models.  


Since joining Penn I have taught 3970 students, 3500 of which I have taught since getting tenure in 2017. This semester alone I'm teaching approximately 750 students:
* 400 in my on-campus AI class
* 200 in my online AI class
* 150 in my online NLP class
* more than a dozen in my LLM seminar
 -->


<h3>Teaching Reviews</h3>
You can read my full teaching reviews [here](teaching-reviews.pdf).  Below are the summary statistics. 


<!--
<table class="table"> 
  <tbody>
     <tr>
     <td><b>Colored rows indicate additional teaching beyond normal requirements.</b></td>
     <td style="background-color: #CCCCFF;">Taught for Penn Engineering Online</td>
     <td style="background-color: #FFFFCC;">Voluntary teaching overload</td>
   </tr>
 </tbody>
</table>
-->

<table class="table"> 
  <tbody>
     <tr>
     <td><b>Penn teaching reviews are on a 0-4 quality scale:</b></td>
     <td>0=Poor</td>
     <td>1=Fair</td>
     <td>2=Good</td>
     <td>3=Very Good</td>
     <td>4=Excellent</td>
   </tr>
 </tbody>
</table>

<!--
<b>Quality scale (0-4): 0=Poor, 1=Fair, 2=Good, 3=Very Good, 4=Excellent</b>
-->



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
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if course.term == "Fall" and course.year == 2017 %}
  <tr><td colspan="5"><h4>Courses taught before tenure:</h4></td></tr>
  {% endif %}
  {% endif %}  
  <!-- End marker -->

  {% if course.institution == "University of Pennsylvania" %}
      {% if course.voluntary_overload_IGNORE %}
     <tr style="background-color: #FFFFCC;">
      {% elsif course.online_degree_IGNORE %}
     <tr style="background-color: #CCCCFF;">
      {% else %}
     <tr>
      {% endif %}
       <td>{{course.term}} {{course.year}}</td>
       <td>{{course.title}} ({{course.number}})</td>
       <td>{{course.enrollment}}</td>
       <td>{% if course.course_rating %}{{course.course_rating | round: 1}}{% endif %}</td>
       <td>{% if course.instructor_rating %}{{course.instructor_rating | round: 1}}{% endif %}</td>
     </tr>
      {% endif %}
  {% endfor %}
  </tbody>
</table>
<h2>Awards</h2>
<ul>
{% for award in site.data.awards %}
<li>{{award.award}} - {{award.description}} ({{award.date | date: '%Y'}})</li>
{% endfor %}
</ul>


<b>Research Awards from Companies (given as gifts to the university for my research group)</b>
<ul>
{% for grant in site.data.grants %}
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if status == "past" and grant.title == "CI-NEW&colon; NIEUW&colon; Novel Incentives and Workflows in Linguistics Data Collection" %}
  <tr><td colspan="5"><h4>Awards received before tenure:</h4></td></tr>
  {% elsif status == "past" and grant.title == "Large-scale Paraphrasing for Natural Language Understanding (DEFT)" %}
  <tr><td colspan="5"><h4>Grants received prior to joining Penn:</h4></td></tr>
  {% endif %}
  {% endif %}
  <!-- End marker -->
    {% if grant.type == "gift" %}
     <li>{{grant.start_date}} award from {{grant.awarding_body}} ({{grant.amount}})</li>
     {% endif %}
  {% endfor %}
</ul>

<h2>Graduate Student Supervision</h2>

<h3>Current PhD Students</h3>

<ol>
    {% for student in site.data.students %}
<li> {{ student.name }}.
    {% if student.coadvisor %}
    Co-advised by {{ student.coadvisor }}.
    {% endif %}

    {% if student.expected_graduation_date %}
    Expected graduation date: {{ student.expected_graduation_date }}
    {% endif %}
</li>

  {% endfor %}
</ol>

<h3>PhDs Graduated</h3>

<ol>
    {% for student in site.data.students_graduated %}
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if student.name == "Ellie Pavlick" %}
  <h4>PhD students who graduated before I received tenure:</h4>
  {% elsif student.name == "Omar Zaidan" %}
  <h4>PhD students who graduated before I joined Penn:</h4>
  {% endif %}
  {% endif %}
  <!-- End marker -->
<li>
	{{ student.name }}, {{ student.institution }} 
	{% if student.advisors contains ' and ' %}
		(advisors: {{student.advisors}}),
	{% else %}
		(advisor: {{student.advisors}}),
	{% endif %}
	{% if student.thesis_link %}
        	"<a href="publications/{{ student.thesis_link}}">{{ student.thesis_title }}</a>", {{ student.graduation_date }}.
	{% else %}
        	"{{ student.thesis_title }}", {{ student.graduation_date }}.
	{% endif %}

  {% if student.current_position %}
          {% if student.linkedin %}
            Current position: <a href="{{student.linkedin}}">{{student.current_position}} at {{student.current_employer}}</a>.
          {% else %}
            Current position: {{student.current_position}} at {{student.current_employer}}.
          {% endif %}

  {% endif %}
</li>
  {% endfor %}
</ol>


<h3>Postdocs</h3>

<ol>
    {% for student in site.data.past_postdocs %}
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if student.name == "Derry Wijaya" %}
  <h4>Postdocs who supervised before I received tenure:</h4>
  {% elsif student.name == "Matt Post" %}
  <h4>Postdocs who supervised before I joined Penn:</h4>
  {% endif %}
  {% endif %}
  <!-- End marker -->
<li>
  {{ student.name }}, PhD from {{ student.phd_from }}, postdoc at {{ student.institution }} from {{ student.postdoc_start}} through {{ student.postdoc_end }}. 

  {% if student.current_position %}
          {% if student.linkedin %}
            Current position: <a href="{{student.linkedin}}">{{student.current_position}} at {{student.current_employer}}</a>.
          {% else %}
            Current position: {{student.current_position}} at {{student.current_employer}}.
          {% endif %}

  {% endif %}
</li>
  {% endfor %}
</ol>

<h3>Master's Students</h3>


<ol>
    {% for student in site.data.masters_theses %}
  <!-- Add a marker to be easier to see what I did pre-tenure and before joining Penn -->
  {% if mark_pre_tenure == "True" %}
  {% if student.name == "Brendan Daniel Callahan" %}
  <h4>Master's students who I supervised before I received tenure:</h4>
  {% endif %}
  {% endif %}
  <!-- End marker -->
<li>
  {{ student.name }}, {{ student.institution }} 
  {% if student.advisors contains ' and ' %}
    (advisors: {{student.advisors}}),
  {% else %}
    (advisor: {{student.advisors}}),
  {% endif %}
  {% if student.thesis_link %}
          "<a href="publications/{{ student.thesis_link}}">{{ student.thesis_title }}</a>", {{ student.graduation_date }}.
  {% else %}
          "{{ student.thesis_title }}", {{ student.graduation_date }}.
  {% endif %}


</li>
  {% endfor %}
</ol>


<!--
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
-->


<!--
<h2>Undergraduate and Masters Advising</h2>


<h3>Independent Studies and RAships </h3>

  {% for semester in site.data.past_research_assistants %}
<h4>{{ semester.semester }}</h4>
<ol>
	{% for student in semester.students %}
<li> {{ student.name }} - {{ student.degree }} - {{ student.role }} </li>
	{% endfor %}
</ol>
  {% endfor %}


<h3>Team Projects </h3>

{% for item in site.data.past_team_projects %}
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
{% endfor %}
-->



<h2>Academic Service</h2>

Service to professional associations: 
<ul>
    {% for item in site.data.service %}
<li>
  {{item.description}}
</li>
  {% endfor %}
</ul>

University Service:
<ul>
    {% for item in site.data.service_Penn %}
<li>
  {{item.description}}
</li>
  {% endfor %}
</ul>


<h2>Press</h2>


<ol>
{% capture this_year %}{{'now' | date: '%Y'}}{% endcapture %}
  {% for year in (2000..this_year) reversed %}


      {% for press in site.data.press %}
    {% if press.year == year %}
         <li> 
          <a href="{{press.url}}">{{press.title}} – {{press.source}}</a>. {{press.date}}
         </li>
    {% endif %}
    {% endfor %}

    {% for publication in site.data.publications %}
      {% if publication.year == year and publication.press %}
         {% for press in publication.press %}
         <li> 
          <a href="{{press.url}}">{{press.title}} – {{press.source}}</a>. {{press.date}}
         </li>
         {% endfor %}
      {% endif %}
    {% endfor %}
  {% endfor %}
</ol>

