
filetype off

set nojoinspaces

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
set hlsearch

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
	set colorcolumn=72,80
endif

set fileformats=unix

set bs=indent,eol,start

nmap <F8> :TagbarToggle<CR>

set directory=~/.vim/swap,/tmp

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

let vimclojure#WantNailgun = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
