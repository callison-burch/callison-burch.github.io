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
(Last updated November 2023)<br/>
</p>


I teach one of the most popular courses at Penn, which is our Artificial Intelligence (AI) course.  This semester (Fall 2023), the course has an enrollment of 600 students – 400 in-person, plus 200 online students who are doing a master's from Penn Engineering Online.  Even with more than 500 students in my course, I consistently receive excellent teaching reviews.  I worked hard to achieve this scale and quality in my teaching.  


<div class="hidden-sm hidden-xs">
<div style="margin-bottom: 20px; margin-bottom: 20px; width: 50%; max-width: 400px">
<img src="figures/research-statement-2023/teaching-anti-correlation.png" alt="As class size grows student gratings go down" class="img-responsive" /><br />
<b>Figure 1:</b> As course size grows, student reviews tend to go down. 
</div>
</div><div class="visible-sm visible-xs">
<div style="margin-bottom: 20px; margin-bottom: 20px; width: 100%; max-width: 400px">
<img src="figures/research-statement-2023/teaching-anti-correlation.png" alt="As class size grows student gratings go down" class="img-responsive" /><br />
<b>Figure 1:</b> As course size grows, student reviews tend to go down. 
</div>
</div>

Back in 2018, I plotted my teaching reviews against my course sizes and found an anti-correlation (Figure 1).  I set myself the goal of flattening the trend so that I could continue to offer large courses and have the students' experience be as positive as when I offer smaller, more personal courses.  I undertook a variety of improvements:
* I improved the organization of my courses 
* I developed better course materials, including high-quality recorded videos and good, auto-graded assignments
* I designed a fun set of hands-on extra credit assignments that use programmable toy R2D2s to demonstrate the key ideas in my AI course. 
* I recruited and organized teams of TAs (each year I have 30+ students return TAs)
* During the pandemic, I developed course policies that were empathetic to students learning situation.

I'm proud to say that I managed to eliminate the inverse correlation between class size and course reviews (Figure 2).  Since dedicating myself to improving my teaching quality, my reviews have steadily gone up, and my courses are now consistently rated between 'very good' and 'excellent' (Figure 3).

<div class="hidden-sm hidden-xs">
<div style="margin-bottom: 20px; margin-bottom: 20px; width: 50%; max-width: 400px">
<img src="figures/research-statement-2023/teaching-anti-correlation-2.png" alt="My course reviews are now steady, regarless of course size" class="img-responsive" /><br />
<b>Figure 2:</b> My course reviews are no longer negatively correlated with  course size. 
</div>
</div><div class="visible-sm visible-xs">
<div style="margin-bottom: 20px; margin-bottom: 20px; width: 100%; max-width: 400px">
<img src="figures/research-statement-2023/teaching-anti-correlation-2.png" alt="My course reviews are now steady, regarless of course size" class="img-responsive" /><br />
<b>Figure 2:</b> My course reviews are no longer negatively correlated with  course size. 
</div>
</div>


<div class="hidden-sm hidden-xs">
<div style="margin-bottom: 20px; margin-bottom: 20px; width: 50%; max-width: 400px">
<img src="figures/research-statement-2023/teaching-over-time.png" alt="My course reviews have gone up since 2018." class="img-responsive" /><br />
<b>Figure 2:</b> My course reviews have gone up since 2018 when I dedicated myself to improving teaching.
</div>
</div><div class="visible-sm visible-xs">
<div style="margin-bottom: 20px; margin-bottom: 20px; width: 100%; max-width: 400px">
<img src="figures/research-statement-2023/teaching-over-time.png" alt="My course reviews have gone up since 2018." class="img-responsive" /><br />
<b>Figure 2:</b> My course reviews have gone up since 2018 when I dedicated myself to improving teaching.
</div>
</div>


I have designed two courses for Penn Engineering Online: Artificial Intelligence and Natural Language Processing.  I re-designed NLP while I was on sabbatical last year to center the course on large language models.  My online courses are not "watered down". The content of the courses is identical to what I teach in my on-campus courses.  In fact, my on-campus courses have improved as a result of my investing the effort I put into creating the online courses.  I carefully thought out the course design. I recorded high-quality lecture videos.  I designed homework assignments that are auto-graded and give students instant feedback.   


I frequently take on extra teaching duties for Penn Engineering Online, and voluntary overloads.   This semester I'm teaching a total of 750 students. 600 in AI, 100 in NLP, and about 20 enrolled in my PhD seminar on Large Language Models and Programming Languages (which I'm teaching for fun in collaboration with Benjamin Pierce a PL faculty member here at Penn).  

I am proud of my teaching record, and the fact that my large classes get consistently excellent reviews from students.  

<h3>Teaching Reviews</h3>
You can read my full teaching reviews [here](teaching-reviews.pdf).  Below are the summary statistics. 


<table class="table"> 
  <tbody>
     <tr>
     <td><b>Colored rows indicate additional teaching beyond normal requirements.</b></td>
     <td style="background-color: #CCCCFF;">Taught for Penn Engineering Online</td>
     <td style="background-color: #FFFFCC;">Voluntary teaching overload</td>
   </tr>
 </tbody>
</table>

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

<b>Quality scale (0-4): 0=Poor, 1=Fair, 2=Good, 3=Very Good, 4=Excellent</b>



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
      {% if course.voluntary_overload %}
     <tr style="background-color: #FFFFCC;">
      {% elsif course.online_degree %}
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



## Advising Awards

During the pandemic, I won the Ford Motor Company Award for Faculty Advising twice – once in 2021 and once again in 2022.  This award is presented annually by the undergraduate student body in recognition of faculty dedication in helping students realize their educational, career and personal goals.  I attribute this award to the care I put into teaching and the empathy that I expressed for students during the pandemic when we all of our learning rapidly changed to an online remote format.  I made several accommodations to students to help mitigate the negative effects of learning online. 


## Mentorship of Undergraduates and Master's Students

I have supervised 15 master's theses and supervised dozens of independent study projects for undergraduates. I found that student interest in doing these outstripped my capacity to supervise them, so last year I experimented with offering a Research Practicum (CIS 8000 – Fall 2022) that guided students through the process of conducting research.  We formed teams and worked through projects, starting with literature reviews all the way through writing and editing conference paper submissions.  I'm proud to say that this experimental course resulted in 5 publications – 4 in ACL and 1 in the BEA workshop:

* [FIREBALL: A Dataset of Dungeons and Dragons Actual-Play with Structured Game State Information](https://www.cis.upenn.edu/~ccb/publications/fireball-dataset.pdf) – ACL 2023
* [Explanation-based Finetuning Makes Models More Robust to Spurious Cues](https://www.cis.upenn.edu/~ccb/publications/explanation-based-finetuning.pdf) – ACL 2023
* [Human-in-the-Loop Schema Induction](https://www.cis.upenn.edu/~ccb/publications/human-in-the-loop-schema-induction.pdf) – ACL 2023 demos
* [CORRPUS: Code-based Structured Prompting for Neurosymbolic Story Understanding](https://www.cis.upenn.edu/~ccb/publications/detecting-story-inconsistencies.pdf) – ACL 2023 Findings
* [Automatically Generated Summaries of Video Lectures May Enhance Students’ Learning Experience](https://aclanthology.org/2023.bea-1.31.pdf) – BEA 2023


## Mentorship of PhD Students and Postdocs

I am currently supervising or co-supervising 11 PhD students.  In my career so far, I have graduated 9 PhD students and supervised 7 postdocs.  All of them have gone on to excellent positions.  I am especially proud of my mentorship of women – 5 women who I mentored now hold faculty positions.  I also value the diversity of my group, and I have mentored several URM and LGBTQ students. 

PhDs Graduated:

<ol>
    {% for student in site.data.students_graduated %}
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


Postdocs:

<ol>
    {% for student in site.data.past_postdocs %}
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


I addition to helping my own students negotiate their faculty offers, I often help other PhD students negotiate their first faculty offers too.  I have collected nearly 100 computer science faculty via [this survey](https://docs.google.com/forms/d/e/1FAIpQLSfRwDJ3AmKLQm71EFL1nCjCL7QFcoATQupjo56b-CJFk8oFkg/viewform?usp=sf_link), and I share my spreadsheet of data with students to help them understand their offers, and often negotiate stronger offers. 