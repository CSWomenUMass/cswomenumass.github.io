---
layout: post
title: "Sofya Vorotnikova Speaks @ Second Lunch"
date: 2016-10-12 00:00:00
categories: lunch
author: rian
image: assets/images/blog/vorotnikova.jpg
---

Today, CSWomen co-chair, [Sofya Vorotnikova](https://people.cs.umass.edu/~svorotni/), talked about
her research on solving graph problems as well as procrastination, the fear of failure and
procrastination.

<!--break-->

# Bio

![Sofya Vorotnikova](/assets/images/blog/vorotnikova.jpg){:style="float: right; left-padding: 15px; max-width: 256px; border: solid;"}
Sofya is a third year MS/PhD student at UMass Amherst.  She works with Andrew McGregor in the
Theory group. She received her Bachelor's degree in Computer Science and Mathematics from
UMass in 2014. Her research interests lie in the area of design and analysis of algorithms. She is
particularly interested in processing very large graphs using a small amount of time and space.
She is also interested in graph theory, information theory, and communication complexity.

# Solving Graph Problems in the Streaming Model
Solving graph problems is relevant to many real-world applications. However graphs are often too large to be stored. They can also be distributed across multiple machines and they often change over time. Streaming models for graphs can alleviate these problems. In streaming models, the edges
arrive in a sequence, one at a time.

# Streaming Models:
* **Insert-only**: edges in the stream are only inserted into the graph.
* **Dynamic**: aka insert-delete; edges can be either inserted (i.e. $$+(1,2)$$) into or deleted
(i.e. $$-(1,2)$$) from the graph.
* **Adjacency List**: usually we assume edges are in an arbitrary order; in this model edges that
are incident to the same vertex, arrive together; note that in this model, we see every edge twice.

# Graph Problems
In her talk, Sofya covered four common graph problems and her solutions to solving them. The
objective with all of these problems is to minimize the amount of information stored throughout the
stream that is still sufficient to find an approximate solution to the problem.

## Densest Subgraph
The density of a graph is the ratio between the number of edges to the number of vertices. This
problem has a variety of applications including community detection in social networks, identifying
spam links on the web, and applications in finance and biology. Given unlimited access to the graph,
the densest subgraph problem can be solved in polynomial time. In Sofya's work, she shows that
given an arbitrary order stream (i.e. insert-only or dynamic), an $$(1 + \epsilon)$$-approximation
while storing $$\widetilde{O}(n)$$ edges. The main idea for solving this problem is to sample
$$\widetilde{O}(n)$$ edges uniformly, at random. This works because if a subgraph has small density,
after sampling, the subgraph still has a relatively small density. Symmetrically, subgraphs with
high density also have relatively high density after sampling.

##Vertex Cover and Matching of Small Size
A **vertex cover** of a graph is a set of vertices such that every edge has at least one endpoint
in the set. A **matching** of a graph is a set of edges such that none of the edges share an
endpoint with any other edge in the set. The vertex cover problem is finding the minimum vertex
cover of the input graph and the matching problem is finding the maximum matching of the input
graph. Sofya explained these two problems together since they are closely related:
$$match(G) \leq vc(G) \leq 2match(G)$$. The solution to these problems can be found *exactly* using
$$\widetilde{O}(k^2)$$ space using an arbitrary order stream. Uniform sampling will not work in
this case, because the dense parts of the graph would be oversampled. Instead, vertices are
colored with $$b$$ colors. Then, one edge is sampled uniformly, at random for every color pair.
This sampling strategy avoids oversampling high-degree vertices. To solve these problems for a graph
$$G$$, assume $$match(G)\leq vc(G)\leq 2match(G)$$. $$H$$ is defined as the set of **heavy**
vertices with degree at least $$10k$$ and $$L$$ is defined as the set of **light** edges where
the edges do not have any heavy endpoints.

{% raw %}
$$vc(G) = |H| + vc(L)$$

$$match(G) = |H| + match(L)$$
{% endraw %}

This works, because (with constant probability) if an edge is light, it will be sampled and if a
vertex is heavy, it's degree in the graph obtained by sampling $$\Theta(k)$$ colors is at least
$$5k$$. Therefore, the degree will be high enough to recognize that the vertex is heavy.

##Approximating Size of Maximum Matching
Less space is required if the goal is only to find the approximate *size* of a matching rather than
the matching itself. For this problem, Sofya concentrated only on the class of graphs with
arboricity $$\alpha$$. **Arboricity** of a graph is the minimum number of forests the graph can be
partitioned into. Subgraphs with $$r$$ vertices of a graph wih arboricity $$\alpha$$ can not have
more than $$r\alpha$$ edges. An $$(\alpha + 2)$$-approximation can be found using
$$\widetilde{O}(\alpha n^{2/3})$$ for insert-only streams and $$\widetilde{O}(\alpha n^{4/5})$$ for
dynamic streams.

##Triangle Counting
Counting or approximating the number of triangles in a graph is difficult with arbitrary order
streaming. Consider a 'tower' graph where the graph is made up of triangles that all share a base.
(i.e. An outer triangle with several inner triangles with the same base.) If the base is left out
of the sample, we don't get any of the triangles. This problem is easier to solve with adjacency
lists, since every triangle is seen twice. Sofya explained two algorithms to solve this problem
using an insert-only adjacency list stream. In the one-pass algorithm, $$\widetilde(O)(m/\sqrt{T})$$
space is required. In the two-pass algorithm, $$\widetilde(O)(m^{3/2}/T)$$ space is required.

#Conclusion
Sofya concludes by pointing out that streaming models allow both uniform and non-uniform sampling of
edges as well as sampling of vertices. Computing degrees of vertices or other quantities depending
on the degrees also helps with these algorithms, as does using the stream ordering as part of the
algorithm.


# Personal Talk: What Would You Do If You Weren't Afraid? Fear of Failure, Procrastination, and Perfectionism
Sofya explained how procrastination happens using [Tim Urban's](http://waitbutwhy.com/wait-but-who)
[Instant Gratification Monkey](http://waitbutwhy.com/2013/10/why-procrastinators-procrastinate.html). In the our minds, the monkey takes over the controls and we start to procrastinate. However,
eventually (after look at hundreds of cat videos and checking the refrigerator dozens of times
expecting something to change), procrastination becomes boring. At this point, shouldn't working
satisfy the monkey? It turns out, no. According to Sofya, there is another character in our brains
called the Fear of Failure Hippo. The hippo makes us think that the possibility of any mistake will
lead to catastrophic results. The hippo feeds on perfectionism. When something is not perfect, it
can be interpreted as a failure, which leads to the fear of catastrophe. Sofya has spent most of
her life (17 years) taking classes. She noticed that when taking classes, procrastination is short
term. Classes are divided into neat chunks and deadlines are hard and close together, so the Panic
Monster scares the monkey away often enough to get things done. However, in PhD programs and in
research, work is not divided into these nice little chunks and deadlines tend to be far away. The
monkey is more prominent in grad school than before and perfectionism is harder, too. Sofya's mom
(who has a PhD) puts it this way: "In research it is not clear when to feel satisfied." So while
the Instant Gratification Monkey is pitted against the Panic Monster, the Fear of Failure Hippo is
pitted against Mt. Doom (of unfinished stuff). Eventually the mountain gets so big that we don't
worry so much about failing, and just get it done. Sofya offers no moral, advice, or happy ending
here. Dealing with procrastination is very much a work in progress for everyone. She says that the
thing to remember here is that we are not alone, because this is a challenge that we all face.
