---
title: Publications
layout: default
active_tab: publications
---


<table class="table"> 
<tbody>
  {% for year in (2000..2025) reversed %}
    <tr><td>
	<a name="{{year}}"></a><h1>{{year}}</h1>
    </td><td></td></tr>
    {% for publication in site.data.publications %}
    {%if publication.year == year%}
    <tr>
      <td>
	{% if publication.url %}
		<a href="{{ publication.url }}">{{ publication.title }}.</a>
        {% else %}
		{{ publication.title }}.
	{% endif %}
	{% if publication.award %}
		<b>{{ publication.award }}.</b>
	{% endif %}
	{{ publication.authors }}.
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
    {% if publication.type == "preprint" %}
				Unpublished preprint.
		{% endif %}



	{% if publication.press %}
	<!-- press button -->
	<a data-toggle="modal" href="#{{publication.id}}-press" class="label label-info">Press</a>
	<!-- /.press button -->
	<!-- press content -->
	<div id="{{publication.id}}-press" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="{{publication.id}}">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="{{publication.id}}">Press Coverage</h4>
        </div><!-- /.modal-header -->
        <div class="modal-body">
        <ul>
    	{% for coverage in publication.press %}
			<li><b>{{ coverage.source }}</b> - {{ coverage.date }} - <a href="{{coverage.url}}">{{coverage.title}}</a></li>
		{% endfor %}
		</ul>
        </div><!-- /.modal-body -->
	</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	</div><!-- /.press-content -->
	{% endif %}




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


	{% if publication.data %}
	<a href="{{publication.data}}" class="label label-warning">Data</a>
	{% endif %}

	{% if publication.code %}
	<a href="{{publication.code}}" class="label label-primary">Code</a>
	{% endif %}


	{% if publication.website %}
	<a href="{{publication.website}}" class="label label-danger">Website</a>
	{% endif %}


	{% if publication.video %}
	<a href="{{publication.video}}" class="label label-success">Video</a>
	{% endif %}


<!-- ccb - turning off figures for now, until I can figure out how to load them in a lazy fashion, so that the user doesn't get bombarded with so much data -->
	{% if publication.figures_TURN_OFF_FOR_NOW %}
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
				<!-- ccb testing adding abstract as first time on carousel -->
			        <b>Abstract:</b> {{publication.abstract}}
				</div>
			  	<div class="item">
				<!-- /ccb end testing adding abstract as first time on carousel -->
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
    {% endfor %}
  {% endfor %}
<!-- ccb - debugging by removing </tbody> -->
<!-- ccb - debugging by removing</table> -->
