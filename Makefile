SRC = la-asm-manual.adoc
PDF = la-asm-manual.pdf

.PHONY: all clean

$(PDF): $(PDF:.pdf=.adoc) $(SRC)
	asciidoctorj -b pdf $(SRC) -o $(PDF)

clean:
	-rm -rf la-asm-manual.pdf
