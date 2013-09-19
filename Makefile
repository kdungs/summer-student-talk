all:
	make presentation
	make open

presentation:
	make tex
	make tex
	biber presentation.bcf
	make tex

tex: presentation.tex
	lualatex presentation.tex

open:
	open presentation.pdf

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.log
	rm -f *.nav
	rm -f *.out
	rm -f *.run.xml
	rm -f *.snm
	rm -f *.toc
	rm -f presentation.pdf
