VIM=.vim
VIMAUTOLOAD=$(VIM)/autoload
VIMBUNDLE=$(VIM)/bundle
GOVERSION=1.11.1
GOZIP=go$(GOVERSION).tar.gz

.PHONY: all
all: vim go bash jump ccat

.PHONY: vim
vim:
	mkdir -p ~/$(VIMBUNDLE) ~/$(VIMAUTOLOAD)
	cp $(VIMAUTOLOAD)/pathogen.vim ~/$(VIMAUTOLOAD)/
	cp .vimrc ~/.vimrc
	git clone https://github.com/altercation/vim-colors-solarized.git ~/$(VIMBUNDLE)/vim-colors-solarized
	git clone https://github.com/fatih/vim-go.git ~/$(VIMBUNDLE)/vim-go
	git clone https://github.com/justinmk/vim-sneak.git ~/$(VIMBUNDLE)/vim-sneak
	git clone https://github.com/scrooloose/nerdtree.git ~/$(VIMBUNDLE)/nerdtree
	git clone https://github.com/scrooloose/nerdcommenter.git ~/$(VIMBUNDLE)/nerdcommenter
	git clone https://github.com/scrooloose/syntastic.git ~/$(VIMBUNDLE)/syntastic
	git clone https://github.com/tpope/vim-fugitive.git ~/$(VIMBUNDLE)/vim-fugitive
	git clone https://github.com/gabrielelana/vim-markdown.git ~/$(VIMBUNDLE)/vim-markdown

.PHONY: go
go:
	curl -sSL https://dl.google.com/go/go$(GOVERSION).darwin-amd64.tar.gz -o $(GOZIP)
	tar xf $(GOZIP)
	mv -f go/ /usr/local/go/

.PHONY: bash
bash:
	cp .bashrc ~/.bashrc
	echo "[ -f ~/.bashrc ] && . ~/.bashrc" >> ~/.bash_profile
	. ~/.bash_profile

.PHONY: jump
jump: go bash
ifeq (, $(shell which jump))
	go get github.com/gsamokovarov/jump
endif

.PHONY: ccat
ccat: go bash
ifeq (, $(shell which ccat))
	go get github.com/jingweno/ccat
endif

.PHONY: clean
clean:
	rm -f $(GOZIP)
