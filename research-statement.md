---
title: Research Statement - Chris Callison-Burch
layout: default
active_tab: main_page 
keep_sidebar: false
publications:
-
   title: Moses&colon; Open source toolkit for statistical machine translation
   authors: Philipp Koehn, Hieu Hoang,  Alexandra Birch,  Chris Callison-burch,    Marcello Federico,  Nicola Bertoldi,   Brooke Cowan,  Wade Shen,  Christine Moran,  Richard Zens, Chris Dyer, Ondřej Bojar,  Alexandra Constantin,  and Evan Herbst
   venue: ACL
   type: conference
   year: 2007
   url: publications/moses-toolkit.pdf
   id: moses-toolkit
   abstract: We describe an open-source toolkit for statistical machine translation whose novel contributions are (a) support for linguistically motivated factors, (b) confusion network decoding, and (c) efficient data formats for translation models and language models. In addition to the SMT decoder, the toolkit also includes a wide variety of tools for training, tuning and applying the system to many translation tasks. 
   bibtex: |
      @InProceedings{koehn-EtAl:2007:PosterDemo,
         author    = {Koehn, Philipp  and  Hoang, Hieu  and  Birch, Alexandra  and  Callison-Burch, Chris  and  Federico, Marcello  and  Bertoldi, Nicola  and  Cowan, Brooke  and  Shen, Wade  and  Moran, Christine  and  Zens, Richard  and  Dyer, Chris  and  Bojar, Ondrej  and  Constantin, Alexandra  and  Herbst, Evan},
         title     = {Moses: Open Source Toolkit for Statistical Machine Translation},
         booktitle = {Proceedings of the 45th Annual Meeting of the Association for Computational Linguistics Companion Volume Proceedings of the Demo and Poster Sessions},
         month     = {June},
         year      = {2007},
         address   = {Prague, Czech Republic},
         publisher = {Association for Computational Linguistics},
         pages     = {177--180},
         url       = {http://www.aclweb.org/anthology/P07-2045}
       }
-
   title: Joshua&colon; An Open Source Toolkit for Parsing-based Machine Translation
   authors: Zhifei Li, Chris Callison-Burch, Chris Dyer, Juri Ganitkevitch, Sanjeev Khudanpur, Lane Schwartz, Wren Thornton, Jonathan Weese and Omar Zaidan
   venue: WMT
   type: workshop
   year: 2009
   url: publications/joshua-open-source-toolkit-for-statistical-machine-translation.pdf
   id: joshua-open-source-toolkit-for-statistical-machine-translation
   figures:
      -
         img: figures/joshua-open-source-toolkit-for-statistical-machine-translation/joshua-open-source-toolkit-for-statistical-machine-translation-table-1.jpg
         label: Table 1
         caption: The uncased BLEU scores on WMT-09 French-English Task. The test set consists of 2525 segments, each with one reference translation.
   abstract: We describe Joshua, an open source toolkit for statistical machine translation. Joshua implements all of the algorithms required for synchronous context free grammars (SCFGs)&colon; chart-parsing, ngram language model integration, beamand cube-pruning, and k-best extraction. The toolkit also implements suffix-array grammar extraction and minimum error rate training. It uses parallel and distributed computing techniques for scalability. We demonstrate that the toolkit achieves state of the art translation performance on the WMT09 French-English translation task. 
   bibtex: |
      @InProceedings{li-EtAl:2009:WMT1,
         author    = {Li, Zhifei  and  Callison-Burch, Chris  and  Dyer, Chris  and  Khudanpur, Sanjeev  and  Schwartz, Lane  and  Thornton, Wren  and  Weese, Jonathan  and  Zaidan, Omar},
         title     = {{Joshua}: An Open Source Toolkit for Parsing-Based Machine Translation},
         booktitle = {Proceedings of the Fourth Workshop on Statistical Machine Translation},
         month     = {March},
         year      = {2009},
         address   = {Athens, Greece},
         publisher = {Association for Computational Linguistics},
         pages     = {135--139},
         url       = {http://www.aclweb.org/anthology/W09-0424}
       }
-
   title: Joshua 2.0&colon; A Toolkit for Parsing-Based Machine Translationwith Syntax, Semirings, Discriminative Training and Other Goodies
   authors: Zhifei Li, Chris Callison-Burch, Chris Dyer, Juri Ganitkevitch, Ann Irvine, Lane Schwartz, Wren N. G. Thornton, Ziyuan Wang, Jonathan Weese and Omar F. Zaidan
   venue: WMT
   type: workshop
   year: 2010
   url: publications/joshua-2.0.pdf
   id: joshua-2
   abstract: We describe the progress we have made in the past year on Joshua (Li et al., 2009a), an open source toolkit for parsing-based machine translation. The new functionality includes&colon; support for translation grammars with a rich set of syntactic nonterminals, the ability for external modules to posit constraints on how spans in the input sentence should be translated, lattice parsing for dealing with input uncertainty, a semiring framework that provides a unified way of doing various dynamic programming calculations, variational decoding for approximating the intractable MAP decoding, hypergraph-based discriminative training for better feature engineering, a parallelized MERT module, document-level and tail-based MERT, visualization of the derivation trees, and a cleaner pipeline for MT experiments. 
   bibtex: |
      @InProceedings{li-EtAl:2010:WMT,
         author    = {Li, Zhifei  and  Callison-Burch, Chris  and  Dyer, Chris  and  Ganitkevitch, Juri  and  Irvine, Ann  and  Khudanpur, Sanjeev  and  Schwartz, Lane  and  Thornton, Wren  and  Wang, Ziyuan  and  Weese, Jonathan  and  Zaidan, Omar},
         title     = {Joshua 2.0 A Toolkit for Parsing-Based Machine Translation with Syntax, Semirings, Discriminative Training and Other Goodies},
         booktitle = {Proceedings of the Joint Fifth Workshop on Statistical Machine Translation and MetricsMATR},
         month     = {July},
         year      = {2010},
         address   = {Uppsala, Sweden},
         publisher = {Association for Computational Linguistics},
         pages     = {133--137},
         url       = {http://www.aclweb.org/anthology/W10-1718}
       }
-
   title: Joshua 3.0&colon; Syntax-based Machine Translation with the Thrax Grammar Extractor
   authors: Jonathan Weese, Juri Ganitkevitch, Chris Callison-Burch, Matt Post and Adam Lopez
   venue: WMT
   type: workshop
   year: 2011
   url: publications/joshua-3.0.pdf
   id: joshua-3
   figures:
      -
         img: figures/joshua-3.0/joshua-3.0-figure-1.jpg
         label: Figure 1
         caption: An aligned sentence pair.
      -
         img: figures/joshua-3.0/joshua-3.0-table-1.jpg
         label: Table 1
         caption: A subset of the Hiero and SAMT rules extracted from the sentence pair of Figure 1.
      -
         img: figures/joshua-3.0/joshua-3.0-table-2.jpg
         label: Table 2
         caption: Training data size after subsampling.
      -
         img: figures/joshua-3.0/joshua-3.0-table-3.jpg
         label: Table 3
         caption: Single-reference BLEU-4 scores.
      -
         img: figures/joshua-3.0/joshua-3.0-figure-2.jpg
         label: Figure 2
         caption: An SAMT derivation. The shaded terminal symbols are the lexicalized part of a rule with terminals and non-terminals. The unshaded terminals are directly dominated by a nonterminal symbol.
   abstract: We present progress on Joshua, an open source decoder for hierarchical and syntax-based machine translation. The main focus is describing Thrax, a flexible, open source synchronous context-free grammar extractor. Thrax extracts both hierarchical (Chiang, 2007) and syntax-augmented machine translation (Zollmann and Venugopal, 2006) grammars. It is built on Apache Hadoop for efficient distributed performance, and can easily be extended with support for new grammars, feature functions, and output formats. 
   bibtex: |
      @InProceedings{weese-EtAl:2011:WMT,
         author    = {Weese, Jonathan  and  Ganitkevitch, Juri  and  Callison-Burch, Chris  and  Post, Matt  and  Lopez, Adam},
         title     = {Joshua 3.0: Syntax-based Machine Translation with the Thrax Grammar Extractor},
         booktitle = {Proceedings of the Sixth Workshop on Statistical Machine Translation},
         month     = {July},
         year      = {2011},
         address   = {Edinburgh, Scotland},
         publisher = {Association for Computational Linguistics},
         pages     = {478--484},
         url       = {http://www.aclweb.org/anthology/W11-2160}
       }
-
   title: Joshua 4.0&colon; Packing, PRO, and Paraphrases
   authors: Juri Ganitkevitch, Yuan Cao, Jonathan Weese, Matt Post, and Chris Callison-Burch
   venue: WMT
   type: workshop
   year: 2012
   url: publications/joshua-4.0.pdf
   id: joshua-4
   figures:
      -
         img: figures/joshua-4.0/joshua-4.0-figure-1.jpg
         label: Figure 1
         caption: An illustration of our packed grammar data structures. The source sides of the grammar rules are stored in a packed trie. Each node may contain n children and the symbols linking to them, and m entries for rules that share the same source side. Each rule entry links to a node in the target-side trie, where the full target string can be retrieved by walking up the trie until the root is reached. The rule entries also contain a data block id, which identifies feature data attached to the rule. The features are encoded according to a type/quantization specification and stored as variable-length blocks of data in a byte buffer.
      -
         img: figures/joshua-4.0/joshua-4.0-table-1.jpg
         label: Table 1
         caption: Decoding-time memory use for the packed grammar versus the standard grammar format. Even without lossy quantization the packed grammar representation yields significant savings in memory consumption. Adding 8-bit quantization for the real- valued features in the grammar reduces even large syntactic grammars to a manageable size.
      -
         img: figures/joshua-4.0/joshua-4.0-figure-2.jpg
         label: Figure 2
         caption: A visualization of the loading and decoding speed on the WMT12 French-English development set contrasting the packed grammar representation with the standard format. Grammar loading for the packed grammar representation is substantially faster than that for the baseline setup. Even with a slightly slower decoding speed (note the difference in the slopes) the packed grammar finishes in less than half the time, compared to the standard format.
      -
         img: figures/joshua-4.0/joshua-4.0-figure-3.jpg
         label: Figure 3
         caption: Experimental results on the development and test sets. The x-axis is the number of iterations (up to 30) and the y-axis is the BLEU score. The three curves in each figure correspond to three classifiers. Upper row&colon; results trained using only dense features (10 features); Lower row&colon; results trained using dense+sparse features (1026 features). Left column&colon; development set (MT03); Middle column&colon; test set (MT04); Right column&colon; test set (MT05).
      -
         img: figures/joshua-4.0/joshua-4.0-table-2.jpg
         label: Table 2
         caption: Comparison between the results given by Z-MERT and J-PRO (trained with 10 features).
      -
         img: figures/joshua-4.0/joshua-4.0-table-3.jpg
         label: Table 3
         caption: Extraction times and grammar sizes for Hiero grammars using the Europarl and News Commentary training data for each listed language pair.
      -
         img: figures/joshua-4.0/joshua-4.0-table-4.jpg
         label: Table 4
         caption: Extraction times and grammar sizes for the SAMT grammars using the Europarl and News Commentary training data for each listed language pair.
      -
         img: figures/joshua-4.0/joshua-4.0-table-5.jpg
         label: Table 5
         caption: Large paraphrase grammars extracted from EuroParl data using Thrax. The sentence and word counts refer to the English side of the bitexts used.
   abstract: We present Joshua 4.0, the newest version of our open-source decoder for parsing-based statistical machine translation. The main contributions in this release are the introduction of a compact grammar representation based on packed tries, and the integration of our implementation of pairwise ranking optimization, J-PRO. We further present the extension of the Thrax SCFG grammar extractor to pivot-based extraction of syntactically informed sentential paraphrases. 
   bibtex: |
      @InProceedings{ganitkevitch-EtAl:2012:WMT,
         author    = {Ganitkevitch, Juri  and  Cao, Yuan  and  Weese, Jonathan  and  Post, Matt  and  Callison-Burch, Chris},
         title     = {Joshua 4.0: Packing, PRO, and Paraphrases},
         booktitle = {Proceedings of the Seventh Workshop on Statistical Machine Translation},
         month     = {June},
         year      = {2012},
         address   = {Montr{\'e}al, Canada},
         publisher = {Association for Computational Linguistics},
         pages     = {283--291},
         url = {http://cis.upenn.edu/~ccb/publications/joshua-4.0.pdf}
       }
-
   title: Joshua 5.0&colon; Sparser, better, faster, server
   authors: Matt Post, Juri Ganitkevitch, Luke Orland, Jonathan Weese, Yuan Cao, and Chris Callison-Burch
   venue: WMT
   type: workshop
   year: 2013
   url: publications/joshua-5.0.pdf
   id: joshua-5
   figures:
      -
         img: figures/joshua-5.0/joshua-5.0-figure-1.jpg
         label: Figure 1
         caption: End-to-end runtime as a function of the number of threads. Each data point is the minimum of at least fifteen different runs.
      -
         img: figures/joshua-5.0/joshua-5.0-figure-2.jpg
         label: Figure 2
         caption: Decoding time alone.
      -
         img: figures/joshua-5.0/joshua-5.0-figure-3.jpg
         label: Figure 3
         caption: Here, position-aware lexical and part-of-speech n-gram features, labeled dependency links, and features reflecting the phrase’s CCG-style label NP/NN are included in the context vector.
      -
         img: figures/joshua-5.0/joshua-5.0-table-1.jpg
         label: Table 1
         caption: Comparing Hadoop’s intermediate disk space use and extraction time on a selection of Europarl v.7 Hiero grammar extractions. Disk space was measured at its maximum, at the input of Thrax’s final grammar aggregation stage. Runtime was measured on our Hadoop cluster with a capacity of 52 mappers and 26 reducers. On average Thrax 2.0, bundled with Joshua 5.0, is up to 300% faster and more compact.
   abstract: We describe improvements made over the past year to Joshua, an open-source translation system for parsing-based machine translation. The main contributions this past year are significant improvements in both speed and usability of the grammar extraction and decoding steps. We have also rewritten the decoder to use a sparse feature representation, enabling training of large numbers of features with discriminative training methods. 
   bibtex: |
      @InProceedings{post-EtAl:2013:WMT,
         author    = {Post, Matt  and  Ganitkevitch, Juri  and  Orland, Luke  and  Weese, Jonathan  and  Cao, Yuan  and  Callison-Burch, Chris},
         title     = {Joshua 5.0: Sparser, Better, Faster, Server},
         booktitle = {Proceedings of the Eighth Workshop on Statistical Machine Translation},
         month     = {August},
         year      = {2013},
         address   = {Sofia, Bulgaria},
         publisher = {Association for Computational Linguistics},
         pages     = {206--212},
         url       = {http://www.aclweb.org/anthology/W13-2226}
       }
-
   title: Findings of the 2009 Workshop on Statistical Machine Translation
   authors: Chris Callison-Burch, Philipp Koehn, Christof Monz and  Josh Schroeder
   venue: WMT
   type: workshop
   year: 2009
   url: publications/findings-of-the-wmt09-shared-tasks.pdf
   id: findings-of-the-wmt09-shared-tasks
   figures:
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-figure-1.jpg
         label: Figure 1
         caption: Statistics for the training and test sets used in the translation task. The number of words is based on the provided tokenizer and the number of distinct words is the based on lowercased tokens.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-1.jpg
         label: Table 1
         caption: Participants in the shared translation task. Not all groups participated in all language pairs.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-2.jpg
         label: Table 2
         caption: Participants in the system combination task.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-3.jpg
         label: Table 3
         caption: The number of items that were judged for each task during the manual evaluation.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-figure-2.jpg
         label: Figure 2
         caption: This screenshot shows an annotator editing the output of a machine translation system.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-figure-3.jpg
         label: Figure 3
         caption: This screenshot shows an annotator judging the acceptability of edited translations.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-4.jpg
         label: Table 4
         caption: Inter- and intra-annotator agreement for the two types of manual evaluation
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-6.jpg
         label: Table 6
         caption: Official results for the WMT09 translation task, based on the human evaluation (ranking translations relative to each other)
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-5.jpg
         label: Table 5
         caption: A comparison between the best system combinations and the best individual systems. It was generally difficult to draw a statistically significant differences between the two groups, and between the combinations themselves.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-figure-6.jpg
         label: Figure 6
         caption: The percent of time that each system’s edited output was judged to be an acceptable translation. These numbers also include judgments of the system’s output when it was marked either incomprehensible or acceptable and left unedited. Note that the reference translation was edited alongside the system outputs. Error bars show one positive and one negative standard deviation for the systems in that language pair.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-7.jpg
         label: Table 7
         caption: The system-level correlation of the automatic evaluation metrics with the human judgments for translation into English.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-8.jpg
         label: Table 8
         caption: The system-level correlation of the automatic evaluation metrics with the human judgements for translation out of English.
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-9.jpg
         label: Table 9
         caption: The system-level correlation for automatic metrics ranking five English-Czech systems
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-10.jpg
         label: Table 10
         caption: Sentence-level consistency of the automatic metrics with human judgments for translations into English. Italicized numbers do not beat the random-choice baseline. (This table was corrected after publication.)
      -
         img: figures/findings-of-the-wmt09-shared-tasks/findings-of-the-wmt09-shared-tasks-table-11.jpg
         label: Table 11
         caption: Sentence-level consistency of the automatic metrics with human judgments for translations out of English. Italicized numbers do not beat the random-choice baseline. (This table was corrected after publication.)
   abstract: This paper presents the results of the WMT09 shared tasks, which included a translation task, a system combination task, and an evaluation task. We conducted a large-scale manual evaluation of 87 machine translation systems and 22 system combination entries. We used the ranking of these systems to measure how strongly automatic metrics correlate with human judgments of translation quality, for more than 20 metrics. We present a new evaluation technique whereby system output is edited and judged for correctness. 
   bibtex: |
      @InProceedings{callisonburch-EtAl:2009:WMT,
         author    = {Callison-Burch, Chris  and  Koehn, Philipp  and  Monz, Christof  and  Schroeder, Josh},
         title     = {Findings of the 2009 {W}orkshop on {S}tatistical {M}achine {T}ranslation},
         booktitle = {Proceedings of the Fourth Workshop on Statistical Machine Translation},
         month     = {March},
         year      = {2009},
         address   = {Athens, Greece},
         publisher = {Association for Computational Linguistics},
         pages     = {1--28},
         url       = {http://www.aclweb.org/anthology/W09-0401}
       }
              
---

# Research Statement


Most of human knowledge is encoded in natural language.  A longstanding goal of artificial intelligence has been to automate the understanding of natural language. Formulating an appropriate  representation for the meaning of language has proved problematic. Approaches that employ complex semantic representations, like first order predicate logic, are difficult or impossible to scale to cover the broad range of expressions used in real language.  I have proposed approaching natural language understanding by using pairs of English phrases as the basic unit of representation, and automatically labeling them with a small number of semantic relationships that allows a subset of automated reasoning to be applied.  This design decision allows us to scale to open domains and to implement data-driven algorithms for acquiring semantic knowledge about language.

My approach to language understanding is inspired by my past research in machine translation.
The advent of data-driven, statistical models has resulted in dramatically improved quality for machine translation.  Commercial systems like Google Translate, or state-of-the-art research software that I have helped develop (the Moses system ([Koehn et al, 2007](#moses-toolkit)) and the Joshua decoder ([Li et al, 2009](#joshua-open-source-toolkit-for-statistical-machine-translation), [Li et al, 2010](#joshua-2), [Weese et al, 2011](#joshua-3), [Ganitkevitch et al, 2012](#joshua-4), [Post et al, 2013](#joshua-5)) use pairs of English and foreign phrases as their underlying representation.  These phrase pairs are automatically acquired from a large volume of translated documents, and are treated as meaning-equivalent without having an explicit semantic representation.  Vast quantities of bilingual training data allow us to extract a huge number of phrase pairs and to estimate associated probabilities. I assembled the largest publicly available bilingual training data for statistical machine translation, consisting of 22 million sentence pairs with 1.5 billion French + English words ([Callison-Burch et al, 2009](findings-of-the-wmt09-shared-tasks)). This encompasses a huge range of language use from scientific abstracts to movie dialog slang, and thus allows the system to translate a wide variety of input sentences. 


\begin{wrapfigure}{r}{.35\linewidth}
\vspace{-.35cm}
    \includegraphics[width=\linewidth]{images/pivoting.pdf}
    \caption{The German {\it festgenommen} links the English phrase {\it thrown into jail} to its paraphrase  {\it imprisoned}.}\label{pivoting} 
\end{wrapfigure}
Currently, I have three areas of research.  My primary research focus is to automate the understanding of English via paraphrases. I adapt the data, representations, and algorithms from statistical machine translation to facilitate natural language understanding.  In addition, I have two other research directions.  One attempts to extend machine translation so that it may be applied to a wider range of languages by doing away with the necessity for bilingual parallel corpora.  Instead, my research focuses on learning translations from monolingual texts in two languages.  My third research focus is on using crowdsourcing to explore new areas of natural language processing.  (This crowdsourcing work has even extended beyond NLP and now includes social justice issues, including workers' rights and gun violence in the United States.)


## Natural Language Understanding via Paraphrasing


\begin{figure}
\begin{center}
    \includegraphics[width=.7\linewidth]{images/structural-transformations.pdf}
\end{center}
    \caption{We are able to automatically acquire a variety of meaning-preserving structural translations in English by pivoting over SCFG translation rules.}\label{structural-transformations} 
%\end{wrapfigure}
\end{figure}


I developed a method that extracts paraphrases from bilingual parallel corpora  by identifying equivalent English expressions using a shared foreign phrase.  This ensures that their meaning is similar.  Figure \ref{pivoting} illustrates the method \citep{Callison-Burch2007}.  {\it Thrown into jail} occurs many times in the training data, aligning with several different foreign phrases. Each of these may align with a variety of other English paraphrases. Thus, {\it thrown into jail} not only paraphrases as {\it imprisoned}, but also as {\it arrested, detained, incarcerated, jailed, locked up, taken into custody}, and {\it thrown into prison}. 
However, not all the paraphrases are uniformly good.  The baseline method also extracts candidate paraphrases that mean the same thing, but do not share the same syntactic category as the original phrase, such as {\it be thrown in prison, been thrown into jail, being arrested, in jail, in prison, put in prison for, were thrown into jail,} and {\it who are held in detention}. It is also prone to generating many bad paraphrases, such as {\it maltreated, thrown, cases, custody, arrest, owners,} and {\it protection}, because of noisy/inaccurate word alignments and other problems.  Separating good paraphrases from bad presents fascinating research challenges \citep{PavlickEtAl-2015:ACL:PPDB2.0}. 

\begin{wrapfigure}{r}{.35\linewidth}
\vspace{-.35cm}
    \includegraphics[width=\linewidth]{images/scfg-paraphrase-rule.pdf}
    \caption{We learn the English possessive rule by pivoting over SCFG translation rules.  }\label{scfg-paraphrase-rule} 
\end{wrapfigure}
I have extended the bilingual pivoting methodology to syntactic representations of translation rules.  This builds on my research group's work into adding syntactic information into statistical machine translation rules. We have adopted a synchronous context free grammar (SCFG) representation for our Joshua decoder, and we demonstrated that it is useful for translating between languages with different word orders like Urdu's subject-object-verb order and English's subject-verb-object order \citep{Baker-EtAl:2010:AMTA}.  Instead of pivoting over foreign phrases, we can pivot over foreign SCFG rules, as shown in Figure \ref{scfg-paraphrase-rule}.
This allows us to automatically acquire meaning-preserving syntactic transformations like the English possessive rule.  This rule is a general transformation that can apply to most noun phrases in English.  It allows us to recognize that {\it the laptop's screen} can be rewritten as {\it the screen of the laptop}.
 Figure \ref{structural-transformations} shows a variety of other meaning-preserving structural transformations that we learn in this way \citep{ganitkevitch-EtAl:2011:EMNLP}.  

We used my bilingual pivoting technique to create the paraphrase database, called PPDB for short \citep{ppdb}.   PPDB contains 8 million synonyms, 68 million phrasal paraphrases, and 94 million meaning-preserving syntactic transformations.  PPDB is freely available from our web site (\url{http://paraphrase.org/}).  It is a much larger resource than the manually-constructed WordNet resource that is heavily used in NLP research.  PPDB has made immediate impact and was widely adopted by other researchers.  It has been cited 88 times in the two years since its publication, and it was central to the research described in the NAACL 2015 best paper \citep{NAACL2015-best-paper} on retrofitting word vectors to semantic lexicons.  The NAACL paper shows that PPDB has enormous potential for improving deep learning of word embeddings.  I plan to explore this connection further. 

Over the past year we made several advances to PPDB that improve its usefulness for understanding natural language:
\begin{enumerate}
* {Semantics}:  In \citep{Pavlick-EtAl:2015:ACL}, we add an interpretable semantics to PPDB. The relationship between the phrase pairs in the database had been defined as approximately equivalent.  Our new research allows these pairs to be encoded with more nuanced semantic relations, including directed entailment (little girl/girl) and exclusion (nobody/someone). We automatically assign semantic entailment relations to all 100 million entries in PPDB using features derived from past work on discovering inference rules from text and semantic taxonomy induction.
* {Domain adaptation}: Language is used differently in different domains.  In \citep{PavlickEtAl-2015:ACL:Domain} we demonstrate an algorithm that is able to automatically adapt paraphrases to suit a particular domain.  For instance, paraphrase of the word {\it divide} when used in biology should include {\it division, break, split, dispense, multiply, cleave, fracture, separate, mitotic division, partition} since it refers to cellular division/multiplication.  In a parliamentary domain it more commonly refers to the divide between rich and poor, and should be paraphrased as {\it gap, division, gulf, separate, distinction, rift, difference}.
* {Natural language generation}: Paraphrases are useful in the generation components of dialog systems like Apple's Siri, question answering, and automatic summarization. We are investigating using paraphrases for text to text generation.  Given an input text, rewrite it subject to constraints: for summarization make it shorter; for simplification use words that are easier to understand; for poetry generation conform to a meter and a rhyming scheme.  In \citep{Xu-EtAl:2015:TACL} and \citep{Xu-EtAl:2015:TACL2}, we show how paraphrasing and machine translation techniques can be used for the problem of text simplification.  
\end{enumerate}

The goal of the paraphrasing line of my research is to push the longstanding AI goal of language understanding forward with data-driven methods and statistical models.  If successful, it has the potential to impact a wide variety of NLP tasks including information retrieval, question answering, and machine translation.  My research into this area has been sponsored by two NSF EAGER awards, multiple grants from the Allen Institute for Artificial Intelligence (AI2) and its predecessor Vulcan, and a \$1.6 million DARPA DEFT award.



\begin{table*}
\centering
\footnotesize
\begin{tabular}{llllllllll}
\multicolumn{1}{l}{Equivalent} && \multicolumn{1}{l}{Entailment} && \multicolumn{1}{l}{Exclusion} && \multicolumn{1}{l}{Other relation} && \multicolumn{1}{l}{Unrelated }\\
\cline{1-1}\cline{3-3}\cline{5-5}\cline{7-7}\cline{9-9}
look at/watch &&	little girl/girl &&	close/open &&	swim/water && girl/play\\
a person/someone &&	kuwait/country	&& minimal/significant && husband/marry to &&found/party\\
clean/cleanse && tower/building && boy/young girl && oil/oil price &&profit/year\\
away/out &&	the cia/agency && nobody/someone && country/patriotic &&man/talk\\
distant/remote &&	sneaker/footwear && 	blue/green && drive/vehicle &&car/family\\
the phone/the telephone && heroin/drug && 	france/germany &&	family/home && holiday/series\\
last autumn/last fall &&	doe/deer &&	least three/least two	&& basketball/court &&green/tennis\\
illegal entry/smuggling &&	typhoon/storm && child/mother	&& playing/toy && sunday/tour\\
approve/to ratify &&	seriously injure/injure && in front/on the side &&	islamic/jihad && city/south\\
alliance of/coalition between && sunglasses/glasses && oppose/support	&& delay/time && back/view\\                                                            
\end{tabular}
\caption{Examples of different types of entailment relations appearing in PPDB.}
\label{ppdb_examples}
\end{table*}

## Statistical Machine Translation Without Parallel Corpora


Statistical machine translation has long been purported to be ``language independent'' since linguistic information is not typically used when training systems.  This has been touted as a strength of the paradigm, because the only requirement for building a  new system is a sentence-aligned bilingual parallel corpus.  However, this language independence does not mean that statistical machine translation works equally well for every language.  Translation quality depends on many factors, including the amount of training data, morphological complexity, and divergences in word order.  Since very large parallel corpora are required to achieve good translation quality, statistical machine translation can, in reality, only be applied to a very limited number of languages. My research agenda for the next decade is to transform statistical machine translation so that (1) models can be trained without the use bilingual parallel corpora, (2) linguistic information can be integrated directly into the models and as priors for learning translations and re-ordering patterns, and (3) large groups of Internet users can collaborate to improve translation quality.   If successful, these efforts will radically change the field and make statistical machine translation applicable to (nearly) all of the world's languages.


\begin{wrapfigure}{r}{.5\linewidth}
\begin{center}
\vskip -0.1in
\includegraphics[width=\linewidth]{images/context.pdf}
\vskip -0.1in
\caption{Example of projecting contextual vectors over a seed bilingual lexicon. }\label{rapp-model} 
\end{center}
\end{wrapfigure}    
%
Like other statistical NLP systems and machine learning applications, the  performance of statistical machine translation improves as more training data is used.   For a few language pairs, we have tremendous amounts of training data --  I created a French-English parallel corpus with nearly 1 billion words on  each side, the DARPA GALE program produced Arabic-English and Chinese-English parallel corpora with 250 million words in each language, and we have somewhere on the order of 50--100 million words worth of parallel data for the official languages of the European Union.  However, for most language pairs, we have comparatively tiny amounts of bilingual training data, which means that current statistical machine translation techniques will not work.    



To build statistical machine translation systems without parallel corpora, I have revived research started by \cite{Rapp1999}, which investigated  inducing bilingual lexicons from monolingual texts.  The method uses vector-space semantic models to build a {\it context vector} representing words whose  translations are unknown.  The elements in an unknown word's vector are {\it projected} into the vector space of the other language using the known translations from a {\it small seed bilingual dictionary}.  This sparse projected vector is compared to the vectors for all words in the target language.  The word whose vector is most similar to the projected vector is considered to be the best translation of the unknown word.  This process is illustraed in Figure \ref{rapp-model}.  I have successfully replicated the results of \cite{Rapp1999}, and used the method to estimate the parameters of phrase-based statistical machine translation systems \citep{Kelementiev:2012,Irvine-Callison-Burch:2015:JNLE}.  The advantage of this paradigm is that it only requires a small bilingual dictionary and large monolingual corpora, rather than bilingual parallel data. 

 
 
 
My students and I have examined combining a diverse set of monolingually-derived signals of translation equivalence \citep{irvine-callisonburch:2013:NAACL}.  In addition to vector space models, we have incorporated a diverse set of signals including temporal similarity (Figure \ref{temporal-similarity}), orthographic similarity,  and topical similarity.  Table \ref{table:bilingual_lexicon_induction_examples} shows examples of the highest ranking English translations of 5 Spanish words for several of our signals of translation equivalence.  Each signal produces different types of errors.\footnote{For instance, using topic similarity, {\it montana}, {\it miley}, and {\it hannah} are ranked highly as candidate translations of the Spanish word {\it montana}. 
The TV character Hannah Montana is played by actress Miley Cyrus, so the topic similarity between these words makes sense.    }
My group has conducted a study of bilingual lexicon induction on a wide range of languages and data sizes \citep{Irvine-Callison-Burch:2015:CL}.  
%
 \begin{wrapfigure}{r}{.4\linewidth}
\begin{center}
\vskip -0.15in
\includegraphics[width=\linewidth]{images/temporal}
\vskip -0.1in
\caption{The temporal histograms are collected from monolingual texts spanning several years and show the number of occurrences of each word (on the y-axes) across time. While the correct translation has a good temporal match , the non-translations are less temporally similar.}\label{temporal-similarity} 
\end{center}
\end{wrapfigure}    
%
We examine translation into 
English from 25 foreign languages: Albanian, 
Azeri, Bengali, Bosnian, Bulgarian, Cebuano, Gujarati, Hindi, Hungarian, Indonesian, Latvian, Nepali, Romanian, Serbian, Slovak, Somali, Spanish, Swedish, Tamil, Telugu, Turkish, Ukrainian, Uzbek, Vietnamese and Welsh.  Rather than testing solely on high frequency words, as previous research has done, we test on low frequency as well, so that our results are more relevant to statistical machine translation, where systems typically lack translations of rare words that fall outside of their training data.  We systematically explore a wide range of features and phenomena that affect the quality of the translations discovered by bilingual lexicon induction. We give illustrative examples of the highest ranking translations for orthogonal signals of translation equivalence like contextual similarity and temporal similarity.  We analyze the effects of frequency and burstiness, and the sizes of the seed bilingual dictionaries and the monolingual training corpora.  Our model performs better than the previous state-of-the-art matching canonical correlation analysis (MCCA) algorithm, achieving an accuracy of 42\% versus MCCA's 15\%.



\begin{table}
\small
\begin{center}
\begin{tabular}{ccccc}
{\it alcanzaron} & {\it sanitario} & {\it desarrollos} & {\it volc\'{a}nica} & {\it montana}  \\
\hline
\multicolumn{5}{c}{{\sc contextual similarity}}\\
\hline
%{\it alcanzaron} & {\it sanitario} & {\it desarrollos} & {\it volc\'{a}nica} & {\it montana}  \\
{\bf reached} & exil & advances  & {\bf volcanic} & arendt \\
enjoyed & rhombohedral & {\bf developments} & eruptive & {\bf montana}  \\
contained & apt &  changes & coney & glasse\\
contains & immune &  placing & rhonde & teter \\
%saw & circulatory & innovations & bleaker & waddingham \\
%includes  & nervous & use & staten & daryl \\
%included & endocrine &  changes & robben & callowhill \\
%hit & coordinate & making & ostrov & richings \\
%achieved & ucsd  & addition & ellesmere & beswick \\
%estates & windowing & allowing & gilligan & holgersson \\
\hline
\multicolumn{5}{c}{{\sc temporal similarity}}\\
\hline
%{\it alcanzaron} & {\it sanitario} & {\it desarrollos} & {\it volc\'{a}nica} & {\it montana}  \\
travel & snowpocalypse & occupied & wawel & dzv \\
road & airport & aer & {\bf volcanic} &  spatz \\
news & dioxide & madoff & ash & centimes \\
services & steinmeier & declaration & spewed & kleve \\ 
%arts & gobbling & ponzi & eyjafjallajokull & reallocate \\
%word & investigating & affects & otunbajewa & frostrup \\
%special & convicted & suspected & eruption & roze \\
%chief & spy & fed & cloud & minc \\
%top & offices & combat & rubell  & bicyclists \\
%inspired & bond & arrested & dormancy & lgbt \\
\hline
\multicolumn{5}{c}{{\sc Orthographic similarity}}\\
\hline
%{\it alcanzaron} & {\it sanitario} & {\it desarrollos} & {\it volc\'{a}nica} & {\it montana}  \\
alcantara & {\bf sanitary} & ferroalloy & {\bf volcanic} & {\bf montana} \\
albanian & sanitation & barrosos & volcanism & fontana \\
lazzaroni & unitario & destroyers & voltaic & montane \\
lanaro & sanitarium & mccarroll & vacancy & mentana \\
%aleandro & sanitation & disallows & konica & montagna \\
%lazaros & sagittario & disallow & dominica & montanha \\
%canaro & sanitarias & scrolls & veronica & montan \\
%alianza & kantaro & payrolls & monica & montano \\
%lazaro & sanitorium & carroll & volcano  & montani \\
%catanzaro & santoro & steamrolls & vratnica & montand \\ 
\hline
\multicolumn{5}{c}{{\sc Topic similarity}}\\
\hline
%{\it alcanzaron} & {\it sanitario} & {\it desarrollos} & {\it volc\'{a}nica} & {\it montana}  \\
{\bf reached} & health & {\bf developments} & {\bf volcanic} & {\bf montana} \\
 began & transcultural & developed & eruptions & miley \\
 led & medical & development & volcanism & hannah \\
however & sanitation & used & lava & beartooth \\
%early & patient & using & plumes & cyrus \\
%including & deliverables & modern  & eruption & crazier \\
%took & pharmaceutical & based & volcano & bozeman  \\ 
%remained & sewerage & important & volcanoes & chelsom \\
%several & healthcare & history  & breakouts & absaroka  \\ 
%continued & care & different & volcanically  & baucus  \\
\end{tabular}
\normalsize
\caption{Examples of translation candidates ranked using contextual  similarity, temporal similarity, orthographic similarity and topic similarity. The correct English translations, when found, are bolded.\label{table:bilingual_lexicon_induction_examples}}
\end{center}
\end{table}

My goal is to go beyond simply expanding bilingual dictionaries so that we can use bilingual lexicon induction techniques in order to produce full translations systems.  I am extending the model to translations of phrases (instead of just words), to calculate translation probabilities, and to predict word order of translations.  My research has been supported by two DARPA grants -- a \$500k follow-on grant to my participation in the DARPA Computer Science Study Group, and a new \$450k multi-year DARPA LORELEI project.
 



\begin{figure}
\includegraphics[width=1\linewidth]{images/bleu-scores-for-mturk-pilot}
\caption{A comparison of the translation quality (approximated by Bleu score) for professionals against different ways of selecting the Turker translations from among the 4 redundant translations that they produced for each source sentence.  The oracles suggest that the Turker translation quality could be as good as a professional's, if we had a reliable way of picking the best translation.}\label{bleu-scores-for-mturk-pilot}
\end{figure}

## Crowdsourcing

My third research focus is crowdsourcing.  The idea of using crowdsourcing to create annotated data for natural language processing applications is a relatively new topic, and it raises a number of scientific challenges. Rather than treating annotated training data as a gold standard created by experts whose labels are authoritative, we must cope with the fact that we have anonymous, non-expert annotators whose labels are noisy and who may not even be doing the task conscientiously. We build models of the annotators themselves, and use those models to create high quality labeled training data by soliciting redundant labels and making predictions about which labels and which annotators are most likely to be correct. The ability to accurately model the annotators has direct implications for the cost of creating a labeled training data set, since we can decide how much to trust a given annotator's label and whether soliciting a redundant label would be likely to improve the accuracy. 



One of my first successes with crowdsourcing for NLP was to show that the quality of Urdu-English translations produced by non-professional translators can be made to approach the quality of professional translation at a fraction of the cost \citep{zaidan-callisonburch:2011:ACL-HLT2011}.  Figure \ref{bleu-scores-for-mturk-pilot} highlights the main findings of the study.  It shows that through judicious application of quality control techniques, crowdsourced translations can fall in the range that we would expect of professional translators. This, combined with the fact that crowdsourced translations are more than an order of magnitude cheaper, opens the real possibility of creating training data for SMT, previously thought to be too expensive to create from scratch.
%
I have established myself as one of the foremost experts in crowdsourcing as applied to language
\citep{callisonburch-dredze:2010:MTURK}. I have used crowdsourcing to create a wide range of new NLP data sets, which approach the size and quality of ones produced by the Linguistics Data Consortium (LDC).   Here's a sample of what I have produced:

* A large scale evaluation of machine translation output by crowd workers with a comprehensive comparison against expert annotators and recommendations for quality control  \citep{callisonburch-EtAl:2010:WMT}.
* An Arabic dialect corpus with manual classification of the dialect for 150k sentences harvested from the online comments of Arabic newspapers from different countries.  We used this data to train a system that could automatically identify Arabic dialects  \citep{zaidan-callisonburch:2011:ACL-HLT2011}.
* Translations of 1.5 million words worth of Egyptian Arabic and Levine Arabic  data.  This allowed us to train a statistical machine translation system to translate Arabic dialect that was better than a system trained on 100 times more MSA data  \citep{Zbib-etal:2012:NAACL}
* Parallel corpora for six Indian languages.  These data sets are valuable for evaluating syntactic models of translations, since Indian languages are verb final and require a lot of long-distance reordering \citep{post-callisonburch-osborne:2012:WMT}.
* Translations of 1.8 million words of spoken Spanish and of 143k words of spoke Egyptian Arabic.  This data facilitates research into spoken language translation \citep{Post-EtAl:2013:IWSLT,Kumar-EtAl:2014:IWSLT}.
* A demographic study of the languages spoken by workers on the Mechanical Turk crowdsourcing platform, which resulted in bilingual dictionaries for 100 languages with 10,000 words translated in each of the langauges \citep{Pavlick-EtAl-2014:TACL}.

My research into crowdsourcing for NLP has been facilitated by a \$500,000 DARPA grant, two Google faculty research awards totaling \$195,000, and approximately \$100,000 towards a Mechanical Turk annotation budget from the Human Language Technology Center of Excellence.   I have a new 2 year DARPA LORELEI grant under the LDC for creating data for low resource languages using crowdsourcing. 

My interests in crowdsourcing have expanded beyond natural language processing.  I have designed a semester-long course on Crowdsourcing and Human Computation (described in my teaching statement).  I have two research projects related to social justice that use crowdsourcing.  In one project, I am designing tools to help crowd workers find better higher paying work \citep{Chen-et-al:HCOMP:2014} (see \url{http://crowd-workers.com/landing}).  In another, I am using crowdsourcing to create a structured database of all shootings in the United States to facilitate public health research (which the Republican congress has blocked the CDC and NIH from doing).  See my teaching statement for a description of the gun violence database project \citep{PavlickAndCallisonBurch-2015:HCOMP:GVDB}. 

## Bibliography 

  

<table class="table"> 
  <tbody>

  {% for year in (2000..2015) reversed %}
    {% for publication in page.publications %}
    {%if publication.year == year%}
    <tr>
      <td> 
        <div id="{{publication.id}}">
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


	</div>

	</td>
    <tr>
    {% endif %}
    {% endfor %}
  {% endfor %}
  </tbody>
</table>
