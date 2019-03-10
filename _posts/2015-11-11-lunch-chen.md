---
layout: post
title: "Second Lunch with Researcher Jinying Chen"
date: 2015-11-11 00:00:00
categories: lunch
author: sofya
image: assets/images/blog/chen.jpg
---

The second talk of the semester brough Research Scientist [Jinying Chen](http://bio-nlp.org/index.php/people) from UMass Medical. 26 members attended: 2 faculty members, 4 undergraduates, and 20 graduate students. 

# Research talk
The Application of Natural Language Processing and Machine Learning to Clinical Notes
The field of Natural Language Processing deals with translating between structured data that is easy to manipulate, such as databases, and informal unstructured data such as written or spoken human language. The problem of converting structured data to unstructured is called Natural Language Generation and can be viewed as “robots talking to people”. The other direction is Natural Language Understanding, letting machines understand human language. NLU deals with problems of information extraction and retrieval, answering questions posed in natural language, summarizing texts, etc. Particular examples include: summarizing a webpage for a database entry, letting a search engine understand a complex query instead of just keywords in it, searching and classifying reviews of a product to devise the general opinion of the public, building dialog systems that allow human-computer communication, machine translation, and spam detection.

The particular project Jinying Chen has been working on at UMass Medical School is Clinical Notes Aid. Its goal is to help patients understand electronic medical records. Such records are readily available, but are often hard to understand due to specific terminology used by medical professionals. The goal of the project is to develop a system that simplifies those notes and makes them more accessible for patients. It improves communication between health providers and patients by automatically identifying and replacing medical jargon with lay language or linking terms that might be unfamiliar to patients to definitions and educational materials.

The first step of building such a system is mining medical jargon from electronic health notes and assessing the importance and familiarity of each term. Considering these two dimensions instead of just importance improves the performance of the system, since most important terms are not necessarily most unfamiliar to the users. Based of these two parameters the system creates a ranking of terms to determine what to show the patient first. Next step involves devising synonyms and definitions for these terms. In order to do that, inter-wiki links on Wikipedia are used to come up with suitable candidates. For example, phrase “increased thirst” in one article might be a link to “polydipsia” page, thus the two will be considered synonym candidates. Unfortunately, not all candidates are actually accurate and human curation is required at this step. After the relevance of each synonym or definition is verified, it can be used to annotate health records.

The reverse of this problem has also been considered: translating lay language to medical terms. This allows patients to search for information related to their conditions even if the don't know the exact terms to use in their queries. These is a possibility of combining the two projects in the future, thus making both of them more effective. Other future directions include creating personalized translations of jargon suited to fit the needs of particular patients, simplifying health records by summarizing them, and taking word disambiguation into account for better translations.

# Personal talk
Experiences in Working in Industry in Computer Science
Decision between academic and industry research career paths can be a tough one. Academic and industry positions are quite different and have specific advantages and disadvantages. When choosing, it is important to keep in mind that moving from academia to industry can be easier than vice versa. In this talk Jinying Chen concentrates on describing working in the industry as a researcher.

The main characteristic of industry is that it is very product oriented. Your research must be related to the product and you don't get to do much independent work. Some companies do not allow their researchers to publish their results due to confidentiality issues. Some even have policies that forbid you to work and publish on similar problems even after you leave the company. Another consequence of being product oriented is that industry requires fast results and gives you less time to work on each problem. While in academia you can take months or even years to work on a project, in the industry some progress has to be shown every couple of weeks. At the same time, industry positions can provide more stability than academia, since you are not required to obtain outside funding to do your work and your career does not depend on getting or not getting tenure.

If you decided to be a researcher in the industry, Jinying Chen provides you with some advice:

*  Ask questions about the company and your position at the job interview. Which projects will you work on? Are they relevant to your current research? Will you utilize your experience at its fullest? Will you be allowed to publish your results?
*  Seek information from outside sources. Do an internet search about the company or ask current employees for their opinions.
*  Once you started working, find a mentor or join a team. This way you will catch up on things faster.
*  Find friends at your workplace. They can let you know about any unofficial rules of the company.
*  Advertise your work.
*  Be ready for fast work pace.
*  Prepare for the future. Have mid-term and long-term goals, keep self-motivated, and keep learning.

# Bio
![Jingying Chen](/images/chen.jpg){:style="float: right; margin:0 10px 10px 0; max-height:256px;"} Jinying Chen is a senior research scientist/post-doc researcher in the Department of Quantitative Health Sciences at UMass Medical School. Before joining UMMS, she was a research scientist at Raytheon BBN Technologies. She received her PhD and MS degrees from the Computer and Information Science Department at the University of Pennsylvania in 2006 and 2001, respectively. Her research focuses on algorithms and models for biomedical information extraction by leveraging natural language processing and machine learning technologies. Her previous research projects include word sense disambiguation, information extraction, machine translation, and image document analysis.
