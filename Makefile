temp := enisa-project-template

zip:
	mkdir -p release
	mkdir -p $(temp)
	mkdir -p $(temp)/img
	mkdir -p $(temp)/doc
	mkdir -p $(temp)/sty
	cp LICENSE $(temp)/
	cp ChangeLog $(temp)/
	cp template/*.tex $(temp)/
	cp template/Makefile $(temp)/
	cp template/README $(temp)/
	cp -r doc/sample.pdf $(temp)/doc
	cp -r doc/sample.tex $(temp)/doc
	cp -r sty/* $(temp)/sty
	cp -r img/* $(temp)/img
	zip -r $(temp).zip $(temp)/
	rm -rf $(temp)/
	mv $(temp).zip release/
