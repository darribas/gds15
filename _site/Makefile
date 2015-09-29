lectures: le01 le02
le01:
	pandoc -t html5 --template=slides/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/lectures/lecture_01.md -o slides/lecture_01.html
	wkhtmltopdf -O Landscape file://$(shell pwd)/slides/lecture_01.html?print-pdf slides/lecture_01.pdf
le02:
	pandoc -t html5 --template=slides/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/lectures/lecture_02.md -o slides/lecture_02.html
	wkhtmltopdf -O Landscape file://$(shell pwd)/slides/lecture_02.html?print-pdf slides/lecture_02.pdf

labs: la01 la02
la01:
	cd content/labs && jupyter nbconvert --to html lab_01.ipynb --output lab_01.html
	cd content/labs && jupyter nbconvert --to latex lab_01.ipynb --output lab_01.tex && texbuild lab_01.tex && rm lab_01.tex
la02:
	cd content/labs && jupyter nbconvert --to html lab_02.ipynb --output lab_02.html
	cd content/labs && jupyter nbconvert --to latex lab_02.ipynb --output lab_02.tex && texbuild lab_02.tex && rm lab_02.tex && rm -R lab_02_files/

