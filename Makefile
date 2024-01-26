SRC = la-asm-manual.adoc
PDF = la-asm-manual.pdf

.PHONY: all clean

$(PDF): $(PDF:.pdf=.adoc) $(SRC)
	asciidoctorj -b pdf la-asm-manual.adoc

clean:
	-rm -rf la-asm-manual.pdf
