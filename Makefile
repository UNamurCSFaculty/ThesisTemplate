.PHONY: all clean dist print

P = main

default : $P.pdf

$P.dvi	: $(wildcard *.tex *.bib figures/*.eps src/*.tex)
	latex  $P < /dev/null || $(RM) $@
	bibtex $P < /dev/null || $(RM) $@
	latex  $P < /dev/null || $(RM) $@
	latex  $P < /dev/null || $(RM) $@

$P.pdf  : $(wildcard *.tex *.bib figures/* src/*.tex)
	pdflatex --shell-escape $P
	bibtex $P
	pdflatex --shell-escape $P
	pdflatex --shell-escape $P

$P.ps	: $P.dvi
	dvips -tletter -Ppdf $P.dvi -o $P.ps

$P.ps.gz: $P.ps
	$(RM) $P.ps.gz
	gzip -9 < $P.ps > $P.ps.gz

print:	$P.ps

dist:	$P.ps.gz

clean:
	$(RM) $P.log $P.aux $P.bbl $P.blg $P.out $P.dvi $P.ps $P.ps.gz $P.pdf $P.acn $P.glo $P.idx $P.ilg $P.ind $P.ist $P.loa $P.lof $P.lol $P.lot $P.ptc $P.toc texput.log

