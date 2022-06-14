#!/bin/bash
# Giorgos Zirdelis (giorgos@ccs.neu.edu)
TEX=`which xelatex`
PDFVIEW=`which okular`
BIBTEX=`which bibtex`
FILE=privacy-pres


$TEX -interaction=nonstopmode $FILE.tex > /dev/null 2>&1
$BIBTEX $FILE.aux
$TEX -interaction=nonstopmode $FILE.tex > /dev/null 2>&1
$TEX -interaction=nonstopmode $FILE.tex && $PDFVIEW $FILE.pdf
# $TEX -interaction=nonstopmode $FILE.tex
