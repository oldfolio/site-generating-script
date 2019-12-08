#!/bin/sh
#
# SITE GENERATING SCRIPT
#
# Create or edit a text file using markdown syntax. See:
# https://daringfireball.net/projects/markdown/syntax
#
# This file's name should end with the extension .md and
# you can now use the file's name WITHOUT the .md extension
# as the first and only argument passed to this script.
#
# The text file should contain whatever will appear between
# <body> </body> tags of the planned web page. The script
# will turn the text file into html and add the top and
# bottom matter needed to create a valid html web page.
#
if [ -f $1.md ];
  then 
    cat top.html > $1.html
    markdown $1.md >> $1.html
    cat foot.html >> $1.html  
  else
    echo "  "
    echo "You need to specify a correct filename."
    echo "Be sure not to include the md extension." 
    echo "  "
fi

