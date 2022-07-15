all: ./docs/propuesta_anteproyecto.pdf ./docs/Revision_Notes.pdf

./docs/propuesta_anteproyecto.pdf: ./docs/propuesta_anteproyecto.tex
	pdflatex -output-directory="./docs/" ./docs/propuesta_anteproyecto.tex
	bibtex ./docs/propuesta_anteproyecto
	pdflatex -output-directory="./docs/" ./docs/propuesta_anteproyecto.tex
	pdflatex -output-directory="./docs/" ./docs/propuesta_anteproyecto.tex
	
./docs/Revision_Notes.pdf: ./docs/Revision_Notes.md
	pandoc ./docs/Revision_Notes.md -o ./docs/Revision_Notes.pdf

./presentaciones/presentacion.pdf: ./presentaciones/presentacion.tex
	pdflatex -output-directory="./presentaciones/" ./presentaciones/presentacion.tex

clean:
	rm ./docs/*.pdf
	rm ./presentaciones/*.pdf

clean-all: clean
	rm ./docs/*.aux
	rm ./docs/*.bbl
	rm ./docs/*.blg
	rm ./docs/*.log
	rm ./docs/*.out
	rm ./docs/*.toc