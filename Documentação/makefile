all: clear
	@echo "\n\tSucesso!\n"

compile:
	@pdflatex --interaction=batchmode Documento
	# @bibtex Documento
	# @pdflatex Documento
	# @pdflatex Documento

clear: compile
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.out
	@rm -f *.blg
	@rm -f *.bbl
