FIGURE_SVGS := $(wildcard introduction/*.svg)
FIGURE_PDFS := $(patsubst %.svg, %.pdf, FIGURE_SVGS)

all: $(FIGURE_PDFS)

$(FIGURE_PDFS): %.pdf: %.svg
	inkscape -D --export-latex --export-filename=$@ --file=$<
