---
title: Research Statement - Chris Callison-Burch
layout: default
active_tab: main_page 
keep_sidebar: false
publications:
  - deduplicating-training-data
  - zero-shot-arbitrary-text-style-transfer
  - fill-in-the-blank-LMs
  - bidirectional-lms-are-few-shot-leaners
  - synthbio
  - interpretable-style-embeddings
  - the-curious-case-of-code-prompts
  - real-or-fake-text-analysis
  - automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled
  - faithful-model-explanations-survey
  - language-in-a-bottle
  - faithful-chain-of-thought-reasoning
  - reasoning-about-goals-with-wikihow
  - goal-oriented-script-construction
  - visual-goal-step-inference-using-wikihow
  - wikihow-hierarchies
  - casual-reasoning-about-entities-and-events-in-procedural-texts
  - creating-event-schema-with-llms
  - human-in-the-loop-schema-induction
  - smart-textbook-feasibility-study
  - enhancing-human-summaries
  - learn-with-martian
  - automatically-generated-summaries-of-lecture-videos
  - imporving-mathematics-tutoring-with-a-code-scratchpad
  - adapting-text-instructions-for-voice-interaction
  - dungeons-and-dragons-as-a-dialog-challenge-for-artificial-intelligence
  - fireball-dataset
  - calypso-llms-for-dms
  - dnd-theory-of-mind
  - kani-python-framework-for-building-llm-applications
  - copyright-and-ai-testimony
talks:
  - 
     venue: The U.S. House of Representatives Judiciary Committee, Subcommittee on Courts, Intellectual Property, and the Internet
     title: Testimony at hearing on "Artificial Intelligence and Intellectual Property&colon; Part I – Interoperability of AI and Copyright Law"
     date: May 17, 2023
     url: https://youtube.com/playlist?list=PL0S5TKwqfRKKUNWzp7rEe5uuLV-o9VC2f&si=z5cNeqF4_5xgAyHs
     alt_url: https://www.youtube.com/live/Mm1NQ_Kqumw?feature=share&t=2520
  -
     venue: Duolingo
     title: Using Large Language Models to Generate Course Materials 
     date: March 16, 2023
     url: https://youtu.be/LaU1RgfMntU
  -
     venue: Penn ASSET Seminar
     title: Using Large Language Models to Build Explainable Classifiers
     date: February 8, 2023
     url: https://www.youtube.com/watch?v=sZux6V5J56c
  -
     venue: Penn Medicine Seminar
     title: Ask An Expert About ChatGPT
     date: February 14, 2023
     url: https://mediasite.med.upenn.edu/mediasite/Play/d4b956feb9fd45fe8543241701e488d51d
---

# Chris Callison-Burch: Research Statement
<p class="text-muted">
(Last updated November 2023)<br/>
</p>

In the field of Natural Language Processing, the rise of Large-Language Models (LLMs) like ChatGPT represents a historical milestone towards fulfilling the longstanding objective of developing AI systems that are capable of understanding and generating natural language.  Although ChatGPT seems like an overnight success, its history can be traced to the 1990s and the introduction of statistical n-gram language models, and to the introduction of neural LMs in the early 2000s.  In the mid-2010s, we witnessed the rise of pre-trained models like word2vec, ELMo, and BERT, which redefined the state-of-the-art by employing vector space representations and the transformer architecture to capture the nuances of natural language semantics. Then, we entered the current generation of Generative Pretrained Transformer (GPT) models like ChatGPT, Llama, and PALM, which, powered by immense  training data and huge computational power, have ushered in an entirely new era for the NLP community.

These advances have caused a paradigm shift in our field. Like many other NLP professors, I initially struggled to understand how I could continue to make a research contribution.  On numerous occasions, I have related how my using GPT-3 for the first time in early 2021 lead to what I describe as a "career existential crisis" because it seemingly supplanted many NLP tasks that were previously first order research concerns. I realized that research areas like machine translation, automatic summarization, and question answering had largely been subsumed by GPT-style models. Moreover, because these models require Google-sized data centers to train, I believed that no university would ever be able to create one. 


<!--
 If you're interested in hearing me recount my career existential crisis, you can watch this YouTube clip: 
<center>
<iframe width="560" height="315" src="https://www.youtube.com/embed/2oOQIRvkq_o?si=t9kd6FAKwpRir81p" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</center>
-->

What makes the advent of LLMs profoundly transformative is their ability to act as general-purpose learners. The paradigm of "pre-train then fine-tune" gives them the flexibility to adapt to new tasks, while requiring a fraction of the training data that was previously required. Their proficiency in few-shot learning and instruction following have outstripped most previous machine learning methodologies. In essence, we now have general purpose AI systems that can observe and learn from a handful of examples, and also interpret and execute fairly complex instructions articulated in natural language.  This means that NLP is now delivering tools that are genuinely transformative  –not only to our own field– but to society as a whole.

Is there still room for academics like me to make a research contribution in the era of large pretrained models?  I have come to the position that there is still a place for academic research in NLP.  Over the past two years, I've figured out several research directions that are a good fit for academic researchers in this era.   My research directions are now:

1. Understanding the capabilities of LLMs
2. Building explainable models
3. Enabling symbolic reasoning with LLMs
4. Building LLM-based applications 
5. Advising policymakers on AI and the law

<!--
## Understanding the Capabilities of LLMs


A major focus has been analyzing what LLMs like GPT-3 learn and developing techniques to improve their capabilities. Much of this work was done with my PhD student Daphne Ippolito, who spent time interning at Google Brain. We looked at how the pretraining corpus impacts model performance, finding that diversity of domains is more important than volume. We also analyzed model biases, proposing methods to quantify and mitigate harmful stereotypes. Additionally, we developed prompting techniques to improve few-shot learning, enabling LLMs to perform complex reasoning tasks with minimal training examples.
-->

# Understanding the Capabilities of Large Language Models 


I aim to understand the capabilities and the limitations of LLMs through my research. I have explored a variety of different aspects of LLMs including prompting techniques, model architectures, synthetic datasets, data preprocessing, and human detectability of machine generated text.

**Prompting Techniques**
An important attribute of LLMs is their ability to adapt to new tasks given a relatively small number of examples. This characteristic, termed as "few-shot learning," effectively demonstrates how these models perform in-context learning which recognizes patterns within a prompt rather than requiring weight updates. In our work on prompting techniques, we have leveraged this trait to push the boundaries of what large language models can accomplish.

In [Reif et al. (ACL 2022)](#zero-shot-arbitrary-text-style-transfer), we demonstrated the flexibility of language models in replicating novel styles beyond conventional style transfer tasks through a technique called augmented zero-shot learning. This approach frames style transfer as a sentence rewriting task and requires only a natural language instruction, without any model fine-tuning or exemplars in the target style. Through human evaluation, we showed that this method can achieve strong performance not just on standard style transfer tasks like sentiment, but also on non-standard natural language transformations such as making text more melodramatic or inserting metaphors.

In [Zhang et al., (NLRSE 2023)](#the-curious-case-of-code-prompts), we explored the emerging crossover of training language models on a mixture of text and code, which has been shown to improve performance on structured reasoning tasks. We conducted a systematic comparison of code vs. text prompts across diverse tasks like QA, summarization, and sentiment analysis. Our key finding was that while code prompting boosts performance on certain reasoning tasks, text prompts remain more effective for most NLP tasks. We also analyzed the impact of code prompt style and instruction fine-tuning. This work sheds light on this rapidly growing area at the intersection of code and language.

**Model Architectures**
My collaborators and I have studied various architectures for LLMs. 
In [Ippolito et al. (NAACL 2022)](#fill-in-the-blank-LMs), we explored using the same underlying model architecture for both continuation-based and fill-in-the-blank text generation tasks. We found that models pre-trained with a fill-in-the-blank objective were effective at both tasks, while models pre-trained for continuation  struggled with insertion, necessitating separate models for each task. Our work highlighted the viability of a single model able to handle this variety of related text editing operations.

In [Patel et al. (ICLR 2023)](#bidirectional-lms-are-few-shot-leaners)), we compared unidirectional versus bidirectional architectures and their ability to perform few-shot learning. While unidirectional models like GPT-3 have shown impressive few-shot abilities, bidirectional models often require task-specific fine-tuning. We introduced a prompting technique enabling bidirectional models to achieve strong few-shot performance without fine-tuning. Surprisingly, our prompted bidirectional models outperformed unidirectional models on tasks like machine translation despite using fewer parameters.


**Synthetic Datasets**
LLMs also have utility in producing synthetic datasets. In an effort to better combat biases present in naturally occurring data, we used LLMs to create a high-quality synthetic dataset for generating Wikipedia-style biographies from info-boxes ([Yuan et al., NeurIPS 2021](#synthbio)). Specifically, we had the LLM generate draft attribute lists and biographies describing fictional individuals, which were then revised by human annotators. This allowed us to construct a dataset with more control over gender, nationality, and other attributes compared to using real Wikipedia data, enabling better evaluation of models' abilities to generate grounded, faithful text. Our work provides a case study for how LLMs can be incorporated into a human-AI collaborative pipeline to efficiently curate datasets with desired properties. This line of inquiry indicates a promising prospect of LLMs being used to generate data for machine learning tasks beyond language processing. Overall, judiciously leveraging LLMs' generative capabilities could enable creation of higher-quality datasets that better reflect the true complexity of target tasks and distributions.  In [Patel et al (EMNLP 2023)](#interpretable-style-embeddings) we use LLMs to create a synthetic stylometry dataset by prompting GPT-3 to describe the styles of 1000 authors, and then train classifiers to reliably predict stylistic signatures of new authors. 


**Data Preprocessing** In [Lee et al. (ACL 2022)](#deduplicating-training-data), we demonstrated that de-duplicating training data for LLMs is an incredibly important step.  This seemingly minor adjustment in data preprocessing pipeline has major effects.  By keeping only a single copy of sentence in the training data, the frequency of 'memorization' in LLMs significantly reduced.  This has implications for whether model outputs may potentially infringe on copyright, and our de-duplication technique substantially mitigates this risk.  As a result, our proposed methodology has now become a standard preprocessing technique for training LLMs/


**Detecting Machine Generated Text**
My research group has also explored how well people can distinguish "real" human-written text  from "fake" machine-generated text. In a large-scale human study analyzing the boundary between human-written and machine-generated passages, we analyzed how well participants could distinguish machine-generated text from human-written counterparts ([Dugan et al., AAAI 2023](#real-or-fake-text-analysis)). We found that while humans struggled at this task – and that it's getting harder for people to detect machine generated text as model sizes increase. We also found there was substantial variance in annotator skill. With proper incentives and training, annotators improved over time. This work demonstrated the viability of training humans to better detect the boundary between human and machine text.

We also explored the automatic detection of machine-generated text ([Ippolito et al., ACL 2020](#automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled)).  We found that automatic detection of generated text is easiest when humans are fooled. Our experiments highlighted that certain settings in decoding methods like nucleus sampling could be optimized for fooling humans, they introduce statistical anomalies like over-representation of common tokens that classifiers found easy to detect. This work revealed the promise of using both human evaluation and automatic detectors to fully assess generation systems, since they focus on different and complimentary aspects of the problem. 

Each of these lines of inquiry adds to a broader understanding of LLMs' capabilities, forms a significant portion of my ongoing research, and will continue to guide my research initiatives over the coming years.


## Building Explainable Models

<!--
<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="false" style="margin-bottom: 20px; margin-bottom: 20px; width: 100%; max-width: 800px">
  <div class="carousel-inner">
    <div class="item active">
      <img src="figures/research-statement-2023/language-in-a-bottle-pipeline.png" alt="System overview of our Language-Model-Guided Concept Bottleneck Model, which is interpretable by design image classification system.">
      <p><b>Figure 1:</b> In our CVPR 2023 paper, we present a Language-Model-Guided Concept Bottleneck Model, which is interpretable by design image classification system. First, we prompt the large language model (GPT-3) to generate candidate concepts. Second, we employ a submodular function to select concepts from all candidates to construct the bottleneck. Third, we apply a pretrained alignment model (CLIP) to obtain the embeddings of concepts and images, which is used to compute concept scores. Finally, we train a linear function in which the weight W denotes the concept-class association user to predict targets based on concept scores.</p>
    </div>
    <div class="item">
      <img src="figures/research-statement-2023/language-in-a-bottle-example-concepts-figure.png" alt="Examples of the automatically generated concepts that were produced by our LLM-based concept bottleneck model">
      <p><b>Figure 2:</b> Examples of the automatically generated concepts that were produced by our LLM-based concept bottleneck model</p>
    </div>
    <div class="item">
      <img src="figures/research-statement-2023/cot-prompting.png" alt="Example of chain-of-thought prompting">
      <b>Answers produced by chain-of-thought reasoning aren't always faithful:</b>
      <img src="figures/research-statement-2023/cot-prompting-unfaithful.png" alt="Chain-of-thought prompting is not guaranteed to be faithful">
      <p><b>Figure 3:</b> Chain-of-Thought prompting is a few-shot learning technique that demonstrates for LLMs how to "reason aloud" and has demonstrated improvements in performance on tasks like solving math word problems.  However, there's no guarantee that the reasoning chain and the final answer must be aligned. </p>
    </div>
    <div class="item">
      <img src="figures/research-statement-2023/faithful-COT-examples.png" alt="Our Faithful Chain-of-Thought Reasoning approach consists of two steps: translation and problem solving">
      <p><b>Figure 4:</b> Our "Faithful Chain-of-Thought Reasoning" approach consists of two steps: Translation, where an LLM translates a query (in NL/Natural Language) into a reasoning chain (which interleaves NL and SL/Symbolic Language), and Problem Solving, where an external solver executes the reasoning chain to derive the answer. This figure hows examples of our method is applied to Math Word Problems, Multi-hop QA, Relational Inference, and Planning.</p>
    </div>
  </div>

  <a class="left carousel-control" href="#myCarousel1" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel1" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
-->


Explainability is the extent to which why a model makes certain predictions can be presented in understandable terms to some target audience.  Faithfulness is a criterion for explainability.  A faithful explanation should accurately reflect the reasoning process behind the model's prediction.  In [Lyu et al., 2022 (in submission to Computational Linguistics)](#faithful-model-explanations), we survey nearly 100 publications related to explainability in NLP, and discuss whether they are faithful. 

**Concept Bottleneck Models**
As deep learning systems continue to advance, there is a growing need to make them more interpretable and explainable, especially as they are deployed in high-stakes domains like healthcare, finance, and transportation. However, the black box nature of neural networks makes explainability challenging. My group has been exploring concept bottleneck models as one approach to address this problem and make large language models (LLMs) more explainable while maintaining or improving accuracy. The key intuition is to force the model to predict an intermediate conceptual representation that provides a human-understandable bottleneck grounding the model's predictions. For instance, in image classification we can force the model to first predict concepts like "black line running through yellow face", "black horn on each side of their head" and then use these in a simple linear model to predict a bird species like "horned lark". The concepts give a much better window into the model's reasoning than an end-to-end black box neural model. In collaboration with Prof. Mark Yatskar and our jointly supervised PhD students, we published a CVPR paper ([Yang et al., CVPR 2023](#language-in-a-bottle)) that demonstrated that LLMs could be used to generate concept bottlenecks to produce more explainable image classifiers. 


**Faithful Chain-of-Thought Models**
In [Lyu et al. (IJCNLP-AACL 2023)](#faithful-chain-of-thought-reasoning), we introduce a new method for generating inherently faithful model explanation. Our "faithful chain-of-thought" approach builds on the chain-of-thought prompting technique. Chain-of-Thought prompting is a few-shot learning technique that demonstrates for LLMs how to "reason aloud" and has demonstrated improvements in performance on tasks like solving math word problems.  However, there's no guarantee that the final answer will be faithful to the reasoning chain. With Prof. Eric Wong and several PhD students here at Penn, we introduced a method for using an LLM to translate a chain-of-thought reasoning chain into from natural language into a symbolic language (like Python, Datalog or PDDL) and then executing the symbolic reasoning chain with a solver.  This guarantees that the output answer will match the reasoning chain, thus ensuring faithfulness.  Moreover, we showed our method sets new state-of-the-art performance on 7 diverse reasoning tasks including math word problems and multi-hop question answering.   Our paper won the Area Chair Award for the best paper in the "Interpretability and Analysis of Models for NLP" area at IJCNLP-AACL 2023.  Our work was done concurrently with several similar efforts like "Program of Thought".

## Enabling Symbolic Reasoning with LLMs

<!--
<div id="myCarousel2" class="carousel slide" data-ride="carousel" data-interval="false" style="margin-bottom: 20px; margin-bottom: 20px; width: 100%; max-width: 800px">
  <div class="carousel-inner">
    <div class="item active">
      <img src="figures/research-statement-2023/kairos-script.png" alt="We used LLMs to generate structred event represetnations for the DARPA KAIROS program. Each event is represented by its Event Type and an example sentence.">
      <p><b>Figure 5:</b> We used LLMs to generate structred event represetnations for the DARPA KAIROS program. Each event is represented by its Event Type and an example sentence.  Here step 6 should be moved before step 1, but the generated sequence is otherwise reasonable.</p>
    </div>
    <div class="item">
      <img src="figures/research-statement-2023/visual-goal-step-inference.png" alt="An example Visual Goal-Step Inference Task: given a text goal *bake fish*, select the image (C) that represents a step towards that goal.">
      <p><b>Figure 6:</b> An example Visual Goal-Step Inference Task: given a text goal <i>bake fish</i>, select the image (C) that represents a step towards that goal.</p>
    </div>
    <div class="item">
      <img src="figures/research-statement-2023/crepe-dataset.png" alt="Example of our task on causal reasoning of entities and events in procedural texts. A procedure including a goal and some steps are provided. A model needs to predict the change in the likelihood of an event throughout the procedure. We show that predicting entity states as an intermediate step improves performance.">
      <p><b>Figure 7:</b> An example of our task on causal reasoning of entities and events in procedural texts. A procedure including a goal and some steps are provided. A model needs to predict the change in the likelihood of an event throughout the procedure. We show that predicting entity states as an intermediate step improves performance.</p>
    </div>
   </div>

  <a class="left carousel-control" href="#myCarousel2" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel2" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
-->

LLMs have proven weak at symbolic reasoning, but in our faithful chain-of-thought work we showed that LLMs can be used to generate structured representations, like executable Python code, which are passed to a solver. The solver output is used to guide the LLM to iteratively refine its structured prediction. This allows combining the reasoning capabilities of symbolic systems with the natural language prowess of LLMs. 


**Reasoning about Events via Goal-Step Inference**
I participated in the DARPA Knowledge-directed Artificial Intelligence Reasoning Over Schemas (KAIROS) program and used LLMs throughout the program to produce structured representations.  Early in the program my research group used using BERT to perform several new reasoning tasks that are relevant for reasoning about  events.  In [Lyu et al. (EMNLP 2020)](#reasoning-about-goals-with-wikihow),
We used data that we mined from the website WikiHow to create 2 challenge tasks: (1) reasoning about goal-step relations, and (2) reasoning about the temporal ordering of steps.  We created a multiple-choice dataset through intelligent sampling of WikiHow.

In task 1, a system is given a goal and 4 candidate steps and needs to choose the step that helps achieve the goal. For example, given the goal
“Prevent Coronavirus” and the candidate steps: 

<ol type="A">
  <li> wash your hands </li>
  <li> wash your cat </li>
  <li> clap your hands </li>
  <li> eat your protein </li>
</ol>
where the correct step would be A. In task 2, given a goal and 2 steps, a system needs to determine which step temporally precedes the other. For example, given the goal "Clean Silver" and the steps: 
<ol type="A">
  <li> dry the silver </li>
  <li> handwash the silver </li>
</ol>
where the correct answer would be "B precedes A".

We showed that fine-tuning BERT to be able to perform these tasks improved its abilities on other benchmarks like the commonsense reasoning benchmark SWAG, the intent detection benchmark Snips, and the Story Cloze narrative reconstruction task.  In particular, after fine-tuning to our dataset, higher accuracy could be achieved on all of those with fewer of the within-task training examples.


**Goal-Oriented Script Construction**
In [Lyu et al. (INLG 2021)](#goal-oriented-script-construction), we explored using LLMs to generate steps towards a goal in natural language.  We fine-tuned multilingual T5 on WikiHow to generate scripts in several languages.  We contrasted this LLM generation-centric approach to a retrieve-then-reorder approach, and we designed careful human evaluations.  We explored this for 18 languages.   We used the retrieve-then-reorder approach to create scripts that connected into the KAIROS Event Ontology.


**Visual Goal-Step Inference**
In [Yang et al. (EMNLP 2021)](#visual-goal-step-inference-using-wikihow), we adapted our goal-step reasoning tasks to include visual inputs.   For example, given the text goal "Bake Fish" we would have the system pick which image represented a step towards that goal, again creating a set of confusable images that were highly visually similar. We found that pre-training on our visual dataset allowed us to do better transfer to other tasks, in this case few-shot performance on COIN and on Howto100m, which are both video datasets related to how-to instructions.

**Hierarchical Goal-Step Relationships**
In [Zhou et al (ACL 2022)](#wikihow-hierarchies), we examined the hierarchical relationships between goals and steps, where steps in a procedure can be recursively designated as goals themselves, allowing us to construct a rich nested structure of sub-events.   We defined a model for linking steps onto goals, trained it on WikiHow, and evaluated the resulting hierarchical procedures on the task of video retrieval from Howto100M.


**Causal Reasoning about Entities and Events**
In [Zhang et al (EACL 2023)](#casual-reasoning-about-entities-and-events-in-procedural-texts), we introduced a more complex causal reasoning benchmark dataset.  In this dataset we combine entity state tracking (e.g., the temperature of a pan) and counterfactual event reasoning (e.g., how likely am I to burn myself by touching the pan), by tracking entities and attributes across tasks. In this causal reasoning paper, we also examined the use of code-based LLMs to do entity state tracking. 

**Zero-shot and Few-shot Schema Generation**
In two ACL papers this year, [Li et al (ACL 2023)](#creating-event-schema-with-llms) and [Zhang et al (ACL 2023)](#human-in-the-loop-schema-induction), we examined the potential for LLMs to directly generate schema using zero-shot and few-shot prompting, optionally with humans in the loop.  This shows the promise of using LLMs to create structured representations like the KAIROS Schema Graph, which can then be used with external symbolic reasoners. 

## Building LLM-based Applications

In addition to analyzing the capabilities of LLMs and enabling new functionality via symbolic reasoning, I have also explored new applications of LLMs:

**Intelligent tutoring systems** 
I have a "Smart Textbook" team of undergraduate + graduate researchers that has developed tools and techniques to create educational applications using large language models. In [Dugan et al. (ACL 2022)](#smart-textbook-feasibility-study), we conducted a study analyzing the feasibility of generating quiz questions for a course using LLMs.  We find that they can produce high-quality flashcard-style quiz questions from textbook chapters a substantial portion of the time, and that the rate improves if textbook chapters are first automatically summarized. The question quality still lags behind human-written summaries.  Building on this work, I collected hundreds of student-written summaries from students in my AI class, finding that there is high variance across questions derived human-written summaries. [Gonzalez et al. (BEA 2023)](#enhancing-human-summaries) introduced a method for enhancing human-written summaries with LLMs that improves question generation quality by rewriting bullet-point style summaries into full sentences.

Building on this Smart Textbook work, two undergraduates from my group created an startup called [Martian](https://withmartian.com) with an Ed Tech platform called "Learn"   [(Upadhyay et al. EACL 2023)](#learn-with-martian).  Learn is an end-to-end platform for generating, selecting, and iteratively improving question banks using LLMs. Learn uses prompt engineering and reinforcement learning from human feedback to generate questions tailored to a course's preferred style. It also employs spaced repetition and item response theory to personalize quiz questions based on individual students' proficiency. In experiments with 1000 students, we found Learn boosted exam scores and was preferred to traditional methods. 

In other papers published at the Building Educational Applications workshop, we showed that augmenting educational videos with automatically generated summaries [(Gonzalez et al. BEA 2023)](#automatically-generated-summaries-of-lecture-videos), and we analyzed new ways for LLMs to generate interactive coding challenges [(Upadhyay et al. BEA 2023)](#imporving-mathematics-tutoring-with-a-code-scratchpad) and mathematical exercises as part of this goal. 

I aim to build on these Smart Textbook projects to create a full-featured intelligent tutoring system for use in my own courses.

**Improving smart home assistants**  In joint work with Prof. Andrew Head, a new HCI professor here in UPenn's Department of Computer and Information Science, we are investigating ways to enhance the capabilities of voice assistants like Amazon Alexa and Google Home. In [Huang et al (DIS 2023)](#adapting-text-instructions-for-voice-interaction), my PhD student Alyssa Huang, who I co-advise with Prof. Head, conducted an observational study of users interacting with voice assistants for complex tasks like following cooking recipes. The study revealed several deficiencies including information overload, fragmentation, and poor question answering. Based on these insights, Alyssa proposed techniques for the voice assistant to "rewrite the script" in order to adapt written instructions into a more conversational form better suited for audio interaction. We aim to implement some of these capabilities by leveraging LLMs to perform summarization, splitting instructions into substeps, reordering time-sensitive information, and answering questions by reasoning about events. Our interdisciplinary collaboration combines expertise in human-computer interaction and natural language processing to uncover deficiencies in current voice assistants and explore ways to augment them with LLMs.

**Language-based games like Dungeons & Dragons** While I was a part-time visiting researcher at Google in 2019 and 2020, I proposed that they explore Dungeons & Dragons as a challenge problem for dialogue systems built on large language models.  Artificial Intelligence has a long and rich history of using games as challenge problems that lead to advances in the field. In many cases, AI game-playing systems have gone on to rival human champions of the game.  Language-based creative games like D&D are a great challenge for LLMs, since they exercise abilities like
* Language generation (multi-party dialog, generating descriptions of the world/player actions, and storytelling)
* Language understanding (knowledge acquisition and representation, state tracking, automated reasoning)
* Planning / strategic play during battles (similar to chess or go)

My group has published several papers exploring how large language models can be used to for D&D. [Callison-Burch et al. (EMNLP 2022)](#dungeons-and-dragons-as-a-dialog-challenge-for-artificial-intelligence)describes the work I did at Google framing D&D as a dialogue challenge and train LLMs.  My research group has published several follow-on papers.  In [Zhu et al. (ACL 2023)](#fireball-dataset), we construct a dataset called FIREBALL containing structured game state information from thousands of D&D gameplay sessions, measuring how well LLMs can generate grounded narration, and be trained to perform state-tracking. In [Zhu et al. (AAID 2023)](#calypso-llms-for-dms), we develop CALYPSO, a system of LLM-powered interfaces to provide DMs with information, narration, and brainstorming assistance. CALYPSO was used by players in live games for months. Finally, [Zhou et al. (ACL 2023)](#dnd-theory-of-mind) explores modeling theory of mind for the DM to anticipate player actions. Together, this body of work shows the potential for LLMs to enhance creative tabletop gaming as NPCs, automated gamemasters, and co-creative assistants.  I'm using this work to teaching students about LLMs in my graduate seminar [Interactive Fiction and Text Generation](https://interactive-fiction-class.org).


**Python Framework for Building LLM Applications**  We recently published an open source Python framework for developing LLM applications called Kani [(Zhu et al, NLP-OSS 2023)](#kani-python-framework-for-building-llm-applications)  Kani is a lightweight, flexible, and model-agnostic open-source framework for building language model applications. Kani helps developers implement a variety of complex features by supporting the core building blocks of chat interaction: model interfacing, chat management, and robust function calling. All Kani core functions are easily overridable and well documented to empower developers to customize functionality for their own needs. Kani thus serves as a useful tool for researchers, hobbyists, and industry professionals alike to accelerate their development while retaining interoperability and fine-grained control.  Kani has nearly 500 stars on [Github](https://github.com/zhudotexe/kani).  I've been teaching a PhD seminar on the intersection of LLMs and Programming Languages with Benjamin Pierce, a PL faculty member here at UPenn, and I hope to continue working on research at the intersection of PL and LLMs in the future.

## Advising Policymakers on AI and the Law

I was on sabbatical when ChatGPT was announced, and I spent much of my time trying to do good scientific communication to much broader audiences than I typically speak to. I gave 20 invited talks and panels to a wide range of groups.  During my sabbatical, I spent time to research legal issues related to AI and copyright that arise from LLMs' ability to generate creative content. I served on the US Copyright Office's AI listening tour.  In May, I was invited to testify before The U.S. House of Representatives.  I traveled to Washington DC to appear before the House Judiciary's Subcommittee on Courts, Intellectual Property, and the Internet, which held a  hearing on "Artificial Intelligence and Intellectual Property: Interoperability of AI and Copyright Law".  I explained generative AI to lawmakers and advocated that the training of AI systems on copyrighted materials should be considered fair use.

I have become an expert at issues related to copyright law and AI.  I participated in the GenLaw workshop at ICML 2023 and made many connections with legal scholars who are focused on this issue.  Lawyers from companies like Meta, OpenAI and Microsoft have reached out to me about potentially serving as an expert witness in pending lawsuits that may shape the future of generative AI.  I have been actively trying to engage with policy makers by submitting comments to the US Copyright Office, reaching out to lawmakers who are drafting legislation on the right to publicity, and engaging in advocacy for fair use.  I have also attempted to build bridges to communities who are worried about AI misappropriating their creative work – by speaking to groups like The Society of Composers and Lyricists – because I think mutual understanding is critical to navigating future policies for AI.  I am also planning to explore new research directions aimed at developing techniques to mitigate copyright risks for generative models.

## Selected Talks

<ul>
    {% for talk in page.talks %}
      {% if talk.url %}
        <li> <a href="{{talk.url}}">{{ talk.venue }}. {{talk.title}}</a>. {{talk.date}} </li>
      {% else %}
       <li> {{ talk.venue }}. {{talk.title}}. {{talk.date}} </li>
      {% endif %}
  {% endfor %}
</ul>


## Works Cited


<table class="table"> 
<tbody>

 {% for id in page.publications %}
  {% for publication in site.data.publications %}
   {% if publication.id == id %} 
    <tr>
      <td id="{{ publication.id }}">
   {% if publication.url %}
      <a href="{{ publication.url }}">{{ publication.title }}.</a>
        {% else %}
      {{ publication.title }}.
   {% endif %}
   {{ publication.authors }}.
   {{ publication.venue }} {{ publication.year }}.


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
    </tr>
   {% endif %}
  {% endfor %}
 {% endfor %}






