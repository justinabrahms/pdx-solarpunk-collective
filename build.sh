#!/bin/bash
mkdir -p _site/

for POST in *.md; do
    if [ $POST == 'README.md' ]; then
        OUTPOST=index.html
    else
        OUTPOST=${POST%.md}.html
    fi
    pandoc --to=html5 --css https://cdn.rawgit.com/yegor256/tacit/gh-pages/tacit-css-1.3.1.min.css --output=_site/$(basename $OUTPOST) --standalone $POST
done
