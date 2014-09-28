NBDIR = notebooks
FILES:=$(shell find $(NBDIR) -name '*.ipynb' -print)

all: jekyll

markdown:
	@$(foreach nb, $(FILES), ipynb2markdown $(nb);)
	mv $(NBDIR)/*.markdown _posts/

jekyll: markdown
	jekyll build
