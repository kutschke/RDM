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
> make draft
> make print

Note that latexmk determines what steps need to be re-run, not make itself.
To remove all auxillary files, leaving only the pdf:
> make publish

To remove all files created by LaTex, including the pdf:
> make clean
