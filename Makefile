FILES = Auswertung.tex Auswertung.pdf

Auswertung.pdf: Auswertung.tex
	pdflatex Auswertung.tex

upload: Auswertung.pdf
	scp Auswertung.pdf studserv:./public_html/tmp/quanten-hall-effekt-auswertung.pdf
