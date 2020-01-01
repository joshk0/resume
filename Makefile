# NOTE: The latest version of this repository's build system is in
# .circleci/config.yml. This file is provided for use by humans when they check
# out and use this repository.

all: resume.pdf

%.pdf: %.tex
	pdflatex $<

clean:
	$(RM) *.dvi *.aux *.log *.ps *.pdf *.out
