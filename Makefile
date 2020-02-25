PAPER = paper

.PHONY: all clean $(PAPER).pdf $(PAPER).dvi

$(PAPER).pdf:
	latexmk -halt-on-error -pdf $(PAPER).tex

$(PAPER).dvi:
	latexmk -halt-on-error $(PAPER).tex

pdf: $(PAPER).pdf
dvi: $(PAPER).dvi

all: pdf

clean:
	latexmk -c
