---
layout: post
title: "First Lunch of the semester with Susan Landau"
date: 2016-09-26 00:00:00
categories: lunch
author: rian
image: assets/images/blog/landau.jpg
---

The first talk of the semester featured [Susan Landau](http://www.privacyink.org/).

<!--break-->

# Bio

![Susan Landau](/assets/images/blog/landau.jpg){:style="float: right; left-padding: 15px; max-width: 256px; border: solid;"}
Susan Landau works at the intersection of cybersecurity, national security, law, and policy.
During the Crypto Wars of the 1990s, her insights on how government encryption policy skewed civil
society and business needs for security helped win the argument for a relaxation of cryptographic
export controls.  Beginning in the early 2000s, Landau was an early voice in the argument that
law-enforcement requirements for embedding surveillance within communications infrastructures
created long-term national-security risks.  Her position that securing private-sector telecommunications was in the national-security interest ran contrary to public thinking at the
time and deeply influenced policy makers and scholars. Landau's book [__Surveillance or Security?
The Risks Posed by New Wiretapping Technologies__](https://mitpress.mit.edu/books/surveillance-or-security), (MIT Press) won the 2012 Surveillance Studies
Book Prize, while [__Privacy on the Line: the Politics of Wiretapping and Encryption__](https://mitpress.mit.edu/books/privacy-line), co-authored
with Whitfield Diffie (MIT Press, 1998), won the IEEE-USA Award for Distinguished Literary
Contributions Furthering Public Understanding of the Profession and the McGannon Book Award for
Social and Ethical Relevance in Communication Policy Research. Landau has testified to Congress
and frequently briefed US and European policymakers on encryption, surveillance, and cybersecurity
issues.  Landau is Professor of Cybersecurity Policy at Worcester Polytechnic Institute, and has
previously been a Senior Staff Privacy Analyst at Google, a Distinguished Engineer at Sun
Microsystems, and a faculty member at the University of Massachusetts and Wesleyan University. A
2015 inductee in the Cybersecurity Hall of Fame and a 2012 Guggenheim fellow, Landau was a 2010-
2011 fellow at the Radcliffe Institute for Advanced Study and the recipient of the 2008 Women of
Vision Social Impact Award. She is also a fellow of the American Association for the Advancement of
Science and of the Association for Computing Machinery. She received her BA from Princeton, her MS
from Cornell, and her PhD from MIT.


# It's too complicated: How the Internet Upends Katz, Smith, and Electronics Surveillance Law

United States communication surveillance law for criminal wire taps as it currently exists is based on two key court cases.

The first was Katz v. US, 1967.  Law enforcement had placed a tap on a phone booth in order to
catch people that were placing illegal bets.  The case went all the way to the Supreme Court, which
decided that the 4th amendment protects people and not places.  This case led to a federal
surveillance law called Reasonable Expectation of Privacy (REP).  The law says that people have an
expectation of privacy even in public areas such as a phone booth, so a warrant is necessary before
law enforcement may do audio surveillance in these places.

The second case was Smith v. MD, 1979. A woman's house was robbed and following the robbery, someone (presumably the robber) called her anonymously to torment her about returning to her home. The police got the caller's phone number from the phone company and put a pen register on it in order to prove that Smith was the caller.  This case also went to the Supreme Court.  It was decided that there was no REP here, because Smith shared his phone number with the phone company and any information shared with a third party has less protection.

These two cases distinguish between content and signaling (or dialing) information. Law enforcement
needs to get a wire tap warrant if they want to get content from the subject, but not if they only
want signaling information. Wire taps only cover the subjects of the tap, so law enforcement have
to minimize recording of non-subjects. Wire tap warrants are also more difficult to get, because
unlike search warrants, they are not given to people before recording begins. Wire tap law stimies
criminals to an extent by scaring them out of using electronic communication.

However, Katz and Smith don't say much about what to do about IP-based communication. In the 1986 law, content is defined as "any information concerning the substance, purport, or meaning of that communication." The 2001 USA Patriot Act replaced references to the telephone with DRAS (Dialing, Routing, Addressing, and Signaling information).

#Discerning Content from Non-Content

In IP-based communication, the line between content and non-content is less clear than in telephone communication. Take URLs for example. URLs consist of an authority (dialing) and a path(content). So if the URL contains a path such as: www.google.com/maps then it requires a warrant, but if it does not: (www.google.com), then it does not require a warrant. However, www.google.com/maps is equivalent to maps.google.com.  The second URL does not appear to contain a path, so does not require a warrant, even though it is effectively the same as the first URL.

#Conclusions

Susan and her co-authors determined in their paper that the rules from Katz and Smith are too difficult to apply to modern communication. They came up with three sets of recommendations.

##Guidance for DoJ

* Correct 2005 Electronic Surveillance manual
* Inform judges of the problem
* Dialing info should be defined as "outside of package"
* Content should be defined as "inside of package", even if it contains other packages

##Guidance for Judges

* Ask about functionality and form of information to be collected with each application
* Determine whether the DRAS goes through a third party
* If not, is the technology capable of only collecting the DRAS?
* If not, determine whether the over-collection involves content or non-DRAS, non-content and whether a Title 3 or Rule 41 search is needed.

##Guidance for Policymakers

*The law should be solidly grounded in the reality of today's technology
*Privacy protections should take account of the "Big Data tsunami"

# Personal Talk

Susan was trained as a theoretician. After marrying [Neil Immerman](https://people.cs.umass.edu/~immerman/), she was part of a two-body problem. She points out that this was in a different time, when it was understood that you never admitted that you were married or part of a two-body problem when applying for jobs. During one of her first faculty jobs, she reported a colleague's  sexist comments to the ombudsman, who responded by telling her that although he didn't necessarily approve of the other man's remarks, it was the his personal view and he couldn't do anything about it. Susan had her children before getting tenure and moved to Massachusetts, where she worked as research faculty at UMass. She mentioned that having senior people say that her work was good helped a lot when things were not going well. In general having senior colleagues that believed in her helped a great deal. Being able to write and speak well and having a lot of grit and determination also helped. She believes that grit really matters and that women in computer science must have a lot of grit to have made it as far as they have.  She thinks that those who finish degrees in computer science are the ones that are determined.
