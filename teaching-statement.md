---
title: Teaching Statement - Chris Callison-Burch
layout: default
active_tab: main_page 
keep_sidebar: false
publications:
- fireball-dataset
---



# Chris Callison-Burch: Teaching Statement
<p class="text-muted">	
(Last updated September 2023)<br/>
</p>


## Advising Awards

During the pandemic, I won the Ford Motor Company Award for Faculty Advising twice – once in 2021 and once again in 2022.  This award is presented annually by the undergraduate student body in recognition of faculty dedication in helping students realize their educational, career and personal goals. 

I attribute this award to the care I put into teaching and empathy that I expressed for students during the pandemic when we all of our learning rapidly changed to an online remote format. 

I made several accomodations to students to help mitigate the negative effects of learning online. 



## Mentorship of Undergraduates and Master's Students

CIS 8000 – Research Practicum (Fall 2022)

Resulted in 5 publications – 4 in ACL and 1 in the BEA workshop

* [FIREBALL: A Dataset of Dungeons and Dragons Actual-Play with Structured Game State Information](https://www.cis.upenn.edu/~ccb/publications/fireball-dataset.pdf) – ACL 2023
* [Explanation-based Finetuning Makes Models More Robust to Spurious Cues](https://www.cis.upenn.edu/~ccb/publications/explanation-based-finetuning.pdf) – ACL 2023
* [Human-in-the-Loop Schema Induction](https://www.cis.upenn.edu/~ccb/publications/human-in-the-loop-schema-induction.pdf) – ACL 2023 demos
* [CORRPUS: Code-based Structured Prompting for Neurosymbolic Story Understanding](https://www.cis.upenn.edu/~ccb/publications/detecting-story-inconsistencies.pdf) – ACL 2023 Findings
* [Automatically Generated Summaries of Video Lectures May Enhance Students’ Learning Experience](https://aclanthology.org/2023.bea-1.31.pdf) – BEA 2023


## Mentorship of PhD Students and Postdocs


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


## Women in Computer Science

I am proud of my track record of trying to promote women in computer science.   XXX

## Bibliography 

  
<table class="table"> 
  <tbody>

{% for year in (2000..2023) reversed %}
 {% for id in page.publications %}
  {% for publication in site.data.publications %}
   {% if publication.id == id %} 
    {% if publication.year == year %}
    <tr id="{{ publication.id }}">
      <td>
	{% if publication.url %}
		<a href="{{ publication.url }}">{{ publication.title }}.</a>
        {% else %}
		{{ publication.title }}.
	{% endif %}
	{{ publication.authors }}.
	{{ publication.venue }}-{{ publication.year }}.

	{% if publication.abstract %}
	<!-- abstract button -->
	<a data-toggle="modal" href="#{{publication.id}}-abstract" class="label label-success">Abstract</a>
	<!-- /.abstract button -->
	<!-- abstract content -->
	<div id="{{publication.id}}-abstract" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="{{publication.id}}">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="{{publication.id}}">{{publication.title}}</h4>
        </div><!-- /.modal-header -->
        <div class="modal-body">
        {{publication.abstract}}
        </div><!-- /.modal-body -->
	</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	</div><!-- /.abstract-content -->
	{% endif %}


	{% if publication.figures %}
	<!-- figures button -->
	<a data-toggle="modal" href="#{{publication.id}}-figures" class="label label-primary">Figures</a>
	<!-- /.figures button -->
	<!-- figures content -->
	<div id="{{publication.id}}-figures" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="{{publication.id}}">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="{{publication.id}}">{{publication.title}}</h4>
        </div><!-- /.modal-header -->
        <div class="modal-body">
	 <!-- Carousel -->
	<div id="{{publication.id}}-figures-carousel" class="carousel slide" data-interval="false">

	  <!-- Carousel items -->
	  <div class="carousel-inner" role="listbox">
                {% assign isFirstFigure = 1 %}
	  	{% for figure in publication.figures %}
		  	{% if isFirstFigure == 1 %}
			  	<div class="item active">
			        <b>Abstract:</b> {{publication.abstract}}
				</div>
			  	<div class="item">
                		{% assign isFirstFigure = 0 %}
		  	{% else %}
			  	<div class="item">
                	{% endif %}
					<p><b>{{figure.label}}:</b> {{figure.caption}}</p>
<img src="{{figure.img}}" alt="" width="100%">
				</div>
		{% endfor %}
	  </div>
	  <!-- /.Carousel items -->
	  <!-- Controls -->
		<a class="left carousel-control" href="#{{publication.id}}-figures-carousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="color:gray"></span>
		<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#{{publication.id}}-figures-carousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="color:gray"></span>
		<span class="sr-only">Next</span>
		</a>
	  <!-- /.Controls -->
	</div>
	<!-- /.Carousel -->

        </div><!-- /.modal-body -->
	</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	</div><!-- /.figures-content -->
	{% endif %}


	{% if publication.bibtex %}
	<!-- bibtex button -->
	<a data-toggle="modal" href="#{{publication.id}}-bibtex" class="label label-default">BibTex</a>
	<!-- /.bibtex button -->
	<!-- bibtex content -->
	<div id="{{publication.id}}-bibtex" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="{{publication.id}}">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="{{publication.id}}">{{publication.title}}</h4>
        </div><!-- /.modal-header -->
        <div class="modal-body">
 	   <pre>{{publication.bibtex}}
           </pre>
        </div><!-- /.modal-body -->
	</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	</div><!-- /.bibtex-content -->
	{% endif %}
	</td>
    <tr>
    {% endif %}
   {% endif %}
  {% endfor %}
 {% endfor %}
{% endfor %}
