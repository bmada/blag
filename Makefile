JEKYLL = bundle exec jekyll

serve:
	$(JEKYLL) serve --incremental --drafts --livereload

build:
	$(JEKYLL) build
