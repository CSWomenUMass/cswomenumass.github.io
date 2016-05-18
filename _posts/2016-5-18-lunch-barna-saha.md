---
layout: post
title: "Lunch with Barna Saha"
date: 2016-05-18 00:00:00
categories: lunch
author: sofya
thumbnail: /images/barna.jpg
---

The last talk of the semester brought [Barna Saha](https://barnasaha.net/), an Assistant Professor at UMass Amherst College of Information and Computer Sciences. She talked about the Dyck language, the problem of language edit distance, and its relation to other problems.

# Bio

![Barna Saha](/images/barna.jpg){:style="float: right; left-padding: 15px; max-width: 256px; border: solid;"}
Barna Saha is an Assistant Professor in the College of Information and Computer Science at the University of Massachusetts Amherst. She received her PhD from the University of Maryland College Park, and then spent a couple of years at the AT&T Shannon Labs as a senior researcher before joining UMass Amherst in 2014. Her research interests are in algorithm design and analysis, and large scale data analytics. She particularly likes to work on problems that are tied to core applications but have the potentials to lead to beautiful theory. She is the recipient of Google Faculty Award (2016), Yahoo ACE Award (2015), Simons-Berkeley Research Fellowship (2015), NSF CRII Award (2015), Dean's Dissertation Fellowship (2011), and the best paper award and finalists for best papers at VLDB 2009 and IEEE ICDE 2012 respectively.

# Playing with Grammars: What Have We Known So Far?
Open and close tags that don't match are one of the largest causes of errors that prevent XML files from compiling. Since files in question are usually too large to debug manually, we need to find an automatic way to correct them. The problem is to insert/delete/substitute open and close tags to transform an erroneous document into a well-formed one. The edit distance is then the number of edits we need to perform and this is the quantity we want to minimize.

XML data format can be represented as a [Context Free Language](https://en.wikipedia.org/wiki/Context-free_language). In particular, since the tags have the well-nested property, it is a part of a particular class of formal grammars called the [Dyck Language](https://en.wikipedia.org/wiki/Dyck_language). The Dyck language is a language of well-balanced parenthesis and is formally defined by the following grammar: $$S \rightarrow SS$$, $$S \rightarrow ASa$$, $$S \rightarrow \epsilon$$, where $$S$$ is the start symbol, $$A$$ is an open bracket, $$a$$ is a close bracket, and $$\epsilon$$ is an empty string.

There are a few related problems that concern context free grammars: recognition, string edit distance, and language edit distance.

**CFG recognition**
Given a grammar and a string, we want to determine whether the string belongs to the grammar. For the Dyck language this problem can be easily solved using a stack: 

    for each bracket in the string:
        1. if it is an open bracket: put it on the stack
        2. if it is a close bracket:
               attempt to match it with the bracket at the top of the stack

**String edit distance**
Given two strings, we want to find the minimum number of edits to transform one into the other.

**Language edit distance**
Given a grammar and a string, we want to find the minimum number of edits to change the string into a member of the grammar. This problem is a generalization of string edit distance. Assume that you want to find string edit distance between two strings $$ab$$ and $$cb$$. Capitalize the first string, reverse the second, and concatenate them to get a new string $$ABbc$$. Then the number of edits required to transform $$ab$$ into $$cb$$ is exactly the same as the number of edits that puts $$ABbc$$ into the Dyck language. In general, language edit distance is significantly harder than string edit distance.

The first algorithm for language edit distance is due to Aho and Peterson (1972). It uses dynamic programming and runs in time $$O(\vert G \vert^2 n^3)$$ where $$\vert G\vert$$ is the size of the grammar and $$n$$ is the length of the string. It was then further improved to $$O(\vert G\vert n^3)$$ by Myers in 1985. While the exact complexity of the problem is unknown, it would be very optimistic to hope for a sub-cubic exact algorithm. However, $$(1+\epsilon)$$-approximation can be achieved in $$O(\vert G\vert n^{\omega})$$ time, where $$\omega$$ is the matrix multiplication coefficient. It can be shown that no nontrivial multiplicative approximation ratio can be achieved in $$o(n^{\omega})$$ time. A few heuristics have been developed for the problem, which work well in practice, but have no performance guarantees. 

Finding language edit distance for various grammars is a fundamental problem since it is tightly connected to a number of other problems such as matrix multiplication, finding all-pairs shortest paths in graphs, RNA folding, problems in computational linguistics, compiler optimization, etc.

Since XML repairing is equivalent to the Dyck language edit distance problem, we are going to concentrate on this class of grammars and design a fast approximation algorithm. The main two results are the following:

- $$O(\epsilon^{-1} \log d)$$-approximation algorithm that uses time $$O(n^{1+\epsilon} + d^2)$$ where $$d$$ is the optimal edit distance.
- $$O(\epsilon^{-1} \log(d) \beta(n))$$-approximation algorithm that uses time $$O(n^{1+\epsilon})$$ where $$\beta(n)$$ is the approximation factor that can be achieved for string edit distance in linear time.

**Random Deletion Algorithm**
We start by assuming that the only errors in the string are deletions and present a simple $$O(d)$$-approximation algorithm. It can be shown that deletions are the hardest to handle and we only lose a factor of 2 in approximation by considering deletions only. The algorithm works as follows:

    1. initialize a stack
    2. while string is non-empty:
        1. if next symbol is an open bracket: put it on the stack
        2. if it is a close bracket:
            1. attempt to match it with the bracket at the top of the stack
            2. if they match: delete both
            3. if they don't match:
                  with probability 1/2 delete the symbol from the string
                  with probability 1/2 delete the symbol at the top of the stack
    3. if after going through the entire string the stack is not empty:
           delete everything on the stack

This algorithm has two nice properties:

- synchronization: at every step the correct move is taken with probability $$1/2$$
- local repairability: every wrong move can be corrected by two right ones

It can be shown that this algorithm is related to the [Gambler's Ruin](https://en.wikipedia.org/wiki/Gambler's_ruin) problem which is a 1-dimensional random walk and leads to an $$O(d)$$-approximation.

**Refinement of Random Deletion**
To improve the approximation factor, we introduce the concept of blocks to the random deletion algorithm above. A block is a sequence of open brackets followed by a sequence of close brackets. Note, that we can use string edit distance algorithm on a block. However, splitting a string into blocks exactly is really hard. Thus, we use random deletion algorithm to detect blocks and then run string edit to repair them. This strategy improves the approximation factor to $$O(z)$$ where $$z$$ is the number of blocks.

**Further Refinement**
The problem with the above algorithm is that we can make errors dividing strings into blocks and the errors propagate as the algorithm proceeds. In order to keep those errors local, we can find blocks in parallel instead of sequentially. This makes the algorithm naturally parallel and reduces the approximation factor to $$O(\log d)$$.

For more information about language edit distance, check out these Barna's papers:

- [The Dyck Language Edit Distance Problem in Near-linear Time](https://people.cs.umass.edu/~barna/paper/focs-full.pdf), Barna Saha. FOCS 2014 
- [Language Edit Distance & Maximum Likelihood Parsing of Stochastic Grammars: Faster Algorithms & Connection to Fundamental Graph Problems](http://arxiv.org/abs/1411.7315), Barna Saha, FOCS 2015 

# Personal Talk
Barna was born in a small town in India. Her mother was a chemistry teacher, and Barna thought she would do chemistry herself. In fact, she only saw a computer for the first time when she was 16. Yet she went to do computer science. In particular, she enjoys design and analysis of algorithms because when you work with algorithms "everything fits together in the end". Even though not all research is successful (as it usually goes), Barna is really excited about what she does.

During her graduate studies Barna struggled with confidence after her Master's adviser got very upset at her when she made a mistake in her first paper. However, as a PhD student she got a better adviser who helped her build her confidence back up and still maintains a connection with her over email.

The main piece of advice Barna gives is to be convident and do things because you enjoy them, not because you have to.
