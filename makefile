# Make the draft or print versions of the document
#
# latexmk will run latex, bibtex etc in the right order, as many
# times as are needed to produce a final document.
#
all: draft

draft:  draft.tex
	latexmk --pdf --output-directory=draft draft.tex

print:  print.tex
	latexmk --pdf --output-directory=print print.tex

# Clean up all generated files including .pdf
clean:
	latexmk -C --output-directory=draft draft
	latexmk -C --output-directory=print print

# Clean up all generated files except for the .pdf
publish:
	latexmk -c --output-directory=draft draft
	latexmk -c --output-directory=print print
