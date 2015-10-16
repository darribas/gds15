lectures: le01 le02 le03
le01:
	pandoc -t html5 --template=slides/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/lectures/lecture_01.md -o slides/lecture_01.html
	decktape automatic -s 1280x960 slides/lecture_01.html slides/lecture_01.pdf
le02:
	pandoc -t html5 --template=slides/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/lectures/lecture_02.md -o slides/lecture_02.html
	decktape automatic -s 1280x960 slides/lecture_02.html slides/lecture_02.pdf
le03:
	pandoc -t html5 --template=slides/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/lectures/lecture_03.md -o slides/lecture_03.html
	decktape automatic -s 1280x960 slides/lecture_03.html slides/lecture_03.pdf

labs: la01 la02 la03
la01:
	cd content/labs && jupyter nbconvert --to html lab_01.ipynb --output lab_01.html
	cd content/labs && jupyter nbconvert --to latex lab_01.ipynb --output lab_01.tex && texbuild lab_01.tex && rm lab_01.tex
la02:
	cd content/labs && jupyter nbconvert --to html lab_02.ipynb --output lab_02.html
	cd content/labs && jupyter nbconvert --to latex lab_02.ipynb --output lab_02.tex && texbuild lab_02.tex && rm lab_02.tex && rm -R lab_02_files/
la03:
	cd content/labs && jupyter nbconvert --to html lab_03.ipynb --output lab_03.html
	cd content/labs && jupyter nbconvert --to latex lab_03.ipynb --output lab_03.tex && texbuild lab_03.tex && rm lab_03.tex && rm -R lab_03_files/

website:
	jekyll build
	git checkout gh-pages
	cp -r _site/* ./
	git add .
	git commit -am "Building website"
	git push origin gh-pages
	git checkout master

handbook:
	cat content/handbook/head.md content/website_data/index.md content/website_data/overview.md content/website_data/syllabus.md content/website_data/task_01.md content/website_data/task_02.md content/website_data/marking_criteria.md > handbook.md
	pandoc --toc -s -S -H content/handbook/include.tex handbook.md -o content/handbook/handbook.pdf
	rm handbook.md

test_stack:
	source activate gds
	content/infrastructure/ipnbdoctest.py content/infrastructure/check_gds_stack.ipynb content/infrastructure/temp_test.ipynb
	rm content/infrastructure/temp_test.ipynb
	source deactivate

