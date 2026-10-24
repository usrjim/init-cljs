.PHONY: _help

_help:
	@grep -E -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

dev: ## dev
	@clj -M:nrepl-cljs

build_dev: ## build dev
	@clj -M:fig -O advanced -bo dev

build_prod: ## build prod
	@clj -M:fig -bo prod

serve: ## serve
	@clj -M:fig -O advanced -bo dev -s
