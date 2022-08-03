SVGFILES := deckblatt.svg uebersicht.svg gross_alpha-zeta.svg gross_eta-my.svg gross_ny-sigma.svg gross_tau-omega.svg klein_alpha-zeta.svg klein_eta-my.svg klein_ny-sigma.svg klein_tau-omega.svg blanko_linien.svg rueckseite.svg

# $(wildcard *.svg)

build: $(SVGFILES:%.svg=%.pdf)
	pdfunite $^ heft.pdf

%.pdf : %.svg
	#inkscape --file=$*.svg --export-area-drawing --without-gui --export-pdf=$*.pdf
	inkscape -C --export-filename=$*.pdf $*.svg for reasonable new inkscape versions

clean:
	rm *.pdf
