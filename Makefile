.PHONY: all open

all: prep.pdf

open: prep.pdf
	open prep.pdf

papers-with-names.tex: papers.tex
	python authors.py < papers.tex > papers-with-names.tex

prep.pdf: prep.tex papers-with-names.tex
	pdflatex ./prep.tex

