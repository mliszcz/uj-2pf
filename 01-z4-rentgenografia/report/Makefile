FLAGS=--number-sections --filter pandoc-crossref

%.pdf: %.md
	pandoc $(FLAGS) -o $@ $<

all: $(patsubst %.md, %.pdf, $(wildcard *.md))

clean:
	rm -f *.pdf
