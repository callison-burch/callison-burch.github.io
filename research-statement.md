---
title: Research Statement - Chris Callison-Burch
layout: default
active_tab: main_page 
keep_sidebar: false
publications:
  -
   title: Deduplicating Training Data Makes Language Models Better
   authors: Katherine Lee, Daphne Ippolito, Andrew Nystrom, Chiyuan Zhang, Douglas Eck, Chris Callison-Burch, Nicholas Carlini 
   venue: ACL
   type: conference
   year: 2022
   url: https://www.cis.upenn.edu/~ccb/publications/deduplicating-training-data-makes-lms-better.pdf
   page_count: 22
   highly_cited: 172
   id: deduplicating-training-data
   code: https://github.com/google-research/deduplicate-text-datasets
   abstract: We find that existing language modeling datasets contain many near-duplicate examples and long repetitive substrings. As a result, over 1% of the unprompted output of language models trained on these datasets is copied verbatim from the training data. We develop two tools that allow us to deduplicate training datasets -- for example removing from C4 a single 61 word English sentence that is repeated over 60,000 times. Deduplication allows us to train models that emit memorized text ten times less frequently and require fewer train steps to achieve the same or better accuracy. We can also reduce train-test overlap, which affects over 4% of the validation set of standard datasets, thus allowing for more accurate evaluation. We release code for reproducing our work and performing dataset deduplication at https://github.com/google-research/deduplicate-text-datasets
   bibtex: |
      @inproceedings{lee2022deduplicating,
        title={Deduplicating Training Data Makes Language Models Better},
        author={Lee, Katherine and Ippolito, Daphne and Nystrom, Andrew and Zhang, Chiyuan and Eck, Douglas and Callison-Burch, Chris and Carlini, Nicholas},
        booktitle={Proceedings of the 60th Annual Meeting of the Association for Computational Linguistics (ACL 2022)},
        address={Dublin, Ireland}
        year={2022}
      }
  -
   title: A Recipe For Arbitrary Text Style Transfer with Large Language Models
   authors: Emily Reif, Daphne Ippolito, Ann Yuan, Andy Coenen, Chris Callison-Burch, Jason Wei
   venue: ACL
   type: conference
   year: 2022
   website: https://bit.ly/3fLDuci
   video: https://aclanthology.org/2022.acl-short.94.mp4
   url: https://www.cis.upenn.edu/~ccb/publications/zero-shot-arbitrary-text-style-transfer.pdf
   page_count: 12
   id: zero-shot-arbitrary-text-style-transfer
   data: 
   abstract: In this paper, we leverage large language models (LMs) to perform zero-shot text style transfer. We present a prompting method that we call augmented zero-shot learning, which frames style transfer as a sentence rewriting task and requires only a natural language instruction, without model fine-tuning or exemplars in the target style. Augmented zero-shot learning is simple and demonstrates promising results not just on standard style transfer tasks such as sentiment, but also on arbitrary transformations such as "make this melodramatic" or "insert a metaphor."
   bibtex: |
      @inproceedings{Reif2022-style-transfer,
        title={A Recipe For Arbitrary Text Style Transfer with Large Language Models},
        author={Emily Reif and Daphne Ippolito and Ann Yuan and Andy Coenen and Chris Callison-Burch and Jason Wei},
        booktitle={Proceedings of the 60th Annual Meeting of the Association for Computational Linguistics (ACL 2022)},
        address={Dublin, Ireland}
        year={2022}
      }
  -
   title: The Case for a Single Model that can Both Generate Continuations and Fill-in-the-Blank
   authors: Daphne Ippolito, Liam Dugan, Emily Reif, Ann Yuan, Andy Coenen, Chris Callison-Burch
   venue: NAACL
   type: conference
   year: 2022
   url: https://www.cis.upenn.edu/~ccb/publications/fill-in-the-blank-LMs.pdf
   page_count: 12
   id: fill-in-the-blank-LMs
   data: 
   code: 
   abstract: The task of inserting text into a specified position in a passage, known as fill in the blank (FitB), is useful for a variety of applications where writers interact with a natural language generation (NLG) system to craft text. While previous work has tackled this problem with models trained specifically to do fill in the blank, a more useful model is one that can effectively perform both FitB and continuation tasks. In this work, we evaluate the feasibility of using a single model to do both tasks. We show that models pre-trained with a FitB-style objective are capable of both tasks, while models pre-trained for continuation are not. Finally, we show how these models can be easily finetuned to allow for fine-grained control over the length and word choice of the generation.
   bibtex: |
      @inproceedings{Ippolito-2022-fill-in-the-blank,
        title={The Case for a Single Model that can Both Generate Continuations and Fill in the Blank},
        author={Daphne Ippolito and Liam Dugan and Emily Reif and Ann Yuan and Andy Coenen and Chris Callison-Burch},
        booktitle={Findings of the 2022 Annual Conference of the North American Chapter of the Association for Computational Linguistic (NAACL 2022)},
        address={Seattle, Washington}
        year={2022}
      }
  -
   title: Bidirectional Language Models Are Also Few-shot Learners
   authors: Ajay Patel, Bryan Li, Mohammad Sadegh Rasooli, Noah Constant, Colin Raffel, Chris Callison-Burch
   venue: ICLR
   type: conference
   year: 2023
   url: https://arxiv.org/abs/2209.14500
   page_count: 25
   id: bidirectional-lms-are-few-shot-leaners
   data:
   code:
   website: https://www.cis.upenn.edu/~ccb/publications/bidirectional-lms-are-few-shot-leaners.pdf
   abstract: |
      Large language models such as GPT-3 (Brown et al., 2020) can perform arbitrary tasks without undergoing fine-tuning after being prompted with only a few labeled examples. An arbitrary task can be reformulated as a natural language prompt, and a language model can be asked to generate the completion, indirectly performing the task in a paradigm known as prompt-based learning. To date, emergent prompt-based learning capabilities have mainly been demonstrated for unidirectional language models. However, bidirectional language models pre-trained on denoising objectives such as masked language modeling produce stronger learned representations for transfer learning. This motivates the possibility of prompting bidirectional models, but their pre-training objectives have made them largely incompatible with the existing prompting paradigm. We present SAP (Sequential Autoregressive Prompting), a technique that enables the prompting of bidirectional models. Utilizing the machine translation task as a case study, we prompt the bidirectional mT5 model (Xue et al., 2021) with SAP and demonstrate its few-shot and zero-shot translations outperform the few-shot translations of unidirectional models like GPT-3 and XGLM (Lin et al., 2021), despite mT5's approximately 50% fewer parameters. We further show SAP is effective on question answering and summarization. For the first time, our results demonstrate prompt-based learning is an emergent property of a broader class of language models, rather than only unidirectional models.
   bibtex: |
      @inproceedings{Patel-ICLR-2023,
        url = {https://arxiv.org/abs/2209.14500},
        author = {Patel, Ajay and Li, Bryan and Rasooli, Mohammad Sadegh and Constant, Noah and Raffel, Colin and Callison-Burch, Chris},
        keywords = {Machine Learning (cs.LG), Computation and Language (cs.CL), FOS: Computer and information sciences, FOS: Computer and information sciences},
        title = {Bidirectional Language Models Are Also Few-shot Learners},
        booktitle={Eleventh International Conference on Learning Representations (ICLR 2023)},
        address={Kigali, Rwanda}
        year={2023}
      }
   figures:
      -
         img: figures/bidirectional-lms-are-few-shot-leaners/bidirectional-lms-are-few-shot-leaners-figure-1.png
         label: Figure 1
         caption: A visualization of our SAP technique extracting high-quality translations from mT5. In the zero-shot setting, the examples used in the prompt are synthetic examples retrieved in a fully unsupervised manner.

  -
   title: SynthBio&colon; A Case Study in Human-AI Collaborative Curation of Text Datasets
   authors: Ann Yuan, Daphne Ippolito, Vitaly Nikolaev, Chris Callison-Burch, Andy Coenen, and Sebastian Gehrmann
   venue: NeurIPS 35th Conference on Neural Information Processing Systems (NeurIPS 2021) Track on Datasets and Benchmarks.
   type: conference
   year: 2021
   url: https://www.cis.upenn.edu/~ccb/publications/synthbio.pdf
   page_count: 24
   id: synthbio
   data: https://storage.googleapis.com/gem-benchmark/SynthBio.json
   abstract: NLP researchers need more, higher-quality text datasets. Human-labeled datasets are expensive to collect, while datasets collected via automatic retrieval from the web such as WikiBio are noisy and can include undesired biases. Moreover, data sourced from the web is often included in datasets used to pretrain models, leading to inadvertent cross-contamination of training and test sets. In this work we introduce a novel method for efficient dataset curation&colon; we use a large language model to provide seed generations to human raters, thereby changing dataset authoring from a writing task to an editing task. We use our method to curate SynthBio - a new evaluation set for WikiBio - composed of structured attribute lists describing fictional individuals, mapped to natural language biographies. We show that our dataset of fictional biographies is less noisy than WikiBio, and also more balanced with respect to gender and nationality.
   bibtex: |
      @inproceedings{Yuan2021SynthBio,
        title={{SynthBio}: A Case Study in Human-{AI} Collaborative Curation of Text Datasets},
        author={Ann Yuan and Daphne Ippolito and Vitaly Nikolaev and Chris Callison-Burch and Andy Coenen and Sebastian Gehrmann},
        booktitle={35th Conference on Neural Information Processing Systems (NeurIPS 2021) Track on Datasets and Benchmarks.},
        year={2021}
      }
  -
   title: Exploring the Curious Case of Code Prompts
   authors: Li Zhang, Liam Dugan, Hainiu Xu, Chris Callison-Burch
   venue: Proceedings of the 1st Workshop on Natural Language Reasoning and Structured Explanations (NLRSE)
   type: workshop
   year: 2023
   url: https://aclanthology.org/2023.nlrse-1.2
   page_count: 9
   id: the-curious-case-of-code-prompts
   abstract: |
      Recent work has shown that prompting language models with code-like representations of natural language leads to performance improvements on structured reasoning tasks. However, such tasks comprise only a small subset of all natural language tasks. In our work, we seek to answer whether or not code-prompting is the preferred way of interacting with language models in general. We compare code and text prompts across three popular GPT models (davinci, code-davinci-002, and text-davinci-002) on a broader selection of tasks (e.g., QA, sentiment, summarization) and find that with few exceptions, code prompts do not consistently outperform text prompts. Furthermore, we show that the style of code prompt has a large effect on performance for some (but not all) tasks and that fine-tuning on text instructions leads to better relative performance of code prompts.
   bibtex: |
      @inproceedings{zhang-etal-2023-exploring,
        title={Exploring the Curious Case of Code Prompts},
        author={Li Zhang and Liam Dugan and Hainiu Xu and Chris Callison-Burch},
        booktitle={Proceedings of the 1st Workshop on Natural Language Reasoning and Structured Explanations (NLRSE)},
        address={Toronto, Canada},
        year={2023}
      }
  -
   title: Real or Fake Text?&colon; Investigating Human Ability to Detect Boundaries Between Human-Written and Machine-Generated Text
   authors: Liam Dugan, Daphne Ippolito, Arun Kirubarajan, Sherry Shi, Chris Callison-Burch
   venue: AAAI
   type: conference
   year: 2023
   url: https://www.cis.upenn.edu/~ccb/publications/real-or-fake-text-analysis.pdf
   page_count: 13
   data: https://github.com/liamdugan/human-detection/tree/main/data
   code: https://github.com/liamdugan/human-detection
   website: https://roft.io
   video: https://www.youtube.com/watch?v=gsZOBadj5t4
   press: 
    - 
      title: Bot or not? How to tell when you’re reading something written by AI
      source: CNN
      by_line: Clare Duffy and Kenneth Uzquiano
      date: July 11, 2023
      url: https://www.cnn.com/interactive/2023/07/business/detect-ai-text-human-writing/
    - 
      title: NewsChannel 12 Investigates&colon; Artificial Intelligence Part 3 
      source: Channel 12 News - ABC affiliate in North Carolina
      by_line: Tyler Hardin
      date: May 19, 2023
      url: https://wcti12.com/news/newschannel-12-investigates/newschannel-12-investigates-artificial-intelligence-part-3
    - 
      title: Real or Fake Text? We can learn to spot the difference
      source: Penn Today
      date: March 10, 2023
      url: https://penntoday.upenn.edu/news/penn-seas-real-or-fake-text-we-can-learn-spot-difference
    - 
      title: A Bot Isn’t Going to Take Your Place, But AI Will Make Your Job Harder
      source: Corporate Compliance Insights 
      date: March 8, 2023
      url: https://www.corporatecomplianceinsights.com/ai-compliance-jobs/
    - 
      title: How can humans detect AI writing? These Penn researchers have some tips
      source: Technical.ly
      date: March 6, 2023
      url: https://technical.ly/software-development/how-humans-detect-ai-writing-penn-research/
   id: real-or-fake-text-analysis
   abstract: |
      As text generated by large language models proliferates, it becomes vital to understand how humans engage with such text, and whether or not they are able to detect when the text they are reading did not originate with a human writer. Prior work on human detection of generated text focuses on the case where an entire passage is either human-written or machine-generated. In this paper, we study a more realistic setting where text begins as human-written and transitions to being generated by state-of-the-art neural language models. We show that, while annotators often struggle at this task, there is substantial variance in annotator skill and that given proper incentives, annotators can improve at this task over time. Furthermore, we conduct a detailed comparison study and analyze how a variety of variables (model size, decoding strategy, fine-tuning, prompt genre, etc.) affect human detection performance. Finally, we collect error annotations from our participants and use them to show that certain textual genres influence models to make different types of errors and that certain sentence-level features correlate highly with annotator selection. We release the RoFT dataset: a collection of over 21,000 human annotations paired with error classifications to encourage future work in human detection and evaluation of generated text.
   bibtex: |
      @inproceedings{dugan-ippolito-et-al-2023,
        title={Real or Fake Text? Investigating Human Ability to Detect Boundaries Between Human-Written and Machine-Generated Text},
        author={Liam Dugan and Daphne Ippolito and Arun Kirubarajan and Sherry Shi and Chris Callison-Burch},
        booktitle={The 37th AAAI Conference on Artificial Intelligence (AAAI 2023)},
        address={Washington DC, USA}
        year={2023}
      }
   figures:
      -
         img: figures/real-or-fake-text-analysis/real-or-fake-text-analysis-figure-1.png
         label: Figure 1
         caption: In the boundary detection task, players see one sentence at a time from a passage and try to guess when the passage transitions from human-written to machine-generated.
  -
   title: Automatic Detection of Generated Text is Easiest when Humans are Fooled
   authors: Daphne Ippolito*, Daniel Duckworth*, Chris Callison-Burch and Douglas Eck
   venue: ACL
   type: conference
   year: 2020
   url: https://www.cis.upenn.edu/~ccb/publications/automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled.pdf
   page_count: 15
   highly_cited: 158
   id: automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled
   abstract: Recent advancements in neural language modeling make it possible to rapidly generate vast amounts of human-sounding text. The capabilities of humans and automatic discriminators to detect machine-generated text have been a large source of research interest, but humans and machines rely on different cues to make their decisions. Here, we perform careful benchmarking and analysis of three popular sampling-based decoding strategies like top-k, nucleus sampling, and untruncated random sampling—and show that improvements in decoding methods have primarily optimized for fooling humans. This comes at the expense of introducing statistical abnormalities that make detection easy for automatic systems. We also show that though both human and automatic detector performance improve with longer excerpt length, even multi-sentence excerpts can fool expert human raters over 30% of the time. Our findings reveal the importance of using both human and automatic detectors to assess the humanness of text generation systems.
   bibtex: |
      @inproceedings{Ippolito-Duckworth-et-al:2020,
       author = {Daphne Ippolito and Daniel Duckworth and Douglas Eck and Chris Callison-Burch},
       title = {Automatic Detection of Generated Text is Easiest when Humans are Fooled},
       booktitle = {Proceedings of The 58th Annual Meeting of the Association for Computational Linguistics (ACL)},
       year = {2020},
       url = {http://www.cis.upenn.edu/~ccb/publications/automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled.pdf}
      } 
---

# Research Statement
<p class="text-muted">
(Last updated October 1, 2023)<br/>
</p>


In the field of Natural Language Processing, the rise of Large-Language Models (LLMs) like ChatGPT symbolizes a pivotal transformation - it marks a historical milestone  towards fulfilling the longstanding objective of developing models capable of understanding and generating natural language.

Although ChatGPT seems like an overnight success, its hisotry can be traced to the 1990s and the introduction of statistical n-gram Language Models, and to the inroduction of neural LMs in the early 2000s.  In the mid-2010s, we witnessed the rise of pre-trained models like word2vec, ELMo and BERT, which redefined the state-of-the-art by employing vector space representations and the transformer architecture to capture the nuances of natural language semantics. Then, we entered the current generation of Generative Pretrained Transformer (GPT) models like ChatGPT, Llama, and PALM, which, powered by immense  training data and huge computational power, have ushered in an entirely new era for the NLP community.

These advances have caused a paradigm shift in our field. Like many other NLP professors, I initially struggled to understand how I could continue to make a research contribution.  On numerous occasions, I have related how my using GPT-3 for the first time in early 2021 lead to what I describe as a "career existential crisis" because it seemingly supplanted many NLP tasks that were previously first order research concerns. I realized that research areas like machine translation, automatic summarization, and question answering had largely been subsumed by GPT-style models. Moreover, because these models require Google-sized data centers to train, I believed that no university would every be able to create one.  If you're interested in hearing me recount my career existential crisis, you can watch this YouTube clip: 

<center>
<iframe width="560" height="315" src="https://www.youtube.com/embed/2oOQIRvkq_o?si=t9kd6FAKwpRir81p" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</center>

What makes the advent of LLMs profoundly transformative is their ability to act as general-purpose learners. The paradigm of "pre-training-then-fine-tuning" gives them the flexibility to adapt to discrete tasks, while requiring a mere fraction of the training data. Moreover, their proficiency in few-shot learning and instruction following have outstripped most previous machine learning methodologies. In essence, we now have general purpose AI systems that can observe and learn from a handful of examples, and also interpret and execute fairly complex instructions articulated in natural language.  This means that NLP is now delivering tools that are genuinely transformatively –not only to our own field– but to soceity as a whole.


Is there still room for academics like me to make a research contribution in the era of large pretrained models?  I have come to the position that there is still a place for academic research in NLP.  In the past two years, I've figured out several research directions that are a good fit for academic researchers in this era.   My research directions are now:

1. Understanding the capabilities of LLMs
2. Building explainable models
3. Enabling symbolic reasoning with LLMs
4. Building LLM-based applications 
5. Advising policymakers on AI and the law

<!--
## Understanding the Capabilities of LLMs


A major focus has been analyzing what LLMs like GPT-3 learn and developing techniques to improve their capabilities. Much of this work was done with my PhD student Daphne Ippolito, who spent time interning at Google Brain. We looked at how the pretraining corpus impacts model performance, finding that diversity of domains is more important than volume. We also analyzed model biases, proposing methods to quantify and mitigate harmful stereotypes. Additionally, we developed prompting techniques to improve few-shot learning, enabling LLMs to perform complex reasoning tasks with minimal training examples.
-->

# Research Direction 1: Understanding the Capabilities of Large Language Models 


I aim to understand the extent and limitations of LLMs through my research. I have explored a variety of different aspects of LLMs including prompting techniques, 

<b>Prompting Techniques</b>  An important attribute of LLMs is their ability to adapt to new tasks given a relatively small number of examples. This characteristic, termed as "few-shot learning," effectively demonstrates how these models perform in-context learning which recognizes patterns within a prompt rather than requiring weight updates. 

We harnessed this trait to demonstrate the flexibility of language models in replicating novel styles beyond conventional style transfer tasks ([Ippolito et al., ACL 2022](#zero-shot-arbitrary-text-style-transfer)). In parallel, we also explored the crossover of LLMs trained on code to NLP tasks, shedding light on this novel and rapidly growing area of research ([Zhang et al., NLRSE 2023](#the-curious-case-of-code-prompts)).

## Model Architectures

Alongside this, we also devoted research effort towards examining various architectures for LLMs. specifically, we turned our focus on assessing how tweaks in the training setup can vastly alter the model's strengths ([Ippolito et al., AAAI 2023](#fill-in-the-blank-LMs), [Patel et al., ICLR 2023](#bidirectional-lms-are-few-shot-leaners)).

## Synthetic Datasets

LLMs also showcased their utility in producing synthetic datasets. In an effort to better combat biases present in naturally occurring data, we used LLMs to create a high-quality synthetic dataset for generating Wikipedia-style biographies from infoboxes([Yuan et al., NeurIPS 2021](#synthbio)). This line of inquiry indicates a promising prospect of LLMs being used to generate data for machine learning tasks beyond language processing.

## Detecting Machine Generated Text

The last but equally significant focus of this research direction is the discernment of "real" from "fake" or machine-generated text. In a large-scale human study, we analyzed how well participants could distinguish machine-generated text from human-written counterparts. We found that while humans found it increasingly challenging to recognize machine-generated outputs, they could indeed be trained to become more proficient at this task ([Dugan et al., AAAI 2023](#real-or-fake-text-analysis)).

Concurrently, we also explored the automatic detection of machine-generated text. The experiments highlighted that though improvements in decoding methods optimized for tricking humans, they inadvertently introduced statistical anomalies that automation found easy to detect ([Ippolito et al., ACL 2020](#automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled)).

## Data Preprocessing

In another line of inquiry, we investigated how a minor adjustment in data preprocessing could lead to appreciable differences in LLMs' performance. We deduced that by merely keeping unique instances of each sentence in the training data, the frequency of 'memorization' in LLMs significantly reduced. This development has now become a staple preprocessing technique for training LLMs ([Lee et al., ACL 2022](#deduplicating-training-data)). 

Each of these lines of inquiry adds up to a broader understanding of LLMs' capabilities, forms a significant portion of my ongoing research, and will continue to guide my research initiatives over the coming years.


# Understanding the Capabilities of Large Language Models (LLMs)

I aim to understand the extent and limitations of LLMs through my research. One primary focus has been the exploration of prompting techniques for LLMs. In our research paper ["A Recipe For Arbitrary Text Style Transfer with Large Language Models" (Ippolito et. al, ACL 2022)](#zero-shot-arbitrary-text-style-transfer), we demonstrated that LLMs can rewrite prose into varying styles using a straightforward method. The approach implies the potential to generalize few-shot prompting across novel styles.

Our study ["Exploring the Curious Case of Code Prompts" (Zhang et. al, NLRSE 2023)](#the-curious-case-of-code-prompts) illustrates a systematic examination into the use of LLMs, which were trained on code for NLP tasks. These efforts have broadened our understanding of the dynamic nature of LLMs and how their in-context learning can be manipulated for different purposes.

I also participate in research aimed at improving the LLM architectures as depicted in ["The Case for a Single Model that can Both Generate Continuations and Fill in the Blank" (Ippolito et. al, AAAI 2023)](#fill-in-the-blank-LMs) and ["Bidirectional Language Models Are Also Few-shot Learners" (Patel et. al, ICLR 2023)](#bidirectional-lms-are-few-shot-leaners). These papers focus on analyzing the performance of model architectures, particularly during the execution of tasks that rely on both forward-looking and backward-looking context.

One promising approach is the application of LLMs to synthetic data generation. In ["SynthBio: A Case Study in Human-AI Collaborative Curation of Text Datasets" (Yuan et. al, NeurIPS 2021)](#synthbio), we found that LLMs could aid us in creating a new dataset with minimal human editing, while also diminishing the biases present in natural data. The study suggests that LLMs hold potential utility in generating quality synthetic data for machine learning tasks.

Lastly, a significant part of our research probes into the feasibility of distinguishing machine-generated text by either humans or machines. Works like ["Real or Fake Text?: Investigating Human Ability to Detect Boundaries Between Human-Written and Machine-Generated Text" (Dugan et. al, AAAI 2023)](#real-or-fake-text-analysis) and ["Automatic Detection of Generated Text is Easiest when Humans are Fooled" (Ippolito et. al, ACL 2020)](#automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled) provide evidence of the challenge of discerning "fake" text.

Our study on "fake" text gained significant attention, revealing that as LLMs increase in size, they become more elusive to human detection. However, training can improve humans' capability to discern such texts.

In the paper ["Deduplicating Training Data Makes Language Models Better" (Lee et. al, ACL 2022)](#deduplicating-training-data), we demonstrated a practical application of data preprocessing, namely deduplication, in training LLMs. By reducing the rate of "memorization" in LLMs, this method now stands as a standard practice in the LLM training process.

Through diverse studies and analyses, I continue to explore the capabilities of LLMs, their applications, potential issues, and viable solutions for enhanced proficiency in NLP.

# Understanding the Capabilities of Large Language Models (LLMs)

My endeavors to comprehend the potential and limitations of LLMs have yielded wide-ranging and influential results. One significant area of my research has been the exploration of various novel prompting techniques for LLMs. For instance, noted in our paper ["A Recipe For Arbitrary Text Style Transfer with Large Language Models" (Ippolito et. al, ACL 2022)](#zero-shot-arbitrary-text-style-transfer), we revealed the capability of LLMs and LLM dialogue systems to rewrite prose into different styles via a simple recipe. This approach demonstrated that few-shot prompting for style transfer could generalize across novel styles.

In another study ["Exploring the Curious Case of Code Prompts" (Zhang et. al, NLRSE 2023)](#the-curious-case-of-code-prompts), my team systematically examined the emerging topic of using LLMs trained on code for Natural Language Processing (NLP) tasks. These research explorations have expanded our understanding of the dynamic nature of LLMs, and how in-context learning could be expertly manipulated to fulfill varying purposes.

Enhancing the architecture of LLMs is another vital aspect of my research as outlined in ["The Case for a Single Model that can Both Generate Continuations and Fill in the Blank" (Ippolito et. al, AAAI 2023)](#fill-in-the-blank-LMs) and ["Bidirectional Language Models Are Also Few-shot Learners" (Patel et. al, ICLR 2023)](#bidirectional-lms-are-few-shot-leaners). These explorations dwelt upon the performance of diverse model architectures, especially to ascertain the effective implementation of tasks relying on both forward-looking and backward-looking information in the presented context.

Additionally, my group has investigated using LLMs for synthetic data generation. In our work ["SynthBio: A Case Study in Human-AI Collaborative Curation of Text Datasets" (Yuan et. al, NeurIPS 2021)](#synthbio), we found that with minimal human editing, we could create a new dataset while simultaneously mitigating the bias present in naturally occurring data, which suggests the potential application of LLMs in creating high-quality synthetic data to train machine learning for other tasks.

Finally, an essential and noteworthy aspect of our research has centered upon examining the detectability of machine-generated text, whether by humans or machines. Our studies, such as ["Real or Fake Text?: Investigating Human Ability to Detect Boundaries Between Human-Written and Machine-Generated Text" (Dugan et. al, AAAI 2023)](#real-or-fake-text-analysis) and ["Automatic Detection of Generated Text is Easiest when Humans are Fooled" (Ippolito et. al, ACL 2020)](#automatic-detection-of-generated-text-is-easiest-when-humans-are-fooled), provided intriguing insights into the difficulty levels while discerning "fake" text.

Particularly, our study examining "fake" text was the largest ever human study on this topic and was published a few months after ChatGPT was released. It demonstrated that larger LLMs make it increasingly difficult for humans to spot their output. However, we also found that humans can be successfully trained to spot their output.

Lastly, in our research ["Deduplicating Training Data Makes Language Models Better" (Lee et. al, ACL 2022)](#deduplicating-training-data), we explored the impact of a simple yet effective data preprocessing step on training LLMs. We noticed that the rate of "memorization," where LLMs tend to reproduce large portions of their training data, dramatically reduced by deduplicating the training data. This method is now considered a standard practice when training LLMs.

My exploration into understanding the capabilities of LLMs informs various aspects of their applications, including but not limited to, novel prompting techniques, model architectures, synthetic data generation, and the detectability of machine-generated text. Through rigorous studies and experimental analysis, my research probes into technological advancements while simultaneously enhancing our grasp of potential issues and solutions in the field of Natural Language Processing.



## Building Explainable Models

I have been exploring concept bottleneck models as a way to make LLMs more interpretable. The key idea is to force the model to predict an intermediate conceptual representation, which provides a bottleneck that grounds the model's predictions. For instance, we can force a model to first predict a series of "scene" concepts before generating a caption for an image. My collaborators include Prof. Mark Yatskar and Prof. Eric Wong in CIS as well as several PhD students. Our results show improved accuracy and greater explainability compared to end-to-end models.

## Enabling Symbolic Reasoning with LLMs

LLMs have proven weak at symbolic reasoning, but can be coupled with classical AI systems. My approach extracts structured representations from LLMs, like executable Python code, which are passed to a solver. The solver output is used to guide the LLM to iteratively refine its structured prediction. This allows combining the reasoning capabilities of symbolic systems with the natural language prowess of LLMs. I'm interested in expanding the representations, such as to PDDL and BayesNets.

## Building LLM-based Applications

I'm constantly exploring new applications of LLMs:

- Intelligent tutoring systems that generate personalized materials and feedback.

- Analyzing deficiencies in smart home assistants using HCI methods and proposing improvements based on LLMs. 

- Language-based games, like using LLMs as Dungeon Masters in D&D.

- Advising industry and government on responsible applications of LLMs.

## Advising Policymakers on AI and the Law

I have become an expert on AI copyright issues that arise from LLMs' ability to generate creative content. I served on the US Copyright Office's listening tour and provided Congressional testimony. Lawyers from companies like Meta and OpenAI have consulted me on pending lawsuits. My research aims to develop techniques to mitigate copyright risks for generative models.



## Bibliography 

<table class="table"> 
<tbody>
 {% for publication in page.publications %}
    <tr>
      <td id="{{publication.id}}"> 	
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
  {% endfor %}
