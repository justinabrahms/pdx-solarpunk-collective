#!/bin/bash
mkdir _site/ || true
for POST in *.md; do
    pandoc --to=html5 --css https://cdn.rawgit.com/yegor256/tacit/gh-pages/tacit-css-1.3.1.min.css --output=_site/$(basename ${POST%.md}).html --standalone $POST
done
