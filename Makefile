.PHONY: all open

all: prep.pdf

open: prep.pdf
	open prep.pdf

papers-with-names.tex: papers.tex authors.py
	python authors.py < papers.tex > papers-with-names.tex

prep.pdf: prep.tex papers-with-names.tex preface.tex layout/cover.pdf layout/firstpages.pdf layout/back.pdf
	pdflatex ./prep.tex
	pdflatex ./prep.tex # for TOC and bookmarks

