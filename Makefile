SRC = la-asm-manual.adoc
PDF = la-asm-manual.pdf

PDF_THEME = themes/la-asm-manual-pdf.yml

.PHONY: all clean

$(PDF): $(PDF:.pdf=.adoc) $(SRC) $(PDF_THEME)
	/usr/bin/asciidoctor-pdf \
		-a compress \
		-a date="$(DATE)" \
		-a monthyear="$(MONTHYEAR)" \
		-a pdf-style="$(PDF_THEME)" \
		-a pdf-fontsdir=fonts \
		-v \
		la-asm-manual.adoc -o $@


html: $(patsubst %.adoc, %.html, $(SRC))

%.html: %.adoc
	asciidoctor $^ -o $@

clean:
	-rm -rf la-asm-manual.pdf
