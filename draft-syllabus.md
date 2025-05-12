# Introduction to Artificial Intelligence

Target Audience:
This course is designed for freshman or sophomore students who plan to major in Artificial Intelligence (AI). It serves as one of the introductory courses in the AI curriculum alongside ESE 2000.

Prerequisite:
CIS 1100

Modules and Topics:
1. Introduction to AI
   - What is AI?
   - AI in philosophy, science fiction, and real-world applications
   - Types of AI systems and agents
   - What is narrow AI? What is AGI?

2. Large Language Models (Part 1)
   - Introduction to language models
   - Neural language models and transformers
   - Capabilities and limitations of modern language models

3. Large Language Models (Part 2)
   - Few-shot learning and in-context learning
   - Fine-tuning and instruction tuning
   - Controlled generation and alignment with human values

4. Language Models (Part 3)
   - Multimodal language models
   - Retrieval-augmented language models
   - Code generation with language models
   - Reasoning Models


5. K-Nearest Neighbors, Vector Representations, and Embeddings
   - K-Nearest Neighbors algorithm
   - Vector representations and distance metrics
   - Document and word embeddings

6. Introduction to Robotic Agents and R2D2 Setup
   - Types of robots and their applications
   - R2D2 robot overview and setup
   - Basic R2D2 programming and sensor data

7. R2D2 Programming with LLMs  
   - Using LLMs for code generation
   - Prompt engineering for robotics
   - Debugging and optimizing LLM-generated code

8. Introduction to Search and Uninformed Search Strategies
   - Search problems and robot navigation
   - Breadth-First Search, Depth-First Search, Uniform-Cost Search
   - Iterative Deepening Search

9. Informed Search Strategies
   - Heuristics and Best-First Search
   - Greedy Best-First Search and A* algorithm
   - Designing heuristics for robot navigation

10. Classical Planning and Logic-Based Representations
    - Classical planning and STRIPS representation
    - Propositional and first-order logic
    - Knowledge bases and inference

11. TBD Possibly: Markov Decision Processes (MDPs) and Reasoning Under Uncertainty
    - Introduction to MDPs and stochastic environments
    - Solving MDPs with value iteration and policy iteration
    - Partially Observable MDPs and applications

12. TBD Possibly: Reinforcement Learning
    - Foundations of reinforcement learning
    - Model-free prediction and control
    - Advanced RL techniques and applications

13. AI Ethics and Societal Impacts
    - Key ethical principles in AI
    - Bias, fairness, and transparency in AI systems
    - Societal impacts of AI and responsible development


Foundational Concepts (and were you can learn more):
1. AI fundamentals and terminology (CIS 5210: Introduction to Artificial Intelligence)
2. Large language models and their applications (CIS 5300: Natural Language Processing)
3. Vector representations and embeddings (CIS 5200: Machine Learning)
4. Robotic agents and programming (MEAM 5200: Robotics)
5. Search algorithms and heuristics (CIS 3200: Algorithms)
6. Classical planning and logic (CIS 6250: Computational Learning Theory)
7. Reasoning under uncertainty with MDPs (ESE 6800: Foundations of Reinforcement Learning)
8. Reinforcement learning (ESE 5460: Principles of Deep Learning)
9. AI ethics and societal impacts (CIS 4230: Ethical Algorithm Design; LAWM 5060: Machine Learning: Technology Law)

Relationship to ESE 2000:
This course is designed to complement ESE 2000 by focusing on different aspects of AI. While ESE 2000 covers topics such as machine learning, neural networks, and dynamical systems, this course delves into language models, robotic agents, search algorithms, planning, and reinforcement learning. The two courses together provide students with a comprehensive introduction to the field of AI, preparing them for more advanced courses in the AI curriculum.

---

## Module 1: Introduction to AI
### Lecture 1:
1. What is Artificial Intelligence?

2. AI in Philosophy 
   - **Turing Test and the imitation game**: The Turing Test, proposed by Alan Turing in 1950, is a thought experiment designed to assess whether a machine can exhibit intelligent behavior indistinguishable from that of a human.
   - **Chinese Room thought experiment and the mind-body problem**: The Chinese Room argument, put forth by philosopher John Searle, challenges the notion that a machine can truly understand language or possess genuine intelligence.

3. AI in Science Fiction 
   - **Portrayals of AI in film, television, and literature**: AI has been a popular theme in science fiction for decades, with iconic examples such as HAL 9000 from "2001: A Space Odyssey", the Terminator, the replicants from "Blade Runner", and the parasocial relationship in "Her"
   - **Influence of science fiction on AI research and public perception**: Science fiction has both inspired and shaped AI research, while also influencing public perceptions and expectations of the technology.
   - **Examining the feasibility and implications of fictional AI scenarios**: While many fictional AI scenarios are highly speculative or exaggerated, they can nonetheless provide valuable thought experiments for exploring the potential consequences and challenges of advanced AI systems.

### Lecture 2:
   
5. Intelligent Agents and Rationality (45 minutes)
   - **Agents, environments, and tasks**: An agent is an autonomous entity that perceives its environment through sensors and acts upon it via actuators to achieve specific goals or maximize utility.
   - **Rationality: PEAS (Performance, Environment, Actuators, Sensors)**: A rational agent is one that acts to maximize its expected utility given its current knowledge and perceptual inputs. The PEAS framework provides a way to characterize agents in terms of their performance measure, environment, actuators, and sensors.
   - **Maximizing expected utility and bounded rationality**: In practice, agents often operate under resource constraints and imperfect information, leading to bounded rationality and satisficing (choosing actions that are "good enough" rather than optimal).

### Recitation:
- Discuss the philosophical implications of mind-body dualism and what it means for AI
- Analyze portrayals of AI in science fiction works
- Identify types of AI systems and agents in real-world applications
- Formulate PEAS descriptions for various AI tasks

### Homework:
- Write a short essay analyzing your favorite AI character from films or literature, and PEAS description for an AI agent
- Discuss whether the Turing Test is sufficient for evaluating intelligence 


### Learning Objectives:
- Understand the fundamental concepts, terminology, and applications of AI
- Recognize the historical context and philosophical implications of AI development
- Analyze the influence of science fiction on AI research and public perception
- Differentiate between types of AI systems and agents, such as reactive vs. deliberative and narrow vs. general AI
- Apply the PEAS framework to characterize and design AI agents for specific tasks and environments

## Module 2: Large Language Models (Part 1)
### Lecture 1:
1. Introduction to Language Models (30 minutes)
   - **Brief history of language modeling**: Language modeling has evolved from early statistical approaches, such as n-grams and hidden Markov models, to more recent neural network-based models like recurrent neural networks and transformers.
   - **Applications of language models in AI**: Language models are used in a wide range of AI applications, including machine translation, text generation, sentiment analysis, and question answering.
   - **Key concepts: n-grams, perplexity, smoothing**: N-grams are sequences of n words used to predict the next word in a sequence. Perplexity is a measure of how well a language model predicts a given text. Smoothing techniques, such as Laplace smoothing and Kneser-Ney smoothing, are used to handle unseen or rare word sequences.

2. Neural Language Models (60 minutes)
   - **Feedforward and recurrent neural networks for language modeling**: Feedforward neural networks, such as the continuous bag-of-words (CBOW) and skip-gram models, learn word embeddings from text data. Recurrent neural networks, such as long short-term memory (LSTM) and gated recurrent units (GRU), can model long-range dependencies in text sequences.
   - **Transformers and attention mechanisms**: Transformers, introduced in the "Attention is All You Need" paper, use self-attention mechanisms to model global dependencies in text sequences and have become the state-of-the-art architecture for many natural language processing tasks.
   - **Pre-training and fine-tuning of language models**: Pre-training language models on large-scale unsupervised text data, such as Wikipedia and web crawl data, has been shown to improve performance on downstream tasks through transfer learning. Fine-tuning involves adapting a pre-trained model to a specific task or domain using a smaller labeled dataset.

### Lecture 2:
3. Capabilities of Modern Language Models (45 minutes)
   - **Open-ended conversation and question answering**: Large language models, such as GPT-3 and ChatGPT, have demonstrated impressive capabilities in open-ended conversation and question answering, generating human-like responses to a wide range of prompts and queries.
   - **Text generation, summarization, and translation**: Language models can be used to generate coherent and fluent text, summarize long documents, and translate between languages with high quality.
   - **Knowledge extraction and commonsense reasoning**: Recent language models have shown the ability to extract factual knowledge from text and perform commonsense reasoning tasks, such as answering questions that require real-world knowledge and inference.

4. Limitations and Challenges of Language Models (45 minutes)
   - **Hallucination and inconsistency**: Language models can sometimes generate false or inconsistent information, a phenomenon known as hallucination. This can be problematic in applications where factual accuracy is crucial, such as news generation or medical advice.
   - **Bias and fairness concerns**: Language models can inherit and amplify biases present in their training data, leading to unfair or discriminatory outputs. Addressing bias and ensuring fairness in language models is an active area of research and an important ethical consideration.
   - **Computational complexity and environmental impact**: Training large language models requires significant computational resources and energy consumption, raising concerns about the environmental impact and accessibility of these technologies.

### Recitation:
- Experiment with pre-trained language models and compare their outputs
- Discuss the strengths and weaknesses of language models for various tasks
- Analyze the ethical implications of deploying large language models in real-world applications

### Homework:
- Fine-tune a pre-trained language model on a specific task (e.g., sentiment analysis)
- Compare the perplexity of different language models on a given dataset
- Write a report on the potential risks and benefits of large language models in society

### Learning Objectives:
- Understand the fundamentals of language modeling, including key concepts such as n-grams, perplexity, and smoothing
- Recognize the differences between feedforward, recurrent, and transformer-based neural language models
- Identify the capabilities and limitations of modern large language models, such as GPT-3 and ChatGPT
- Evaluate the ethical implications and potential risks of deploying language models in real-world applications
- Apply fine-tuning and transfer learning techniques to adapt pre-trained language models to specific tasks and domains

## Module 3: Large Language Models (Part 2)
### Lecture 1:
1. Few-Shot Learning in Language Models (45 minutes)
   - **In-context learning and task-specific prompting**: Few-shot learning in language models involves providing task-specific examples or instructions within the input prompt, allowing the model to adapt to new tasks without explicit fine-tuning.
   - **Chain-of-thought prompting and multi-step reasoning**: Chain-of-thought prompting encourages language models to generate step-by-step explanations and intermediate reasoning steps, which can improve performance on complex multi-step tasks.
   - **Applications and limitations of few-shot learning**: Few-shot learning enables language models to perform a wide range of tasks with minimal task-specific data, but the performance may be sensitive to the choice of prompts and examples, and the model may struggle with out-of-distribution or edge cases.

2. Fine-Tuning and Instruction Tuning (45 minutes)
   - **Adapting pre-trained models to specific tasks**: Fine-tuning involves training a pre-trained language model on a smaller task-specific dataset, updating the model parameters to specialize in the target task while leveraging the general language knowledge from pre-training.
   - **Instruction tuning for general-purpose language models**: Instruction tuning involves training language models on a diverse set of instructions and examples, enabling them to follow natural language instructions and perform a wide range of tasks without task-specific fine-tuning.
   - **Techniques for efficient fine-tuning (e.g., adapter layers, LoRA)**: Adapter layers and low-rank adaptation (LoRA) are techniques for efficiently fine-tuning large language models by updating only a small number of parameters, reducing the computational cost and storage requirements compared to full fine-tuning.

### Lecture 2:
3. Controlled Generation and Alignment (45 minutes)
   - **Challenges of open-ended generation (e.g., toxicity, factual errors)**: Open-ended language generation can sometimes produce harmful, biased, or factually incorrect outputs, posing risks in real-world applications.
   - **Techniques for controlling language model outputs**: Techniques such as conditioning, filtering, and guided decoding can be used to control the style, content, and attributes of language model outputs, helping to mitigate the risks of open-ended generation.
   - **Aligning language models with human values and preferences**: Value alignment involves training language models to generate outputs that are consistent with human values, preferences, and social norms, using techniques such as reinforcement learning from human feedback (RLHF) and constrained optimization.
   - **Reinforcement learning from human feedback (RLHF)**: RLHF involves training language models using human feedback as a reward signal, encouraging the model to generate outputs that are preferred by human users or aligned with specific goals and values.

4. Scaling Laws and Emerging Capabilities (45 minutes)
   - **Empirical scaling laws for language model performance**: Scaling laws describe the relationship between language model size, training data, and performance on downstream tasks, providing insights into the trade-offs and diminishing returns of increasing model scale.
   - **Extrapolating the capabilities of future language models**: Based on current scaling trends and empirical observations, researchers can make informed predictions about the potential capabilities and limitations of future language models as they continue to increase in size and complexity.
   - **Potential impacts on AI safety, alignment, and governance**: As language models become more powerful and capable, it is crucial to consider the implications for AI safety, value alignment, and governance, ensuring that these technologies are developed and deployed responsibly and beneficially.

### Recitation:
- Practice few-shot learning with different prompting strategies
- Compare the performance of fine-tuned vs. instruction-tuned models
- Discuss the challenges and importance of aligning language models with human values

### Homework:
- Design a prompt for a specific task and evaluate the model's performance
- Fine-tune a language model on a new dataset and compare to few-shot learning
- Write an opinion piece on the potential long-term impacts of scaling up language models

### Learning Objectives:
- Understand the principles and techniques of few-shot learning, such as in-context learning and chain-of-thought prompting
- Differentiate between fine-tuning and instruction tuning for adapting language models to specific tasks and domains
- Recognize the challenges and techniques for controlling language model outputs and aligning them with human values and preferences
- Analyze the scaling laws and potential future capabilities of language models, and their implications for AI safety and governance
- Apply few-shot learning, fine-tuning, and controlled generation techniques to solve practical language tasks and evaluate their performance

## Module 4: Language Models (Part 3)
### Lecture 1:
1. Multimodal Language Models (45 minutes)
   - **Integrating language with vision, speech, and other modalities**: Multimodal language models aim to learn joint representations and cross-modal interactions between language and other data modalities, such as images, speech, and video.
   - **Architectures for multimodal learning (e.g., CLIP, DALL-E, Whisper)**: Recent architectures such as CLIP (Contrastive Language-Image Pre-training), DALL-E (Deep Autoregressive Language model for Image Generation), and Whisper (Speech Recognition with Large-Scale Pre-training) have demonstrated impressive capabilities in multimodal learning and generation.
   - **Applications in image captioning, visual question answering, and speech recognition**: Multimodal language models have been successfully applied to a range of tasks that require understanding and generating language in the context of visual or auditory input, such as image captioning, visual question answering, and speech recognition.


### Lecture 2:
2. Retrieval-Augmented Language Models (45 minutes)
   - **Limitations of purely generative models**: Purely generative language models may struggle with tasks that require accurate factual knowledge, as they rely solely on the information captured in their parameters during pre-training.
   - **Retrieving relevant information from external knowledge bases**: Retrieval-augmented language models overcome this limitation by incorporating an external knowledge retrieval component, which can search and extract relevant information from large-scale knowledge bases, such as Wikipedia or domain-specific corpora.
   - **Architectures for retrieval-augmented generation (e.g., RAG, REALM)**: Architectures such as RAG (Retrieval-Augmented Generation) and REALM (Retrieval-Augmented Language Model Pre-training) have been proposed to integrate knowledge retrieval and language generation, enabling models to generate more accurate and informative outputs.


### Recitation:
- Experiment with multimodal language models on various tasks
- Discuss the benefits and challenges of retrieval-augmented generation

### Homework:
- Fine-tune a language model for code generation on a specific programming language
- Implement a retrieval-augmented language model and compare to purely generative models

### Learning Objectives:
- Understand the principles and architectures of multimodal language models, and their applications in tasks such as image captioning, visual question answering, and speech recognition
- Recognize the limitations of purely generative models and the benefits of retrieval-augmented language models for incorporating external knowledge


## Module 5: K-Nearest Neighbors, Vector Representations, and Embeddings 

### Lecture 1:
1. Introduction to K-Nearest Neighbors (KNN) (30 minutes)
   - Intuition behind KNN: classifying based on similarity 
   - KNN algorithm: finding the k nearest neighbors and majority voting
   - Choosing the value of k and its impact on classification
   - Strengths and limitations of KNN

2. Vector Representations and Distance Metrics (60 minutes) 
   - Representing data as vectors in a high-dimensional space
   - Euclidean distance and its properties
   - Cosine similarity and its application in high-dimensional spaces
   - Other distance metrics: Manhattan, Minkowski, Mahalanobis
   - Curse of dimensionality and its impact on KNN

3. Linear Algebra Fundamentals for KNN (30 minutes)
   - Vectors, vector operations, and vector spaces
   - Dot product, vector norms, and unit vectors  
   - Matrices, matrix operations, and matrix properties
   - Eigenvalues, eigenvectors, and their significance

### Lecture 2:  
4. Clustering with KNN (45 minutes)
   - Unsupervised learning and clustering overview
   - K-means clustering algorithm and its relationship to KNN
   - Initializing centroids and assigning data points to clusters
   - Updating centroids and convergence criteria
   - Evaluating clustering quality: silhouette score, elbow method

5. Document and Word Embeddings (45 minutes)
   - Representing text data as vectors: bag-of-words and TF-IDF
   - Word embeddings: capturing semantic relationships in vector space
   - Popular word embedding models: Word2Vec, GloVe, FastText
   - Document embeddings: combining word embeddings for document representation
   - Applications of embeddings in text classification and clustering

6. Applying KNN and Embeddings in Practice (30 minutes)
   - Preprocessing and feature scaling for KNN
   - Handling categorical variables and missing data
   - Using KNN for recommendation systems and anomaly detection
   - Visualizing and interpreting word and document embeddings
   - Limitations and considerations when using KNN and embeddings

### Recitation:
- Implement KNN from scratch and experiment with different k values
- Visualize the impact of distance metrics on KNN classification boundaries
- Apply k-means clustering to a real-world dataset and interpret the results
- Train and visualize word embeddings using a small text corpus

### Homework:
- Implement a KNN-based recommendation system for a given dataset
- Evaluate the performance of KNN with different distance metrics and k values
- Train and compare different word embedding models on a text classification task
- Use clustering to analyze and summarize a collection of documents

### Learning Objectives: 
- Understand the intuition and mechanics of the KNN algorithm
- Represent data as vectors and choose appropriate distance metrics
- Apply linear algebra concepts to KNN and vector representations
- Perform clustering using the k-means algorithm and evaluate clustering quality  
- Utilize document and word embeddings for text classification and clustering
- Implement KNN and embeddings in practice, considering their strengths and limitations



## Module 6: Introduction to Robotic Agents and R2D2 Setup
### Lecture 1:
1. Introduction to Robotic Agents (30 minutes)
   - **Definition and characteristics of robotic agents**: Discuss what constitutes a robotic agent, emphasizing autonomy, sensing, and actuation.
   - **Types of robots and their applications**: Overview of various robot types (e.g., industrial, service, social) and their real-world applications.
   - **Relating robots to the PEAS framework**: Revisit the Performance, Environment, Actuators, Sensors (PEAS) framework and apply it to robotic systems.

2. R2D2 Robot Overview (30 minutes)
   - **Introduction to the R2D2 platform**: Discuss the features, capabilities, and limitations of the R2D2 robots used in the course.
   - **R2D2's sensors and actuators**: Detailed explanation of the robot's input (sensors) and output (actuators) mechanisms.
   - **Comparison with other educational robotics platforms**: Brief comparison with other platforms to highlight R2D2's unique features.

3. Setting up the R2D2 Programming Environment (60 minutes)
   - **Hardware setup and safety considerations**: Guide students through the physical setup of R2D2 robots, emphasizing safety procedures.
   - **Software installation and configuration**: Walk through the process of installing necessary software, drivers, and development environments.
   - **Connectivity and communication protocols**: Explain how to establish and maintain a connection between the programming environment and the R2D2 robot.

### Lecture 2:
4. Basic R2D2 Programming (45 minutes)
   - **Introduction to R2D2's programming interface**: Overview of the programming interface and available commands.
   - **Writing simple movement commands**: Demonstrate how to program basic movements (forward, backward, turn).
   - **Controlling lights and sounds**: Show how to manipulate R2D2's built-in lights and speakers.

5. Sensor Data and Feedback (45 minutes)
   - **Reading and interpreting sensor data**: Explain how to access and interpret data from R2D2's various sensors.
   - **Implementing basic feedback loops**: Demonstrate how to use sensor data to influence robot behavior.
   - **Simple obstacle avoidance**: Walk through a basic obstacle avoidance program using sensor inputs.

6. Debugging and Troubleshooting (30 minutes)
   - **Common issues and their solutions**: Discuss frequent problems encountered when working with R2D2 and how to resolve them.
   - **Debugging techniques for robotics**: Introduce methods for identifying and fixing issues in robot programs.
   - **Best practices for robotics programming**: Share tips and tricks for efficient and effective robot programming.

### Recitation:
- Hands-on setup of R2D2 robots and programming environments
- Practice writing and running basic R2D2 programs
- Troubleshoot common setup and programming issues

### Homework:
- Complete the R2D2 setup and run a series of test programs to ensure proper functionality
- Write a program that demonstrates basic movement, light/sound control, and sensor reading
- Analyze your R2D2 robot using the PEAS framework and submit a short report

### Learning Objectives:
- Understand the concept of robotic agents and their relation to the PEAS framework
- Set up and configure R2D2 robots for programming
- Write basic programs to control R2D2's movement, lights, and sounds
- Read and interpret sensor data from R2D2
- Troubleshoot common issues in robotics programming

## Module 7:  R2D2 Programming with LLMs
### Lecture 1:
1. Introduction to LLMs for Code Generation (30 minutes)
   - **Overview of language models for code generation**: Discuss how LLMs can be used to generate code from natural language descriptions.
   - **Popular LLMs for code generation (e.g., GPT-3, Codex)**: Introduce widely-used language models capable of code generation.
   - **Benefits and limitations of LLM-based code generation**: Explore the advantages and potential drawbacks of using LLMs for robotics programming.

2. Setting up LLMs for R2D2 Programming (45 minutes)
   - **Choosing and accessing an appropriate LLM**: Guide students on selecting and gaining access to a suitable LLM for the course.
   - **Integrating LLMs with the R2D2 programming environment**: Demonstrate how to connect the chosen LLM with the existing R2D2 setup.
   - **Testing basic LLM-generated code for R2D2**: Show examples of simple R2D2 commands generated by LLMs.

3. Prompt Engineering for Robotics (45 minutes)
   - **Principles of effective prompt design**: Discuss strategies for crafting prompts that yield useful code for R2D2.
   - **Domain-specific language for R2D2 tasks**: Introduce a standardized way of describing R2D2 tasks for consistent LLM output.
   - **Handling ambiguity and clarifications**: Explore techniques for refining prompts and managing unclear LLM responses.

### Lecture 2:
4. Advanced R2D2 Programming with LLMs (60 minutes)
   - **Generating complex movement sequences**: Use LLMs to create more sophisticated movement patterns for R2D2.
   - **Implementing sensor-based behaviors**: Demonstrate how to use LLMs to generate code for sensor-driven actions.
   - **Creating interactive behaviors**: Show how to program R2D2 to respond to user input or environmental cues using LLM-generated code.

5. Debugging and Optimizing LLM-generated Code (45 minutes)
   - **Common issues with LLM-generated code**: Discuss typical problems encountered in LLM-generated robotics code.
   - **Techniques for debugging LLM output**: Introduce methods for identifying and correcting errors in generated code.
   - **Iterative refinement of LLM-generated programs**: Demonstrate how to incrementally improve LLM outputs for better performance.

6. Ethical Considerations and Future Directions (15 minutes)
   - **Ethical implications of Autonomous Weapons Systems

### Recitation:
- Practice generating R2D2 code using LLMs with various prompts
- Debug and optimize LLM-generated code for specific R2D2 tasks
- Discuss the implications of using AI for robotics programming

### Homework:
- Use an LLM to generate a program that makes R2D2 navigate a simple maze
- Create a set of prompts that generate code for a specific R2D2 behavior (e.g., following a line, dancing to music)
- Write a short essay on the potential impact of LLM-based code generation on the future of robotics

### Learning Objectives:
- Understand the capabilities and limitations of LLMs for robotics code generation
- Set up and use LLMs in conjunction with the R2D2 programming environment
- Design effective prompts for generating R2D2 code using LLMs
- Debug and optimize LLM-generated code for R2D2 tasks
- Critically evaluate the ethical implications and future directions of AI-assisted robotics programming




## Module 8: Introduction to Search and Uninformed Search Strategies
### Lecture 1: Introduction to Search Problems and Robot Navigation
1. Introduction to Search Problems (30 minutes)
   - **Real-world examples: robot navigation, route planning, puzzle solving**: Introduce search problems through relatable examples, emphasizing robot navigation as a central theme.
   - **Components of a search problem: initial state, actions, goal test, path cost**: Explain these components using a simple robot navigation scenario in a grid-based environment.
   - **Visualizing search problems: state space graphs and search trees**: Use simple diagrams to illustrate how robot movements can be represented as graphs and trees.

2. Robot Navigation Basics (30 minutes)
   - **Types of robots and their navigation challenges**: Briefly discuss different types of robots (e.g., wheeled, legged, flying) and their unique navigation challenges.
   - **Sensors and actuators in robot navigation**: Introduce basic concepts of how robots perceive their environment and move.
   - **Simple grid-based world representation**: Explain how to represent a robot's environment as a 2D grid for simplicity in search problems.

3. Breadth-First Search (BFS) (60 minutes)
   - **Algorithm explanation with robot navigation example**: Describe BFS using a robot trying to find the shortest path in a simple maze.
   - **Implementation: using queues in Python**: Provide a basic Python implementation of BFS for a grid-based robot navigation problem.
   - **Properties: completeness, optimality for unweighted graphs**: Explain these properties in the context of a robot finding the shortest path in steps.
   - **Visualization of BFS exploration**: Use animations or step-by-step diagrams to show how BFS explores a grid-based environment.

### Lecture 2: More Uninformed Search Strategies
4. Depth-First Search (DFS) (45 minutes)
   - **Algorithm explanation with robot navigation example**: Describe DFS using a robot exploring a maze with multiple dead ends.
   - **Implementation: using stacks or recursion in Python**: Provide a basic Python implementation of DFS for grid-based navigation.
   - **Properties: completeness for finite spaces, non-optimality**: Explain these properties using the robot maze example.
   - **Comparison with BFS: memory usage and exploration pattern**: Visualize the difference in how DFS and BFS explore a maze.

5. Uniform-Cost Search (UCS) (45 minutes)
   - **Introducing weighted graphs for robot navigation**: Extend the grid world to include different terrain costs (e.g., flat ground, hills, obstacles).
   - **Algorithm explanation with weighted navigation example**: Describe UCS using a robot finding the least-cost path in a terrain with varying difficulties.
   - **Implementation: using priority queues in Python**: Provide a basic Python implementation of UCS for weighted grid navigation.
   - **Properties: optimality for non-negative edge costs**: Explain this property in the context of finding the easiest path for the robot.

6. Iterative Deepening Search (30 minutes)
   - **Motivation: combining benefits of BFS and DFS**: Explain the need for a space-efficient but complete search algorithm.
   - **Algorithm explanation with robot exploration example**: Describe IDS using a robot exploring a maze with increasing depth limits.
   - **Properties: completeness, optimality, space efficiency**: Discuss these properties in relation to BFS and DFS.

### Recitation:
- Implement and visualize BFS and DFS for a simple grid-based robot navigation problem
- Compare the paths found by BFS, DFS, and UCS in different grid environments
- Discuss real-world applications of search algorithms in robotics and technology

### Homework:
- Implement a simple robot navigation simulator using Python and Pygame (or a similar library)
- Apply BFS, DFS, and UCS to find paths in various grid-based environments
- Analyze and compare the performance of different search algorithms in terms of path length, number of explored nodes, and execution time

### Learning Objectives:
- Understand the fundamental concepts of search problems and their relevance to robot navigation
- Implement and analyze basic uninformed search algorithms (BFS, DFS, UCS, IDS)
- Visualize and compare the behavior of different search algorithms in grid-based environments
- Relate search algorithms to real-world robot navigation challenges

## Module 9: Informed Search Strategies
### Lecture 1: Introduction to Heuristics and Best-First Search
1. Introduction to Informed Search (30 minutes)
   - **Limitations of uninformed search in complex environments**: Discuss scenarios where uninformed search becomes inefficient for robot navigation.
   - **Concept of heuristics: estimating distance to goal**: Introduce heuristics using intuitive examples, like estimating straight-line distance to a goal.
   - **Robot sensors and heuristics**: Relate heuristics to how robots might estimate distances using sensors.

2. Greedy Best-First Search (45 minutes)
   - **Algorithm explanation with robot navigation example**: Describe greedy best-first search using a robot that always moves towards the direction that seems closest to the goal.
   - **Implementation: using priority queues with heuristic values**: Provide a Python implementation for greedy search in grid-based navigation.
   - **Properties: completeness, non-optimality**: Explain these properties using examples where the greedy approach succeeds and fails.
   - **Visualization of greedy search exploration**: Use animations to show how greedy search explores a grid environment differently from uninformed strategies.

3. A* Search Algorithm (45 minutes)
   - **Combining UCS and Greedy: balancing path cost and heuristic**: Introduce A* as a way to consider both the cost so far and the estimated cost to the goal.
   - **Algorithm explanation with robot navigation example**: Describe A* using a robot finding an efficient path through varied terrain.
   - **Implementation: f(n) = g(n) + h(n) in Python**: Provide a basic Python implementation of A* for grid-based navigation.
   - **Properties: completeness, optimality with admissible heuristics**: Explain these properties in the context of robot navigation, introducing the concept of admissibility.

### Lecture 2: Heuristics and Advanced Topics
4. Designing Heuristics for Robot Navigation (45 minutes)
   - **Manhattan distance for grid worlds**: Explain how to calculate and use Manhattan distance as a heuristic.
   - **Euclidean distance for continuous spaces**: Introduce Euclidean distance for more realistic robot environments.
   - **Admissible and consistent heuristics**: Explain these concepts using simple robot navigation examples.
   - **Custom heuristics for complex environments**: Discuss how to design heuristics that consider obstacles, terrain types, or multi-goal scenarios.

5. Weighted A* and Trade-offs (30 minutes)
   - **Balancing optimality and search speed**: Introduce the concept of weighted A* to find solutions faster at the cost of optimality.
   - **Implementing and experimenting with different weights**: Show how to modify the A* implementation to incorporate weights.
   - **Visualization of the effect of different weights**: Use animations to demonstrate how changing weights affects the search process.

6. Real-world Applications and Challenges (45 minutes)
   - **Path planning for autonomous vehicles**: Discuss how search algorithms are used in self-driving cars and delivery robots.
   - **Navigation in dynamic environments**: Introduce the challenges of applying search algorithms when obstacles or goals may move.
   - **3D navigation for drones and flying robots**: Briefly discuss how search algorithms extend to three-dimensional spaces.
   - **Large-scale navigation and hierarchical search**: Introduce the concept of hierarchical search for navigating very large environments, like cities.

### Recitation:
- Implement and visualize greedy best-first search and A* for grid-based robot navigation
- Experiment with different heuristics and weights in A* search
- Discuss and brainstorm real-world scenarios where informed search algorithms are crucial

### Homework:
- Enhance the robot navigation simulator to support informed search algorithms
- Implement A* search with different heuristics (Manhattan, Euclidean, custom) and compare their performance
- Create a multi-goal pathfinding scenario and solve it using a modified informed search algorithm
- Write a short report on a real-world application of informed search in robotics or AI

### Learning Objectives:
- Understand the concept of heuristics and their role in improving search efficiency
- Implement and analyze informed search algorithms (Greedy Best-First Search, A*)
- Design and evaluate different heuristics for robot navigation problems
- Appreciate the trade-offs between optimality and efficiency in informed search
- Relate informed search algorithms to real-world robot navigation and AI applications


## Module 11: Classical Planning and Logic-Based Representations
### Lecture 1: Introduction to Classical Planning
1. Overview of Classical Planning (30 minutes)
   - Definition and characteristics of classical planning problems
   - Real-world applications in robotics, logistics, and automation
   - Comparison with search problems: structured actions and goal states

2. STRIPS (Stanford Research Institute Problem Solver) Representation (30 minutes)
   - States, actions, and goals in STRIPS
   - Preconditions and effects of actions
   - Example: Robot navigation and manipulation tasks

3. Planning Algorithms (30 minutes)
   - Forward State-Space Search
   - Backward State-Space Search
   - Planning Graphs

### Lecture 2: Logic-Based Representations and Knowledge Bases
4. Propositional Logic for AI (30 minutes)
   - Syntax and semantics of propositional logic
   - Logical connectives and truth tables
   - Representing knowledge using propositional logic

5. First-Order Logic (FOL) (30 minutes)
   - Syntax and semantics of FOL
   - Quantifiers, variables, and predicates
   - Representing complex knowledge and relationships

6. Knowledge Bases and Inference (30 minutes)
   - Building and maintaining knowledge bases
   - Inference rules: Modus Ponens, Resolution
   - Introduction to automated theorem proving

### Recitation:
- Implement a simple STRIPS planner for a robot navigation task
- Practice translating natural language statements into propositional and first-order logic

### Homework:
- Develop a planning system for a simple household robot that can perform tasks like cleaning and organizing
- Create a knowledge base using first-order logic to represent and reason about a chosen domain (e.g., a university course system)

### Learning Objectives:
- Understand the principles of classical planning and its applications in AI and robotics
- Represent knowledge using propositional and first-order logic
- Implement basic planning algorithms and logic-based inference systems

### Future Class Connections:
- Advanced Planning Techniques (CIS 5210: Artificial Intelligence)
- Knowledge Representation and Reasoning (CIS 6250: Computational Learning Theory)

## Module 12: Markov Decision Processes (MDPs) and Reasoning Under Uncertainty
### Lecture 1: Introduction to MDPs
1. From Deterministic to Stochastic Environments (30 minutes)
   - Limitations of classical planning in real-world scenarios
   - Introduction to uncertainty in AI and robotics
   - The need for probabilistic reasoning

2. Markov Decision Processes (MDPs) (30 minutes)
   - Components of an MDP: states, actions, transitions, rewards
   - Markov property and its importance
   - Policies and value functions

3. Solving MDPs: Value Iteration (30 minutes)
   - Bellman equations
   - Value iteration algorithm
   - Convergence and optimality

### Lecture 2: Advanced MDP Concepts and Applications
4. Policy Iteration and Q-Learning (30 minutes)
   - Policy iteration algorithm
   - Introduction to Q-learning
   - Comparison of value iteration, policy iteration, and Q-learning

5. Partially Observable MDPs (POMDPs) (30 minutes)
   - Extending MDPs to partial observability
   - Belief states and belief updates
   - Applications in robotics and AI systems

6. Applications of MDPs in Robotics and AI (30 minutes)
   - Robot navigation under uncertainty
   - Decision-making in autonomous systems
   - Game AI and strategic planning

### Recitation:
- Implement value iteration for a simple grid-world navigation problem
- Experiment with different reward structures and their impact on optimal policies

### Homework:
- Develop an MDP-based decision-making system for a simulated robot in a stochastic environment
- Analyze and compare the performance of value iteration and policy iteration on various MDP problems

### Learning Objectives:
- Understand the concept of MDPs and their role in modeling sequential decision-making under uncertainty
- Implement and analyze basic MDP solution algorithms
- Apply MDP concepts to real-world AI and robotics problems

### Future Class Connections:
- Advanced Reinforcement Learning (ESE 6800: Foundations of Reinforcement Learning)
- Robot Decision Making (MEAM 5200: Robotics)

## Module 13: Reinforcement Learning
### Lecture 1: Foundations of Reinforcement Learning
1. Introduction to Reinforcement Learning (30 minutes)
   - RL framework: agent, environment, states, actions, rewards
   - Differences between RL, supervised learning, and unsupervised learning
   - Real-world applications in robotics, game AI, and control systems

2. Multi-armed Bandits and Exploration vs. Exploitation (30 minutes)
   - The multi-armed bandit problem
   - Exploration strategies: ε-greedy, softmax
   - Regret and optimal policies

3. Model-Free Prediction and Control (30 minutes)
   - Monte Carlo methods
   - Temporal Difference (TD) learning
   - SARSA and Q-learning algorithms

### Lecture 2: Advanced RL Techniques and Applications
4. Function Approximation in RL (30 minutes)
   - Limitations of tabular methods
   - Linear function approximation
   - Introduction to deep reinforcement learning

5. Policy Gradient Methods (30 minutes)
   - Policy-based vs. value-based methods
   - REINFORCE algorithm
   - Actor-Critic methods

6. RL in Robotics and AI Systems (30 minutes)
   - Applications in robot learning and control
   - RL for game playing (e.g., AlphaGo, OpenAI Five)
   - Challenges and future directions in RL

### Recitation:
- Implement and compare Q-learning and SARSA on a grid-world environment
- Experiment with different exploration strategies in the multi-armed bandit problem

### Homework:
- Develop an RL agent to learn to play a simple game (e.g., CartPole or MountainCar from OpenAI Gym)
- Implement a basic deep RL algorithm (e.g., DQN) and apply it to a more complex environment

### Learning Objectives:
- Understand the fundamental concepts and algorithms of reinforcement learning
- Implement and analyze basic RL algorithms
- Apply RL techniques to solve problems in robotics and AI systems

### Future Class Connections:
- Deep Reinforcement Learning (ESE 5460: Principles of Deep Learning)
- Advanced Topics in RL (ESE 6180: Learning for Dynamics and Control)



## Module 14: AI Ethics and Societal Impacts

### Lecture 1: Foundations of AI Ethics

1. Introduction to AI Ethics (30 minutes)
   - Defining ethics in the context of AI
   - Historical examples of ethical challenges in technology
   - The importance of ethical considerations in AI development and deployment

2. Key Ethical Principles in AI (30 minutes)
   - Beneficence and non-maleficence
   - Autonomy and informed consent
   - Justice and fairness
   - Transparency and explainability
   - Privacy and data protection

3. Bias and Fairness in AI Systems (30 minutes)
   - Types of bias: statistical, social, and cognitive
   - Sources of bias in AI: data, algorithms, and human factors
   - Fairness metrics and their limitations
   - Case studies: facial recognition, criminal justice risk assessment

### Lecture 2: Societal Impacts and Responsible AI Development

4. AI's Impact on Employment and the Economy (30 minutes)
   - Automation and job displacement
   - New job creation and the changing nature of work
   - Economic inequality and AI
   - Potential solutions: universal basic income, education reform

5. AI in Critical Systems (30 minutes)
   - Healthcare: diagnosis, treatment planning, and drug discovery
   - Autonomous vehicles and transportation systems
   - Financial systems and algorithmic trading
   - Military applications and autonomous weapons

6. Governance and Regulation of AI (30 minutes)
   - Current AI regulations and policies around the world
   - Challenges in regulating rapidly evolving technology
   - Balancing innovation and safety
   - The role of AI developers in shaping policy

### Recitation:
- Ethical decision-making exercises using AI case studies
- Group discussions on potential societal impacts of emerging AI technologies
- Analysis of a recent AI ethics controversy in the news

### Homework:
1. Ethical AI Design Project:
   - Students design an AI system for a real-world application, focusing on incorporating ethical principles and mitigating potential negative societal impacts.
   - Deliverables include a project proposal, system design document, and a presentation addressing ethical considerations and societal impacts.

2. AI Ethics Policy Brief:
   - Students write a policy brief on an AI ethics topic of their choice (e.g., facial recognition regulation, AI in hiring practices, autonomous weapons).
   - The brief should include background information, stakeholder analysis, policy recommendations, and potential implementation challenges.

### Learning Objectives:
- Understand the fundamental ethical principles relevant to AI development and deployment
- Identify potential biases and fairness issues in AI systems
- Analyze the broader societal impacts of AI technologies
- Develop skills in ethical decision-making and responsible AI design
- Gain awareness of current and proposed AI regulations and governance frameworks

### Future Class Connections:
- CIS 4230: Ethical Algorithm Design (for deeper exploration of algorithmic fairness)
- LAWM 5060: Machine Learning: Technology Law (for legal aspects of AI ethics)
- CIS 7000: Trustworthy AI (for advanced topics in AI safety and reliability)

