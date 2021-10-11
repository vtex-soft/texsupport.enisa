
f = sample

default: $f.pdf

%.pdf: %.tex .FORCE
	pdflatex --recorder $<
	pdflatex --recorder $<

clean:
	rm -f $f.aux $f.fls $f.log $f.out $f.toc

distclean: clean
	rm -f $f.pdf

# enforce compilation if pdf/dvi file exists
.FORCE:
