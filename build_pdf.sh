#!/bin/bash
# usage: ./build_pdf.sh <output_filename>
jekyll build
cd _site
wkhtmltopdf --enable-local-file-access -B 20 -T 20 index.html output.pdf
mv output.pdf "../${1}"
cd ..
