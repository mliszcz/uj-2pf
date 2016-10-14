
OUTDIR=output
INDOC=document.md
OUTDOC=document.pdf
DATA1=wykres_01_06.txt
DATA2=wykres_02.dat

all: $(OUTDIR)/$(OUTDOC)

clean:
	rm -rf $(OUTDIR)

$(OUTDIR)/$(OUTDOC): $(INDOC) $(OUTDIR)/$(DATA1).svg.pdf $(OUTDIR)/$(DATA2).svg.pdf | $(OUTDIR)
	pandoc --dpi 300 -o $@ $<

$(OUTDIR)/%.svg.pdf: $(OUTDIR)/%.svg | $(OUTDIR)
	inkscape $< --export-pdf=$@

$(OUTDIR)/%.svg: %.gnuplot % | $(OUTDIR)
	gnuplot $<

$(OUTDIR):
	mkdir $@

.PHONY: all clean
