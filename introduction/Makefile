INK_SVGS := $(wildcard *.svg)
INK_PDFS := $(INK_SVGS:%.svg=%.pdf)
INK_TEXS := $(INK_SVGS:%.svg=%.pdf_tex)

.PHONY: all
all: ${INK_PDFS} ${INK_TEXS}

${INK_PDFS}: %.pdf: %.svg
	inkscape -D --export-latex --export-filename=$@ --file=$<

%.pdf_tex: %.pdf

.PHONY: clean
clean:
	rm ${INK_TEXS} ${INK_PDFS}
