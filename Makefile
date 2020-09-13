MAIN_DOC = readme.org
EMACS = emacs
BATCH_EMACS = $(EMACS) -q --batch \
              -l ./readme.el \
              $(MAIN_DOC)

tangle:
	$(BATCH_EMACS) --eval '(org-babel-tangle)'

readme.html: readme.org
	$(BATCH_EMACS) --eval '(org-html-export-as-html)'


.PHONY: nix

nix:
	nix-shell --command 'make tangle'
