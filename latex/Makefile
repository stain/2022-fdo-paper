#LATEXMK=latexmk
#LATEXMK=docker run -v `pwd`:/workdir -it ghcr.io/dante-ev/texlive:2021-C latexmk
#
#all: build/main.pdf
#	echo Done
#
#preview:
#	${LATEXMK} -cd -r latexmkrc -bibtex -f -gg -pdflua -latexoption=-interaction=nonstopmode -pvc
#
#main.tex: chapter*.tex references.tex summary*.tex
#
#build/main.pdf: main.tex
#	${LATEXMK} -cd -r latexmkrc -bibtex -f -gg -pdflua -latexoption=-interaction=nonstopmode 
#clean:	
#	${LATEXMK} -cd -r latexmkrc -bibtex -C -pdflua -latexoption=-interaction=nonstopmode

#latexmk=latexmk -use-make-
latexmk=docker run -v `pwd`:/work -w /work -e TEXMFCACHE=/work/build/cache -u `id -u` -it registry.gitlab.com/islandoftex/images/texlive:TL2023-2023-05-14-full latexmk -use-make-

#biber=biber
biber=docker run -v `pwd`:/work -w /work -e TEXMFCACHE=/work/build/cache -u `id -u` -it registry.gitlab.com/islandoftex/images/texlive:TL2023-2023-05-14-full biber

all: build/main.pdf

clean:
	rm -rf build

build/cache:
	mkdir -p build/cache

build/main.pdf: *.tex bibliography.bib build/cache
	$(latexmk) main
#	$(biber) build/main
#	$(latexmk) main
#

build/main.html: *.tex bibliography.bib
	pandoc --filter pandoc-citeproc main.tex --bibliography=bibliography.bib -M link-citations=true -o build/main.html