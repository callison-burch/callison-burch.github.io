---
title: Syllabus
layout: default
active_tab: main_page 
---







# Outline


## Worker Perspectives and Platform Improvements

Lecture Notes for 9/17/2024 (Tuesday)

### I. Introduction and Review
- Recap of previous discussions on worker demographics and motivations
- Introduction to ethical considerations for crowdsourcing platforms

### II. Challenges in Amazon Mechanical Turk Interface

#### A. Issues for Workers
- Lack of hourly rate information
- Difficulty estimating task difficulty and time required
- No way to know requester reputation in advance
- Unclear payment timelines

#### B. Issues for Requesters 
- Difficulty ensuring quality work
- Challenges in identifying worker qualifications
- Limited tools for reviewing and approving work

### III. Tools and Initiatives to Improve Worker Experience

#### A. Turkopticon
- Browser plugin created by PhD students
- Allows workers to rate requesters on:
  - Communicativity
  - Generosity 
  - Fairness
  - Promptness
- Provides transparency and accountability

#### B. Turker Nation
- Discussion forum for workers
- Created "Hall of Fame/Shame" for requesters
- Facilitates knowledge sharing among workers

#### C. Crowd Worker Plugin
- Aimed to automatically track worker statistics
- Provided more objective metrics than Turkopticon
- Project ultimately discontinued due to maintenance challenges

### IV. Market Dynamics and the "Market for Lemons" Problem

- Explanation of how information asymmetry can lead to market degradation
- Risk of good workers leaving the platform if quality is not rewarded
- Importance of maintaining balance to ensure platform sustainability

### V. Balancing Power Between Workers and Requesters

- Discussion on how power imbalances affect work quality and reliability
- Considerations:
  - Fair compensation and its impact on work quality
  - The role of clear instructions and communication
  - Potential for worker organization or unionization in digital platforms
  - Trade-offs between worker protections and platform efficiency

### VI. Challenges in Platform Improvement

- Difficulty in changing established platforms due to business constraints
- The role of academic research in informing best practices
- Potential for new platforms to address existing issues

### VII. Impact of AI and Language Models on Crowdsourcing

- Brief discussion on how AI developments may reshape the crowdsourcing landscape
- Potential for new organizational structures in micro-labor markets

### Conclusion
- Emphasis on the complexity of issues in crowdsourcing platforms
- Encouragement to consider multifaceted approaches to improvement










## Worker Demographics and Ethics in Crowdsourcing

Lecture Notes for 9/19/2024 (Thursday)

### I. Introduction to Homework 1
- Focus on becoming a crowd worker
- Explore 2 out of 6 platforms: Mechanical Turk, Zooniverse, Google Crowdsource, CrowdGen, Upwork, Macau
- Analyze from worker and regulator perspectives
- Due in about 1.5 weeks

### II. Understanding Crowd Worker Demographics

#### A. Challenges in Studying Workers
- Workers are anonymous on platforms
- Limited information available to requesters

#### B. Methods for Studying Workers
- Create surveys as crowdsourcing tasks
- Pay workers to provide demographic information
- Rely on platform's ability to prevent multiple accounts

#### C. Key Findings from Surveys
- About 50% of workers from US, 40% from India
- Workers tend to be younger and more educated than general population
- Many use crowdsourcing as supplemental income
- Motivations differ between US and Indian workers

### III. Political Views of Crowd Workers
- Tend to lean Democratic in US
- Accurately predicted state-level election results
- Demonstrates "wisdom of the crowd" effect

### IV. Worker Experiences and Motivations
- Many do it for supplemental income
- Some report financial struggles and dependence on platforms
- Debate over whether work is done "for fun" or out of necessity

### V. Gig Economy and Labor Classification

#### A. Uber Case Study
- Debate over worker classification (employee vs. independent contractor)
- Impact on worker benefits and company responsibilities
- California AB5 law and Proposition 22

#### B. Implications for Crowdsourcing Platforms
- Mechanical Turk workers not considered employees
- Lack of labor protections for crowdworkers
- Role of Institutional Review Boards in academic research using crowdsourcing

### VI. Discussion Question for Next Time
- Pros and cons of classifying gig workers as independent contractors vs. employees
- Impact on workers, companies, and consumers















## Designing Tasks for Amazon Mechanical Turk

Lecture Notes for 9/24/2024 (Tuesday)

### I. Introduction to Task Design on Mechanical Turk

#### A. Overview of Task Types
- Categorization jobs (e.g. image labeling)
- Data collection tasks
- Content moderation
- Sentiment analysis 
- Surveys
- Image tagging
- Transcription
- Creative writing

#### B. Key Considerations for Task Design
- Clear instructions are crucial
- Tasks should be decomposable into simple steps
- Consider quality control mechanisms
- Balance between task simplicity and meaningful work

### II. Creating a Task on Mechanical Turk

#### A. Basic Task Parameters
- Title, description, keywords
- Reward amount
- Time allotted
- Auto-approval time

#### B. Worker Requirements
- Location restrictions
- Approval rate thresholds
- Number of HITs completed
- Master workers qualification

#### C. Task Design
- HTML templates 
- Variables populated from CSV files
- Ability to customize with JavaScript

### III. Quality Control Mechanisms

#### A. Basic Approaches
- Redundancy (multiple workers per task)
- Time limits
- Worker qualifications

#### B. Gold Standard Questions
- Known correct answers mixed into tasks
- Used to evaluate worker quality
- Should be representative difficulty

#### C. Attention Checks
- Simple questions to ensure workers are paying attention
- Not testing knowledge, just engagement

#### D. Custom Qualifications
- Create your own worker qualifications
- Useful for building trusted worker pools

### IV. Considerations for Effective Crowdsourcing

#### A. Task Suitability 
- Simple, clear objectives
- Decomposable into microtasks
- Doesn't require specialized knowledge
- Benefits from human judgment

#### B. Cost and Efficiency
- Balance between quality and cost
- Consider time for quality control
- Factor in fees and worker payments

#### C. Ethical Considerations
- Fair payment
- Informed consent for sensitive content
- Respecting worker privacy

### V. Analyzing Results

- Downloading and processing submitted work
- Approving/rejecting based on quality control metrics
- Aggregating results (e.g. majority voting)

### VI. Emerging Trends
- Integration with AI/ML pipelines
- More sophisticated quality control algorithms
- Increased focus on ethical crowdsourcing practices
















##  Designing and Implementing a Crowdsourced Survey

Lecture Notes for 9/26/2024 (Thursday)


### I. Introduction
- Review of previous topics on designing Mechanical Turk tasks
- Importance of quality control in crowdsourcing

### II. Key Differences Between Gold Standards and Attention Checks
- Gold standards test workers' ability to complete tasks correctly
- Attention checks test workers' diligence and focus
- Gold standards relate to actual task content, attention checks are trivial questions

### III. Designing a Crowdsourced Survey on U.S. Presidential Election Predictions

#### A. Survey Platform and Structure
- Using Qualtrics for survey design
- Breaking survey into multiple blocks to prevent easy automation

#### B. Key Survey Components
1. Establishing residence (state, zip code, city)
2. Assessing voter eligibility and intentions
3. Gold standard question: 2020 election results in respondent's state
4. Main prediction question: Who will win respondent's state in 2024
5. Experimental component: Asking about margin of victory, with/without bonus incentive

#### C. Survey Flow and Logic
- Generating random completion codes
- Randomizing bonus offer to create experimental conditions

### IV. Implementing the Survey on Amazon Mechanical Turk

#### A. Creating the HIT
- Designing the task title and description
- Setting reward amount and time allocation
- Choosing worker qualifications (e.g., US location)

#### B. Task Visibility and Qualifications
- Using "Hidden" visibility to limit task to qualified workers
- Importance of US-only qualification for this survey

#### C. Instructions and Design
- Using ChatGPT to generate clear, concise instructions
- Importance of testing the survey link and flow

### V. Additional Considerations
- Preventing multiple submissions
- Bot detection and security measures
- Collecting browser and OS information for additional analysis

### VI. Conclusion
- Preview of expected results and timeline
- Importance of clear instructions and quality control in crowdsourcing tasks














## Human Computation Taxonomy and Motivation

Lecture Notes for 10/1/2024 (Tuesday)

### I. Introduction
- Review of previous topics on Amazon Mechanical Turk
- Introduction to a broader academic framework for human computation

### II. Data Mining and Privacy Concerns
- Recent article: "Watching the Watchdogs: Tracking SEC Inquiries with Geolocation Data"
- Example of using anonymized location data to track SEC investigations
- Implications for privacy and potential misuse of data

### III. Human Computation Framework
- Paper: "Human Computation: A Taxonomy of a Growing Field" (2011)
- Importance of developing shared language and definitions in emerging fields
- Key dimensions of human computation systems

### IV. Motivation in Human Computation

#### A. Traditional Motivators
1. Pay
   - Micropayments
   - Potential for cheating
2. Altruism
   - Examples: Jim Gray search, Haitian earthquake response
3. Enjoyment
   - Games with a purpose (e.g., ESP Game, Duolingo)

#### B. Gamification
- GitHub contribution streaks case study
- Cultural differences in gamification effectiveness
- Resource: "Actionable Gamification" book

#### C. Implicit Work
- reCAPTCHA as an example
- Evolution from security measure to productive task

#### D. Other Motivators (from class discussion)
- Skill development
- Access to content or features
- Reciprocity-based systems
- Reputation and social influence
- Educational assignments

### V. Quality Control in Human Computation

#### A. Importance of Quality Control
- Dealing with mistakes, misunderstandings, and potential sabotage

#### B. Quality Control Methods
1. Reputation systems
2. Agreement and redundancy
3. Gold standard questions
4. Multi-level review
5. Defensive task design
6. Statistical filtering
7. Economic incentives

#### C. Case Study: CastingWords Transcription Service
- Using bonuses to incentivize high-quality work

### VI. Task-Request Cardinality

#### A. Definition
- Relationship between the number of tasks and requests in a human computation system

#### B. Types of Cardinality
1. One-to-One
2. Many-to-Many
3. Many-to-One
4. Few-to-One

#### C. Examples
- One-to-One: Chat-based question answering
- Many-to-Many: Image labeling
- Many-to-One: Search tasks (e.g., finding Jim Gray)
- Few-to-One: VizWiz (visual assistance for blind users)

### Conclusion
- Importance of understanding these dimensions when designing human computation systems
- Preview of upcoming topics and assignments




## Human Computation Taxonomy 

Lecture Notes for 10/8/2024 (Tuesday)

### I. Review of Previous Lecture

#### A. Motivation in Crowdsourcing
- Recap of different motivational factors: pay, enjoyment, altruism
- Additional motivations discussed: assigned classwork, implicit work
- Example of gamification and reputation as motivators

#### B. Quality Control in Crowdsourcing
- Importance of quality control in large-scale projects
- Methods discussed:
  - Reputation systems
  - Agreement and redundancy
  - Gold standard questions
  - Multi-level review
  - Statistical filtering
  - Economic incentives

### II. Aggregation in Human Computation

#### A. Importance of Independent Contributions
- Reference to Stuart Wiki's "Wisdom of the Crowds"
- Decentralized, disorganized groups provide most accurate aggregated answers
- Importance of avoiding correlated errors

#### B. Aggregation Strategies
- Voting
- Prediction markets
- Knowledge base construction

#### C. Examples of Aggregation
- Medium platform's clapping system
- CBDC project for common sense knowledge collection

### III. Human Skills in Computation

- Visual recognition
- Language understanding
- Reasoning
- Common sense knowledge
- Translation

### IV. Process Order in Human Computation Systems

#### A. Key Components
1. Requester
2. Worker
3. Computer

#### B. Process Order Types
1. Computer-Worker-Requester (CWR)
2. Worker-Requester-Computer (WRC)
3. Computer-Worker-Requester-Computer (CWRC)

#### C. Example: reCAPTCHA (CWR process)
- Computer attempts OCR
- Workers decode difficult words
- Requester receives final transcription

### V. Task-Request Cardinality

#### A. Types of Cardinality
1. One-to-one
2. Many-to-many
3. Many-to-one
4. Few-to-one

#### B. Importance of Cardinality
- Affects system design, quality control, scalability, and budget
- Impacts user experience for both requesters and workers

### VI. Introduction to Computer Vision

#### A. Historical Context: The Summer Vision Project (1966)
- Led by Marvin Minsky at MIT
- Initial optimism about solving computer vision quickly

#### B. Challenges in Computer Vision
- Discussion question: Why did early AI pioneers underestimate the difficulty of computer vision?
- Key points from student responses:
  1. Complexity of image recognition and reasoning
  2. Need for large datasets and computational power
  3. Difficulty in edge detection and depth perception
  4. Lack of framework for interpreting visual data
  5. Variability in lighting, background, and perspective
  6. Underestimation of human cognitive processes in vision

#### C. Modern Perspective on Computer Vision Challenges
- Data requirements vastly underestimated
- Complexity of variations in visual input (lighting, angle, background)
- Amount of contextual knowledge humans accumulate over years

### VII. Current Developments in AI and Human Computation

- Mention of ongoing EMNLP conference in Philadelphia
- Highlighted talk: "Improving Foundation Models Using Human Data" by Wuhan Chen
- Integration of crowdsourcing with modern language models















## Machine Learning and Data Collection 

Lecture Notes for 10/10/2024 (Thurs)


### I. Introduction to Machine Learning

#### A. Core Concept of Machine Learning
- Building computer systems that automatically improve with experience
- Fundamental idea: Learning from data without explicit programming

#### B. Recent Advancements in Machine Learning
1. Neural network architectures
2. GPU technology advancements
3. Abundance of data from human activities and crowdsourcing

### II. Basic Tasks in Machine Learning

1. Clustering: Finding groups of related things
2. Classification: Detecting whether something belongs to a certain class
   - Examples: Identifying offensive comments, language detection, facial recognition

### III. Machine Learning Process Overview

#### A. Feature Extraction
- Identifying relevant characteristics from raw data
- Example: Extracting sentiment-related words from text reviews

#### B. Classification
- Using logistic regression to make decisions based on extracted features
- Involves multiplication of feature values with weights

#### C. Training Process
- Using algorithms like stochastic gradient descent
- Iterative process to find optimal weights for accurate predictions

### IV. Practical Implementation of Machine Learning

#### A. Libraries and Tools
- Use of libraries like scikit-learn in Python

#### B. Data Preparation
- Splitting data into training and testing sets
- Importance of using separate data for testing to avoid overfitting

### V. Evaluating Machine Learning Models

#### A. Key Metrics
1. Precision: Accuracy of positive predictions
2. Recall (Sensitivity): Ability to capture all positive instances
3. Accuracy: Overall correctness of predictions

#### B. Understanding Model Performance
- Importance of comparing model performance to baseline/naive approaches
- Example: Gun violence article classification

### VI. The Role of Data in Machine Learning

- Emphasis on the importance of data quantity and quality
- How crowdsourcing can contribute to data collection and labeling

### VII. Case Study: Gun Violence Database

#### A. Project Background
- Goal: Collect data about gun violence in the US for public health research
- Utilizes machine learning and crowdsourcing to extract structured data from news articles

#### B. Data Collection Process
1. Scraping news articles from various sources
2. Using crowdsourcing to label and verify data
3. Extracting structured information from text

#### C. Challenges and Considerations
- Dealing with biases in data collection
- Importance of diverse and representative data sources

### VIII. Future Directions

- Advancements in computer vision through improved data collection methods
- Importance of ethical considerations in data collection and use

### Conclusion
- Recap of the interplay between machine learning algorithms and data quality
- Emphasis on the role of crowdsourcing in advancing machine learning capabilities













## The Evolution of Computer Vision and Machine Learning

Lecture Notes for 10/15/2024 (Tues)

## I. Introduction to Computer Vision Challenges

### A. Early Misconceptions
- In the early days of computer science, pioneers like Marvin Minsky underestimated the complexity of visual perception for computers.
- They didn't fully appreciate the vast amount of background knowledge humans acquire throughout childhood.

### B. Cognitive Processes in Image Analysis
1. Region segmentation
2. Object classification and recognition
3. Scene description and captioning

## II. The Development of Computer Vision Techniques

### A. Early Approaches (1980s-1990s)
1. Edge detection
2. Surface orientation inference
3. Volume reconstruction

### B. Challenges with Traditional Methods
- Sensitivity to noise, lighting, and textures
- Difficulty handling occlusions
- Lack of robustness to object translations or movements
- Inefficiency with complex scenes

## III. The Rise of Neural Networks and Machine Learning

### A. Introduction of Neural Networks (Late 1990s)
- Yann LeCun's work on handwritten digit recognition
- MNIST dataset for handwriting recognition

### B. Advantages of Neural Networks
- Scalability with data
- Improved performance with increased training data

### C. Deep Learning (2000s onwards)
- Multiple layers for feature extraction and processing
- Ability to handle complex tasks like object recognition and scene understanding

## IV. The Importance of Standardized Datasets

### A. Benefits of Standardized Datasets
1. Facilitation of fair evaluation
2. Reproducibility of results
3. Benchmarking and progress tracking
4. Resource efficiency
5. Encouragement of robust algorithms

### B. Key Datasets
- MNIST (Modified National Institute of Standards and Technology) for digit recognition
- CMU and FERET faces datasets for facial recognition
- Various specialized datasets (e.g., sign language)

## V. The ImageNet Revolution

### A. Fei-Fei Li's Vision
- Aim: To create a comprehensive visual dataset encompassing a vast array of objects
- Motivation: Addressing the data gap in object recognition

### B. Leveraging WordNet
- Using WordNet's hierarchical structure of the English language
- Focus on concrete nouns suitable for visual representation

### C. ImageNet Creation Process
1. Collecting candidate images from the internet
   - Query expansion using synonyms
   - Utilizing multiple search engines
2. Manual curation and validation of images

### D. Challenges in Building ImageNet
- Scale of the workload
- Ensuring accuracy and relevance of images
- Managing biases in data collection
- Ethical considerations

## VI. The Impact of ImageNet

- Revolutionized the field of computer vision
- Set new standards for large-scale datasets in AI
- Enabled significant advancements in object recognition and scene understanding

## Conclusion
The development of computer vision and machine learning has been marked by significant milestones, from early algorithm-focused approaches to the data-driven revolution sparked by ImageNet. This shift has fundamentally changed how we approach AI problems and has led to remarkable advancements in the field.