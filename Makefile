GNUPLOTS = Elektronenkonzentration_1.tex Magnetotransport_1.tex Magnetotransport_led.tex Magnetotransport_topgate.tex Elektronenkonzentration_topgate.tex
SOURCE = Auswertung.tex $(GNUPLOTS)
FILES = $(SOURCE) Auswertung.pdf

Auswertung.pdf: Auswertung.tex Auswertung.bbl $(GNUPLOTS)
	pdflatex Auswertung.tex

Auswertung.bbl: Auswertung.bib
	bibtex Auswertung

$(GNUPLOTS): %.tex : %.gnu
	gnuplot $<



.PHONY: upload upload-source

upload: Auswertung.pdf
	scp Auswertung.pdf studserv:./public_html/tmp/quanten-hall-effekt-auswertung.pdf


SOURCE_ARCHIVE = qhe-source.tar.gz

$(SOURCE_ARCHIVE): $(SOURCE)
	tar -czf $(SOURCE_ARCHIVE) $(SOURCE)

upload-source: $(SOURCE_ARCHIVE)
	scp $(SOURCE_ARCHIVE) studserv:./public_html/tmp/
