.DEFAULT_GOAL := run
.PHONY: run serve sandbox install build clean help

help: ## List available targets
	@grep -E '^[a-z-]+:.*## ' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  %-10s %s\n", $$1, $$2}'

install: ## Install gems into _vendor/bundle
	bundle install

run: install ## Serve the resume at http://localhost:4000 with live reload
	bundle exec jekyll serve --livereload

serve: run

sandbox: install ## Serve locally, sending usage events to the sandbox beacon
	bundle exec jekyll serve --livereload --config _config.yml,_config.sandbox.yml

build: install ## Build the static site into _site/
	bundle exec jekyll build

clean: ## Remove build output and caches
	rm -rf _site .sass-cache .jekyll-cache
