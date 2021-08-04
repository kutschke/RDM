# Make the draft or print versions of the document
#
# latexmk will run latex, bibtex etc in the right order, as many
# times as are needed to produce a final document.
#
all: draft

draft:
	latexmk  --pdf --output-directory=draft-dir draft.tex

print:
	latexmk  --pdf --output-directory=print-dir print.tex

spell:
	aspell -t -c body/body.tex

# Clean up all generated files including .pdf
clean:
	latexmk -C --output-directory=draft-dir draft
	latexmk -C --output-directory=print-dir print

# Clean up all generated files except for the .pdf
publish:
	latexmk -c --output-directory=draft-dir draft
	latexmk -c --output-directory=print-dir print
