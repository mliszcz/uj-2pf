FLAGS=--number-sections --filter pandoc-crossref --filter pandoc-citeproc

%.pdf: %.md
	pandoc $(FLAGS) -o $@ $<

%.tex: %.md
	pandoc $(FLAGS) --standalone -o $@ $<

all: $(patsubst %.md, %.pdf, $(wildcard *.md))

clean:
	rm -f *.pdf
