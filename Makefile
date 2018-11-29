LATEXMK = lualatex

PROJECT = paper

$(PROJECT).pdf : $(PROJECT).tex
	$(LATEXMK) $(PROJECT).tex

clean:
	rm *.log *.aux
