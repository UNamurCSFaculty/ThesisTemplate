texfile=phdthesis_main

all:
	latexmk -bibtex -pdf  $(texfile)

clean:
	latexmk -c

clean-all: clean
	latexmk -C

