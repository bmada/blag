JEKYLL = bundle exec jekyll

serve:
	$(JEKYLL) serve --incremental --drafts

build:
	$(JEKYLL) build
