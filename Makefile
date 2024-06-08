TEXFLAGS ?= -halt-on-error -output-format pdf -output-directory output --shell-escape
TITLE = pitch

.PHONY: all clean

all: output/$(TITLE).pdf

output:
	mkdir output

output/$(TITLE).pdf: $(TITLE).tex output
	pdflatex $(TEXFLAGS) '\providecommand\locale{en}\input{$(TITLE).tex}'
	pdflatex $(TEXFLAGS) '\providecommand\locale{en}\input{$(TITLE).tex}'

clean:
	rm -rf output
