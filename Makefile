VIM=.vim
VIMAUTOLOAD=$(VIM)/autoload
VIMBUNDLE=$(VIM)/bundle

all: vim

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
