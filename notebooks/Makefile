NOTEBOOKS=$(wildcard *.ipynb)
NBMARKDOWN=$(addprefix ../_posts/, $(NOTEBOOKS:.ipynb=.md))

all: $(NBMARKDOWN)

../_posts/%.md: %.ipynb
	ipython nbconvert --execute --to=markdown --template="nb-markdown.tpl" $^
	mv *.md ../_posts
	rm -rf *_files/
