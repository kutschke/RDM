# DataLoggingBackground
LaTeX source for a writeup that describes the background information needed to design the Mu2e Data Logging System

| File             | Content |
| --- | --- |
| art-workbook.cls | LaTeX class file copied from the art-workbook-doc project |
| body/            | Source files that form the body of the document |
| common/          | Files the configure the document  |
| draft.tex        | Top level LaTeX file with all draft annotations enabled  |
| figures/         | Where to find figures  |
| makefile         | make file to create pdf files and cleanup.  |
| print.tex        | top level LaTeX file with all draft annotations disabled  |
| styles/          | Style files that are not in the TexLive distirbution on my Mac.  |
| titlepage.tex    | Source for the title page

To build the draft or print versions:
<pre>
make draft
make print
</pre>

This uses latexmk to run pdflatex, bibtex and other programs in the correct order
and the correct number of times.
It is configured to put it's output in:
<pre>
draft-dir/draft.pdf
print-dir/print.pdf
</pre>
All auxillary files are stored in the same directory as the pdf.
Note that latexmk does the dependency determination and decides
which steps need to be (re-)run.


To remove all auxillary files, leaving only the pdf:
<pre>
make publish
</pre>

To remove all files created by LaTex, including the pdf:
<pre>
make clean
</pre>
