VIM=.vim
VIMAUTOLOAD=$(VIM)/autoload
VIMBUNDLE=$(VIM)/bundle

all: vim

vim:
	git pull --recurse-submodules
	mkdir -p ~/$(VIMBUNDLE) ~/$(VIMAUTOLOAD)
	cp $(VIMAUTOLOAD)/pathogen.vim ~/$(VIMAUTOLOAD)/
	(cd $(VIMBUNDLE) && cp -fR * ~/$(VIMBUNDLE))
	cp .vimrc ~/.vimrc
