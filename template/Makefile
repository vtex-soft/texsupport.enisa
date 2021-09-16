
f = report

default: $f.pdf

#
# PDF Workflow
#
%.pdf: %.tex .FORCE
	pdflatex --recorder $<
#	bibtex $*

#
# DVI->PS Workflow
#
#%.dvi: %.tex .FORCE
#	latex --recorder $<
##	bibtex $*
#
#%.ps: %.dvi
#	dvips -j1 $*
#
#%.pdf: %.ps
#	ps2pdf $<
#
# END of DVI-PS Workflow

# enforce compilation if pdf/dvi file exists
.FORCE:
