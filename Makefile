all: ./docs/propuesta_anteproyecto.pdf

./docs/propuesta_anteproyecto.pdf: ./docs/propuesta_anteproyecto.tex
	pdflatex -output-directory="./docs/" ./docs/propuesta_anteproyecto.tex

clean:
	rm ./docs/*.aux
	rm ./docs/*.log

clean-all: clean
	rm ./docs/*.pdf