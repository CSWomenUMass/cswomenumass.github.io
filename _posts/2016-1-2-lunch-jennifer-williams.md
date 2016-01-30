---
layout: post
title: "Lunch with Jennifer Williams"
date: 2016-01-02 00:00:00
categories: lunch
author: sofya
thumbnail: /images/williams-j-photo.jpg
---

On Wednesday, December 16, invited speaker [Jennifer Williams](https://www.ll.mit.edu/mission/cybersec/cybersec-bios/williams-j-bio.html), of [MIT Lincoln Labs](https://www.ll.mit.edu/), gave a talk on her work on cross-language summarization and her experience as a first generation college student.

# Finding Good Enough: *A Task-Based Evaluation of Query Biased Summarization for Cross Language Information Retrieval*
A large portion of Internet content is not in English. In fact, 70% of all Internet users are non-English speakers. News, blogs, tons of data in foreign languages. How do we understand what is happening around the web in languages other than English? How do we help users exlore all this data if they don't know the language it is in? The problem at hand is the following: given a large data set in a foreign language and a query in English, we want to produce a summary of the query result in English. This task requires a number of techniques used in natural language processing: machine translation, cross-language search, and summarization. 

The algorithm often used to summarize the results of a query is LexRank, which is a modified version of PageRank algorithm adapted for NLP purposes. Sentences in the documents of the given data set are represented as vertices in a graph. Edges represent similarity between sentenses. From that the algorithm ranks vertices by how similar they are to the query and how cental they are to the documents. Top-ranked sentenses are then returned as the summary.

There are several approaches for closing the language gap between the query and the data set. Jennifer Williams tested three of them on a large data set in Farsi:

* Translate the query from English to Farsi, search the data and summarize search results in Farsi, then translate the summary back to English.
* Translate the documents from Farsi to English, search and summarize the results in English.
* Use the two methods above and combine the results.

To evaluate the results, human relevance prediction was used: showing people a query and a summary and asking if the summary is relevant. As it turned out, the joint approach was superior, followed by translating the entire data set to English, followed by translating the quesry and searching in Farsi. One possible explanation might be the loss of accuracy when translating the query. Since queries are generally short, every word matters, and translating even one incorrectly can lead to huge accuracy losses. However, the problem with the other two approaches is that they require translation of the entire data set (which can be massive) to English.

As the main future work direction Jennifer Williams names developing golden standards for full-scale evaluation. If such standards were set, we could then apply intrinsic metrics, potentially improving evaluation process.

# Personal Talk: First Jen-eration
Jennifer Williams comes from a small town in Oregon called Central Point. She is a first generation college student: her parents, grandparents, aunts, and uncles didn't go to college. Thus, she had to carve her own way, getting out of her home town, seeing the world, and having a career despite all the roadblocks she had on her way. 

When she was younger, Jennifer's dream was to become an astronaut. She enjoyed welding, construction, and working on cars. In high school, she worked as an assistant electrical engineer and even gave a presentation at NASA headquarters during her junior year. 

In 2003, Jennifer went to college majoring in engineering and physics. However, soon she had to drop out due to a major car accident. While recovering, she opened herself to subjects that she didn't have much interest in before, such as history, politics, philosophy, and social issues. She read a lot and wanted to study how human brain worked. This got her interested in artificial intelligence and natural language processing. And after returning back to college, she graduated with a degree in applied linguistics. 

Graduate school brought a number of stories, both fortunate and unfortunate. She spent eight days driving from Oregon to DC and there had to rent a closet with no windows for 895 dollars a month plus utilities. During her second year, she lost two grandparents one month apart. She moved to Virginia and rented a living room for two years, where she was separated from the rest of the house by just curtains. She missed her best friend's wedding despite being friends with her for 23 years. At the age of 27, she left United States for the first time in her life, got to publish six top-tier papers in two years, and traveled the world.

Some of her friends' and colleagues' advice and encouragement stuck with her during those rocky times:

* Don't try to fit a mold.
* Live in a space where the problems are hard.
* Doing what makes you happy is the most rewarding direction to pursue.
* Truth flourishes best in places of light and cooperation.

# Bio
![Jennifer Williams](/images/williams-j-photo.jpg){:style="float: left; margin: 10px 10px 0px 0; max-height: 256px"} Jennifer Williams joined the Human Language Technology Group at MIT Lincoln Laboratory in 2012 as an associate technical staff member. Prior to joining the Laboratory, she held a position as visiting researcher in the Human Language Technology Department at the Institute for Infocomm Research in Singapore, where she developed a novel approach to discourse processing for real time speech-to-speech machine translation. Before she began her research in HLT and natural language processing, she worked across several of the engineering disciplines including electrical engineering, mechanical engineering, and physics. She holds degrees in Applied Linguistics (B.A., 2009, magna cum laude) from Portland State University, and Computational Linguistics (M.S., 2012) from Georgetown University. 
