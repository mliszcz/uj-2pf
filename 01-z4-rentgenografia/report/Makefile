FLAGS=--number-sections --filter pandoc-crossref --filter pandoc-citeproc

%.pdf: %.md plots
	pandoc $(FLAGS) -o $@ $<

all: $(patsubst %.md, %.pdf, $(wildcard *.md))

plots/out/%.tex: plots/%.gnuplot
	cd plots && gnuplot ../$<

plots: $(patsubst plots/%.gnuplot, plots/out/%.tex, $(wildcard plots/*.gnuplot))

clean:
	rm -f *.pdf

.PHONY: plots
