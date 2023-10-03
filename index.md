---
title: Chris Callison-Burch
layout: default
img: CCB-small.jpg
img_link: assets/img/CCB.jpeg
caption: |
 <b>My office hours for Fall 2023 are Mondays 2-4pm in Towne M70.<br />
 <b>Email:</b> ccb@upenn.edu<br />
active_tab: main_page 
keep_sidebar: true 
---
Chris Callison-Burch is an associate professor of Computer and Information Science at the University of Pennsylvania. His course on Artificial Intelligence has one of the highest enrollments at the university with over 500 students taking the class each Fall. 

He is best known for his research into natural language processing.  His current research is focused on applications of large language models to long-standing challenges in artificial intelligence.  His PhD students joke that now whenever they ask him anything his first response is "Have you tried GPT for that?"

Prof Callison-Burch has more than 100 publications, which have been cited over 25,000 times. He is a Sloan Research Fellow, and he has received faculty research awards from Google, Microsoft, Amazon, Facebook, and Roblox, in addition to funding from DARPA, IARPA, and the NSF. 

On May 17, 2023, Prof Callison-Burch [testified before congress](https://www.youtube.com/playlist?list=PL0S5TKwqfRKKUNWzp7rEe5uuLV-o9VC2f) about the relationship of generative AI and Copyright Law.

<b>Recent Talks</b>

<ol>
    {% for talk in site.data.talks %}
      {% if talk.url %}
        <li> <a href="{{talk.url}}">{{ talk.venue }}. {{talk.title}}</a>. {{talk.date}} </li>
      {% endif %}
  {% endfor %}
</ol>

