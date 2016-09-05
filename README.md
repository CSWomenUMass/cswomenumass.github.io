# cswomenumass.github.io

## Install  (Generic)

    gem install github-pages
    gem install jekyll
    gem install bundler
    bundle install
    
### Ubuntu 14.04 Installation

    apt-get install gem2.2
    gem2.2 install github-pages jekyll bundler
    bundle install

### Ubuntu 16.04 Installation

    sudo apt-get install ruby2.3-dev build-essential
    sudo gem install github-pages jekyll bundler
    bundle install

### Dependencies

* ruby > 2.0 -- this is a strictly greater than relation; you won't be able to install jekyll with ruby 2.0.x

##  Run

You can serve the website locally to see your changes. You will need to do this to produce a screenshot of your changes when you submit a pull request. 

From the top-level repository:

`bundle exec jekyll serve` 

Navigate to [http://localhost:4000](http://localhost:4000).
