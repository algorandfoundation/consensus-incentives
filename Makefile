LATEX=pdflatex
LATEX_OPTS=-halt-on-error

TEX_FILES=$(wildcard *.tex)
PDF_FILES=$(patsubst %.tex, pdfs/%.pdf, $(TEX_FILES))

.PHONY: all clean

all: $(PDF_FILES)

pdfs/%.pdf: %.tex
	mkdir -p pdfs
	$(LATEX) $(LATEX_OPTS) -output-directory=pdfs $<

clean:
	rm -f pdfs/*

