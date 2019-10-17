# CSWomen website information

## Overview

This site was made using Jekyll, specifically with the theme [Mediumish](https://github.com/wowthemesnet/mediumish-theme-jekyll) (with heavy simplifying modifications).
I've made an effort to stick to vanilla Jekyll as much as possible, and remove parts of the theme that aren't required for the website with its current content.
If you are unfamiliar with Jekyll, I strongly recommend going through [this excellent, short introductory tutorial](https://jekyllrb.com/docs/), and following along with pages in the CS Women website:
* Our `_pages` and `_posts` directories are pretty standard
* `_officers` contains officers files which consitute a good example of *collections*
* `assets` contains css and image assets
* `_includes` has includes for the blog post boxes (postbox.html) and for the officer boxes (officerbox.html)
* `_layouts` contains the page, post and default layouts -- this site uses just the basics.

## Common tasks

### Adding a blog post
Please read the relevant [README here](https://github.com/CSWomenUMass/cswomenumass.github.io/blob/master/_posts/README.md).

### Adding a new page
Pages are similar to posts, so please follow the instructions in the blog post [README](https://github.com/CSWomenUMass/cswomenumass.github.io/blob/master/_posts/README.md). In addition, please add the following front matter:
* order: determines the order in which pages appear in the top navbar
* short-title: determines the title that appears in the top navbar for this page
* hide-nav: if set to true, prevents page from being shown in the top navbar

### Adding or changing officers
Please read the relevant [README here](https://github.com/CSWomenUMass/cswomenumass.github.io/blob/master/_officers/README.md).

## Some idiosyncrasies and particulars of this website
* pagination: I took it out because it was more trouble than it was worth for the number of blog posts we had. Feel free to add it back in later!
* `blog/`: The reason the blog index is a separate html file in its own folder (and not a page) is because pagination only works on html pages... this was supposed to aid future addition of pagination
* positions: This used to be a fancy collection, but based on lower participation and in the interests of keeping the website as simple as possible, I moved all position information to one unlinked page. (TODO)
* cards: The pages blog/index.html and /officers both use [Bootstrap cards](https://getbootstrap.com/docs/4.0/components/card/) in [masonry grids](https://masonry.desandro.com/extras.html).


## Contact
 Please contact Neha (nnayak@cs...) if you have any questions about the website. I will probably have forgotten most of what I did but it's ok! We can work it out together.
