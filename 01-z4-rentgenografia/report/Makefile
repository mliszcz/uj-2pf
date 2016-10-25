FLAGS=--number-sections --filter pandoc-crossref --filter pandoc-citeproc

%.pdf: %.md
	pandoc $(FLAGS) -o $@ $<

all: $(patsubst %.md, %.pdf, $(wildcard *.md))

clean:
	rm -f *.pdf
