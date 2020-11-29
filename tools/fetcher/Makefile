PHONY: build modules

b build:
	make bm
	make bs

bm build-modules:
	python3 modules.py

bs build-snippets:
	python3 snippets.py

a all:
	make build
	make modules
	make snippets

m modules:
	make -f modules.makefile

s snippets:
	make -f snippets.makefile
