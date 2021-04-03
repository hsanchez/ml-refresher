main.pdf: *.tex # img/*.pdf
	xelatex main
	bibtex main
	xelatex main
	xelatex main

.PHONY: clean

clean:
	$(RM) main.{pdf,log,bbl,blg,out,snm,toc,nav,vrb} .DS_Store main.run.xml
