.PHONY: _help

_help:
	@grep -E -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

dev: ## dev
	@clj -M --main cljs.main --compile usrj.core --repl

build: ## build
	@clj -M -m cljs.main --optimizations advanced -c usrj.core

serve: ## serve
	@clj -M -m cljs.main --serve
