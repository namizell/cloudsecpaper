LATEXMK = lualatex
BIBTEX = bibtex

PROJECT = paper

$(PROJECT).pdf : $(PROJECT).tex
	$(LATEXMK) $(PROJECT)
	$(BIBTEX) $(PROJECT)
	$(LATEXMK) $(PROJECT)
	$(LATEXMK) $(PROJECT)

clean:
	rm *.log *.aux *.bbl *.blg
