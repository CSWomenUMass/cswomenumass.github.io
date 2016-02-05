function srm {
    if [ -f $1 ] ; then
	rm $1
    elif [ -d $1 ] ; then
	rm -r $1
	# rmdir $1
    fi
}

function install {
    lib=`gem list $1`
    if [ -z "$lib" ] ; then 
	gem install $1
    fi
}

install github-pages
install jekyll
install jekyll-paginate
install bundler

bundler install

srm _posts
srm _layouts

jekyll new _posts
cp [0-9]*.md _posts
echo "source 'https://rubygems.org'
gem 'github-pages'
" > Gemfile
echo "# Site settings
title: CS Women UMass Amherst
email: womenchairs@cs.umass.edu
description: Promoting and supporting the representation and interests of women in computing.
baseurl: \"\" # the subpath of your site, e.g. /blog/
url: \"http://cics.umass.edu/~women\"
twitter_username: CSWomenUMass
github_username: cswomenumass
grad_cochairs: \"Emma Tosch, Emma Strubell\"
ugrad_cochairs: \"Cassian Corey, Supriya Kankure\"

# Build settings
markdown: kramdown
gems: [jekyll-paginate]
paginate: 5
posts: _posts
" > _config.yml
mkdir _layouts

echo "
/*******************************************************************************
Slate Theme for GitHub Pages
by Jason Costello, @jsncostello
*******************************************************************************/

@import url(normalize.css);
@import url(pygment_trac.css);

/*******************************************************************************
Theme Styles
*******************************************************************************/

*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  color:#373737;
  background: #212121;
  font-size: 18px;
  font-family: 'Myriad Pro', Calibri, Helvetica, Arial, sans-serif;
  line-height: 1.5;
  -webkit-font-smoothing: antialiased;
}

h1, h2, h3, h4, h5, h6 {
  margin: 10px 0;
  font-weight: 700;
  color:#222222;
  font-family: 'Lucida Grande', 'Calibri', Helvetica, Arial, sans-serif;
  letter-spacing: -1px;
}

h1 {
  font-size: 36px;
  font-weight: 700;
}

h2 {
  padding-bottom: 10px;
  font-size: 32px;
  background: url('/images/bg_hr.png') repeat-x bottom;
}

h3 {
  font-size: 24px;
}

h4 {
  font-size: 21px;
}

h5 {
  font-size: 18px;
}

h6 {
  font-size: 16px;
}

p {
  font-size: 18px;
  margin: 10px 0 15px 0;
}

footer p {
  color: #f2f2f2;
}

a {
  text-decoration: none;
  color: #db2a2a;
  text-shadow: none;
}

a:hover, a:focus {text-decoration: underline;}

footer a {
  color: #F2F2F2;
  text-decoration: underline;
}

em {
  font-style: italic;
}

strong {
  font-weight: bold;
}

img {
  position: relative;
  margin: 0 auto;
  max-width: 739px;
  padding: 5px;
  margin: 10px 0 10px 0;
  border: 1px solid #ebebeb;

  box-shadow: 0 0 5px #ebebeb;
  -webkit-box-shadow: 0 0 5px #ebebeb;
  -moz-box-shadow: 0 0 5px #ebebeb;
  -o-box-shadow: 0 0 5px #ebebeb;
  -ms-box-shadow: 0 0 5px #ebebeb;
}

p img {
  display: inline;
  margin: 0;
  padding: 0;
  vertical-align: middle;
  text-align: center;
  border: none;
}

pre, code {
  width: 100%;
  color: #222;
  background-color: #fff;

  font-family: Monaco, \"Bitstream Vera Sans Mono\", \"Lucida Console\", Terminal, monospace;
  font-size: 14px;

  border-radius: 2px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;

  box-shadow: 0 0 10px rgba(0,0,0,.1);
}

pre {
  padding: 10px;
  overflow: auto;
}

code {
  padding: 3px;
  margin: 0 3px;
}

pre code {
  display: block;
  box-shadow: none;
}

blockquote {
  color: #666;
  margin: 0 0 20px 2px;
  padding-left: 20px;
  border-left: 3px solid #bbb;
  font-style: italic;
}

ul, ol, dl {
  margin: 0 0 15px 0;
  padding-left: 20px;
}

dl dt {
  font-weight: bold;
}

dl dd {
  margin-left: 0;
  padding-left: 0;
  font-style: italic;
}

dl p {
  padding-left: 20px;
  font-style: italic;
}

hr {
  height: 1px;
  margin-bottom: 5px;
  border: none;
  background: url('/images/bg_hr.png') repeat-x center;
}

table {
  border: 1px solid #373737;
  margin-bottom: 20px;
  text-align: left;
 }

th {
  font-family: 'Lucida Grande', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  padding: 10px;
  background: #373737;
  color: #fff;
 }

td {
  padding: 10px;
  border: 1px solid #373737;
 }

form {
  background: #f2f2f2;
  padding: 20px;
}

/*******************************************************************************
Full-Width Styles
*******************************************************************************/

.outer {
  width: 100%;
}

.inner {
  position: relative;
  max-width: 640px;
  padding: 20px 10px;
  margin: 0 auto;
}

/* added this for picture header */
.picheader {
  position: relative;
  width: 95%;
  padding: 20px 10px;
  margin-left: auto;
  margin-right: auto;
  display: block;
  background-image: url(/images/group.jpg);
  background-repeat: no-repeat;
  background-position: center;
  text-align: center;
}

div.transbox {
    margin: 30px;
    background-color: #ffffff;
    opacity: 0.7;
    filter: alpha(opacity=60);
    max-width: 800px;
    color: #373737;
    margin-left: auto;
    margin-right:auto;
    display:block;
}

div.transbox h1 {
    color: #373737;
}

div.transbox h2 {
    color: #373737;
}
/* --- */

#forkme_banner {
  display: block;
  position: absolute;
  top:0;
  right: 10px;
  z-index: 10;
  padding: 10px 50px 10px 10px;
  color: #fff;
  background: url('../images/blacktocat.png') #0090ff no-repeat 95% 50%;
  font-weight: 700;
  box-shadow: 0 0 10px rgba(0,0,0,.5);
  border-bottom-left-radius: 2px;
  border-bottom-right-radius: 2px;
}

#header_wrap {
  background: #212121;
}

#header_wrap .inner {
  padding: 50px 10px 30px 10px;
}

#project_title {
  margin: 0;
  color: #fff;
  font-size: 42px;
  font-weight: 700;
  text-shadow: #111 0px 0px 10px;
}

#project_tagline {
  color: #fff;
  font-size: 24px;
  font-weight: 300;
  background: none;
  text-shadow: #111 0px 0px 10px;
}

#downloads {
  position: absolute;
  width: 210px;
  z-index: 10;
  bottom: -40px;
  right: 0;
  height: 70px;
  background: url('../images/icon_download.png') no-repeat 0% 90%;
}

.zip_download_link {
  display: block;
  float: right;
  width: 90px;
  height:70px;
  text-indent: -5000px;
  overflow: hidden;
  background: url(../images/sprite_download.png) no-repeat bottom left;
}

.tar_download_link {
  display: block;
  float: right;
  width: 90px;
  height:70px;
  text-indent: -5000px;
  overflow: hidden;
  background: url(../images/sprite_download.png) no-repeat bottom right;
  margin-left: 10px;
}

.zip_download_link:hover {
  background: url(../images/sprite_download.png) no-repeat top left;
}

.tar_download_link:hover {
  background: url(../images/sprite_download.png) no-repeat top right;
}

#main_content_wrap {
  background: #f2f2f2;
  border-top: 1px solid #111;
  border-bottom: 1px solid #111;
}

#main_content {
  padding-top: 40px;
}

#footer_wrap {
  background: #212121;
}

/*******************************************************************************
Small Device Styles
*******************************************************************************/

@media screen and (max-width: 480px) {
  body {
    font-size:14px;
  }

  #downloads {
    display: none;
  }

  .inner {
    min-width: 320px;
    max-width: 480px;
  }

  #project_title {
  font-size: 32px;
  }

  h1 {
    font-size: 28px;
  }

  h2 {
    font-size: 24px;
  }

  h3 {
    font-size: 21px;
  }

  h4 {
    font-size: 18px;
  }

  h5 {
    font-size: 14px;
  }

  h6 {
    font-size: 12px;
  }

  code, pre {
    min-width: 320px;
    max-width: 480px;
    font-size: 11px;
  }
}
" > stylesheet.css

echo "
<!DOCTYPE html>
<html>
<head>
    <meta charset=\"utf-8\">
    <meta name=\"viewport\" content=\"width=device-width initial-scale=1\" />
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">

    <title>{% if page.title %}{{ page.title }}{% else %}{{ site.title }}{% endif %}</title>
    <meta name=\"description\" content=\"{{ site.description }}\">

    <link rel=\"stylesheet\" href=\"stylesheet.css\">
</head>

  <body>

    <div id=\"main_content_wrap\" class=\"outer\">
      <section id=\"main_content\" class=\"inner\">
        {{ content }}
      </section>
    </div>

  </body>

</html>
" > _layouts/default.html

echo "---
layout: default
---

<div class=\"post\">

  <header class=\"post-header\">
    <h1 class=\"post-title\">{{ page.title }}</h1>
    <p class=\"post-meta\">{{ page.date | date: \"%b %-d, %Y\" }}{% if page.author %} • {{ page.author }}{% endif %}{% if page.meta %} • {{ page.meta }}{% endif %}</p>
  </header>

  <article class=\"post-content\">
    {{ content }}
  </article>

</div>

" > _layouts/post.html

echo "---
layout: default
---

<div class=\"posts-list\">
  {% for post in paginator.posts %}
  <article class=\"post-preview\">
    <a href=\"{{ post.url | prepend: site.baseurl }}\">
	  <h2 class=\"post-title\">{{ post.title }}</h2>
	
	  {% if post.subtitle %}
	  <h3 class=\"post-subtitle\">
	    {{ post.subtitle }}
	  </h3>
	  {% endif %}  
    </a>

    <p class=\"post-meta\">
      Posted on {{ post.date | date: \"%B %-d, %Y\" }}
    </p>
  
    <div class=\"post-entry\">
      {{ post.content | truncatewords: 50 | strip_html}}
	  <a href=\"{{ post.url | prepend: site.baseurl }}\" class=\"post-read-more\">[Read&nbsp;More]</a>
    </div>
  
   </article>
  {% endfor %}
</div>

" > index.html
