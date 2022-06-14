# Giorgos Zirdelis (giorgos@ccs.neu.edu)
TEX=`which xelatex`
BIBTEX=`which bibtex`
RM=`which rm`
FILE=privacy-pres

all:
	$(TEX) -interaction=nonstopmode $(FILE).tex > /dev/null 2>&1
	$(BIBTEX) $(FILE).aux
	$(TEX) -interaction=nonstopmode $(FILE).tex > /dev/null 2>&1
	$(TEX) -interaction=nonstopmode $(FILE).tex

clean:
	$(RM) -f *.{aux,log,out,blg,bbl,toc,snm,nav,dvi}

distclean:
	$(RM) -f *.{aux,log,out,blg,bbl,toc,snm,nav,dvi,pdf}

