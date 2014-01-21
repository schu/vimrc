
filetype off

set rtp+=$GOROOT/misc/vim

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on

syntax on

set nocompatible
set number
set autoindent
set encoding=utf-8
set laststatus=2

" Tomorrow-Night theme by https://github.com/chriskempson/tomorrow-theme

colorscheme molokai

" start NERDTree by default
"autocmd VimEnter * NERDTree
"autocmd BufEnter * :silent NERDTreeMirror
"autocmd VimEnter * wincmd w

" https://github.com/scrooloose/nerdtree/issues/21
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd BufNewFile *.html 0r ~/.vim/skeleton/skeleton.html

autocmd BufRead,BufNewFile *.ejs setfiletype html
autocmd BufRead,BufNewFile *.json setfiletype js

set pastetoggle=<F2>

highlight ColorColumn ctermbg=black
if exists("+colorcolumn")
	set colorcolumn=72
endif

set list
set fileformats=unix
