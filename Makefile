
build:
	quarto render
	make preview

preview:
	quarto preview

clean:
	rm -rf _site \
	&& rm -rf .quarto

publish:
	quarto publish gh-pages