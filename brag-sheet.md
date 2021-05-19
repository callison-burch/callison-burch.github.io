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



## B.  Doctoral Student Education 


### Current PhD Students and Postdocs


<ol>
    {% for student in site.data.students %}
<li> {{ student.name }},  {{ student.degree }}, {{ student.institution }}.
    {% if student.expected_graduation_date %}
Expected graduation date: {{ student.expected_graduation_date }}
    {% endif %}
</li>

  {% endfor %}
</ol>


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




{% elsif status == "pending" %}

Several more are under review.

#### Pending

{% elsif status == "rejected" %}


#### Rejected


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


