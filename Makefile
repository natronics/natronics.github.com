all: build

build:
	cd notebooks; make
	jekyll build

four:
	rm -rf _site/404
	rm -f 404.html
	jekyll build
	cp _site/404/index.html ./404.html
