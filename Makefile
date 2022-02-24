all: ./docs/propuesta_anteproyecto.pdf

./docs/propuesta_anteproyecto.pdf: ./docs/propuesta_anteproyecto.tex
	pdflatex -output-directory="./docs/" ./docs/propuesta_anteproyecto.tex
	bibtex ./docs/propuesta_anteproyecto
	pdflatex -output-directory="./docs/" ./docs/propuesta_anteproyecto.tex
	pdflatex -output-directory="./docs/" ./docs/propuesta_anteproyecto.tex
	
clean:
	rm ./docs/*.pdf

clean-all: clean
	rm ./docs/*.aux
	rm ./docs/*.bbl
	rm ./docs/*.blg
	rm ./docs/*.log