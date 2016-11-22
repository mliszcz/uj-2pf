FLAGS=--number-sections --filter pandoc-crossref --filter pandoc-citeproc

%.pdf: %.md plots
	pandoc $(FLAGS) -o $@ $<

all: $(patsubst %.md, %.pdf, $(wildcard *.md))

plots/out/%.tex: plots/%.gnuplot plots/out
	cd plots && gnuplot ../$<

plots: $(patsubst plots/%.gnuplot, plots/out/%.tex, $(wildcard plots/*.gnuplot))

plots/out:
	mkdir -p $@

clean:
	rm -f *.pdf

.PHONY: plots
