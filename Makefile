.PHONY: create-switch
create-switch:
	opam switch create -y . --deps-only

.PHONY: install
install: ## Install development dependencies
	yarn install --legacy-peer-deps
	opam update
	opam install -y .

.PHONY: init
init: create-switch install

.PHONY: build
build:
	opam exec -- dune build @relude @test --display short

.PHONY: watch
watch:
	opam exec -- dune build @relude @test -w

.PHONY: dev-tools
dev-tools:
	opam install -y ocamlformat utop ocaml-lsp-server

.PHONY: test
test:
	npm run test