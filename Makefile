default: resume.ps resume.pdf

%.dvi: %.tex resume.cls
	latex $<

%.ps: %.dvi
	dvips $<

%.pdf: %.dvi
	dvipdfm $<

clean:
	rm -f *.dvi *.aux *.log *.ps *.pdf *.out
