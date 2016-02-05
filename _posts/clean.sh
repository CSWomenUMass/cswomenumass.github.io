function srm {
    if [ -f $1 ] ; then
	rm $1
    elif [ -d $1 ] ; then
	rm -r $1
	# rmdir $1
    fi
}

delme="_site _posts _layouts  _config.yml index.html feed.xml about.md stylesheet.css Gemfile"

for f in $delme; do
    srm $f;
done
	 
