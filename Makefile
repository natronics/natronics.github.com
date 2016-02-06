NBDIR = notebooks
FILES:=$(shell find $(NBDIR) -name '*.ipynb' -print)

all: build

build:
	jekyll build

four:
	rm 404.html
	jekyll build
	cp _site/404.html ./

markdown:
	@$(foreach nb, $(FILES), ipynb2markdown $(nb);)
	mv $(NBDIR)/*.markdown _posts/

jekyll: markdown
	jekyll build
