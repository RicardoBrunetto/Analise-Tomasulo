all: clear_windows
	@echo "\n\tSucesso!\n"

compile:
	@pdflatex --interaction=batchmode Documento
	# @bibtex Documento
	# @pdflatex Documento
	# @pdflatex Documento

clear: compile
	@rm -f *.synctex.gz
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.out
	@rm -f *.blg
	@rm -f *.bbl

windows:
	@"C:\Program Files\MiKTeX 2.9\miktex\bin\x64\pdflatex" -synctex=1 -interaction=batchmode Documento.tex
	@"C:\Program Files\MiKTeX 2.9\miktex\bin\x64\bibtex" Documento.tex

clear_windows: windows
	@del *.synctex.gz
	@del *.aux
	@del *.log
	@del *.out
	@del *.blg
	@del *.bbl
