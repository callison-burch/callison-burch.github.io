---
title: Faculty Brag Sheet
layout: default
active_tab: main_page 
keep_sidebar: false 
---


{% capture this_year %}{{'now' | date: '%Y'}}{% endcapture %}
{% capture last_year %}{{'now' | date: '%Y'  | minus: 1}}{% endcapture %}

# Faculty Brag Sheet - Chris Callison-Burch 


## A. Teaching 


I taught CIS 421/521 in Fall (which had an enrollment of 101).  In the Spring, I did a voluntary overload and taught two courses: CIS 530 (with an enrollment of 75) and NETS 213 (with an enrollment of 59).  Teaching two courses in one semester was difficult.  I volunteered to take the overload after I learned that CIS 530 was not going to be taught, since I thought it was important for us to offer it at least once per year. I'm offering CIS 421/521 in Summer Session 2 this summer as well (projected enrollment of 45).  


I used the CIS waitlist system to manage enrollment in my courses.  I asked Nick to extract the total submissions to the waitlist, and the number of students remaining on the list after the add/drop period past. He gave me the numbers for all CIS courses that used the waitlist system. Here are the first dozen, sorted by total submissions.   

| Course  | Total  | Remaining | Semester | 
| Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Submissions &nbsp;&nbsp; |  Submissions &nbsp;&nbsp; |  |
| --- | --- | --- | --- |
| CIS 419/519 | 386 | 128 | Spring |
| CIS 545   | 379 | 159 | Spring |
| CIS 419/519 | 377 | 228 | Fall |
| **CIS 421/521**  | **329** | **267** | **Fall** |
| CIS 520   | 323 | 55  | Spring |
| **CIS 530**   | **311** | **181** | **Spring** |
| CIS 545   | 278 | 127 | Fall |
| CIS 520   | 277 | 53  | Fall |
| CIS 450/550 | 263 | 29  | Spring |
| CIS 450/550 | 248 | 119 | Fall |
| **NETS 213**  | **233** | **125** | **Spring** |
| CIS 350   | 211 | 155 | Spring |

I'm torn about increasing the enrollment cap on all my classes to accommodate the high interest from students, since as course size increases the perceived quality of the courses decreases.  To confirm this, I plotted my past teaching reviews against class size:


| <img src="figures/course-quality-v-students-enrolled.png"  class="img-responsive" /> | <img src="figures/instructor-quality-v-students-enrolled.png"  class="img-responsive" /> |

I'd love to increase the class sizes, but I need to devise a good strategy to ensure that the quality doesn't suffer.  I agreed to do an online version of the Artificial Intelligence course for MCIT Online starting in Fall 2020.  That may give me insights on how to scale up my teaching.

## B. Undergraduate and Master's Research Projects 
  
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


This year, I worked with {{total_students}} undergraduates and master's students on independent studies, theses, RAships, and team projects.  {{ women | times: 100 | divided_by: total_students}}% of the students were women.



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


### Team Projects 

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

My lab 6 current PhD students, plus 3 incoming PhD students, and 1 graduating PhD student. 


<ol>
    {% for student in site.data.students %}
<li> {{ student.name }},  {{ student.degree }}, {{ student.institution }}.
    {% if student.expected_graduation_date %}
Expected graduation date: {{ student.expected_graduation_date }}
    {% endif %}
</li>

  {% endfor %}
</ol>

Currently, women make up half of my lab.  I've had a good track record of placing women in tenure-track faculty positions:
* This year, my PhD student Anne Cocos had faculty offers from Swarthmore College, Drexel University, Temple University and likely would have gotten an offer from UDel.  However, she decided to join GlaxoSmithKline instead.
* Last year, my postdoc Derry Wijaya has accepted a faculty position in computer science at Boston University.  
* Two years ago, my PhD student Ellie accepted a faculty position in computer science at Brown University. 
* Three years ago, my postdoc Wei Xu  accepted a faculty position in computer science at Ohio State University.

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

{% assign grant_status = "current,approved,pending,rejected" | split: "," %}
{% for status in grant_status %}

<!-- print the grant status -->
{%if status == "current" %}
#### Current grants
{% elsif status == "approved" %}
#### Approved 

Last year I had a SNAFU with DARPA funding where a provisionally awarded grant was rescinded by the DARPA contracting office because of a perceived COI with the Linguistics Data Consortium.  I spent a lot of time this year grant writing.  All of following grants have been approved for funding, and their budgets are currently being negotiated.


{% elsif status == "pending" %}

Several more are under review.

#### Pending

{% elsif status == "rejected" %}


#### Rejected

Other attempts were rejected, but overall I had a high yield rate on the grants I applied for to make up for last year's rescinded DARPA grant.

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


## E. Programmatic 

Rita Powell and I lead an initiative to get more women involved in research in computer science. We received one of the 15 exploreCSR (Computer Science Research) grants that Google provided for the first time this year.  The Google exploreCSR program is intended to support universities to host research-focused workshops for undergraduate women. Our project was unusual in that instead of hosting a 2 day workshop, we proposed to have ongoing research experiences during the 2018-2019 school year.  We had a total of 15 faculty members and 60 undergraduate women from Penn, Bryn Mawr, Haverford and Swarthmore.  Each undergrad participant was paired with a faculty mentor, who met with their teams weekly. The students gave  presentations about their research last month.  Here are [their  presentations](https://drive.google.com/drive/folders/1QHDF76Ks1uaVja0HLdPZFY9lQ-0_6eiZ?usp=sharing). Google provided us with $25k in funding, and SEAS matched that with another $25k.  We are using the funding to hire 11 of the students to do summer research projects with their faculty mentors.  


Based on our experience this summer, Rita and I are making improvements to the program and applying for another round of funding from Google.  The goals of our initiative are to help undergraduate women to enhance their research skills, create a sense of community with peers and faculty, instill confidence to problem solve beyond the classroom, and inspire and motivate them toward careers in research.
I believe that exposure to research as an undergraduate can profoundly influence a student’s academic and career path. My hope is that we will be able to recruit, retain and promote more women in computer science. 




## F. Service 

I served on the teaching faculty search committee this year.  
