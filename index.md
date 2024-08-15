---
title: Chris Callison-Burch
layout: default
img: CCB-small.jpg
img_link: assets/img/CCB.jpeg
caption: |
 <b>Email:</b> ccb@upenn.edu<br />
active_tab: main_page 
keep_sidebar: true 
---
Chris Callison-Burch is a Professor of Computer and Information Science at the University of Pennsylvania. His course on Artificial Intelligence has one of the highest enrollments at the university with over 500 students taking the class each Fall. 

He is best known for his research into natural language processing.  His current research is focused on applications of large language models to long-standing challenges in artificial intelligence. His PhD students joke that now whenever they ask him anything his first response is "Have you tried GPT for that?"

Prof Callison-Burch has more than 150 publications, which have been cited over 25,000 times. He is a Sloan Research Fellow, and he has received faculty research awards from Google, Microsoft, Amazon, Facebook, and Roblox, in addition to funding from DARPA, IARPA, and the NSF. 

On May 17, 2023, Prof Callison-Burch [testified before congress](https://www.youtube.com/playlist?list=PL0S5TKwqfRKKUNWzp7rEe5uuLV-o9VC2f) about the relationship of generative AI and Copyright Law.

<!--
<b>Promotion Materials</b>

I'm going up for promotion to Full Professor this year.  If you'd like to see my materials here they are:

<ul>
<li> <a href="resume.html" class="label label-primary">CV</a> </li>
<li> <a href="research-statement.html" class="label label-success">Research Statement</a> </li>
<li> <a href="teaching-statement.html" class="label label-warning">Teaching Statement</a> </li>
<li> <a href="promotion-summary.html" class="label label-danger">Highlights</a> </li>
</ul>
-->

<b>Recent Talks</b>

<ol>
    {% assign recent_talks = site.data.talks | slice:0,12 %}
    {% for talk in recent_talks %}
      {% if site.data.talks %}
        <li> <a href="{{talk.url}}">{{ talk.venue }}. {{talk.title}}</a>. {{talk.date}} </li>
      {% endif %}
  {% endfor %}
</ol>

