main.pdf: *.tex # img/*.pdf
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

.PHONY: clean

clean:
	$(RM) main.{pdf,log,bbl,blg,out,snm,toc,nav} .DS_Store