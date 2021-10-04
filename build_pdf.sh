#!/bin/bash
# usage: ./build_pdf.sh <output_filename>
jekyll build
cd _site
wkhtmltopdf --enable-local-file-access index.html $1
cd ..
