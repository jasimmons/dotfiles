execute pathogen#infect()

syntax on
filetype plugin indent on

let mapleader = ","

"vim-sneak
let g:sneak#s_next = 1
let g:sneak#label = 1

"solarized colorscheme
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

set nu
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

"ctrl + <h,j,k,l> for navigating windows within NERDTree
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
