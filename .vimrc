" This must be first, because it changes other options as a side effect.
set nocompatible

" Colorscheme
syntax enable
colorscheme monokai

" Ruler
set ruler

" Tabs are spaces
set expandtab

" Wildmode (tab autocompletion for files/dirs)
set wildmode=list:longest

" Show match as search proceeds
set incsearch

" Use case if caps used
set smartcase

" Search highlighting
set hlsearch

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Enable mouse support
set mouse=a

" Auto closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

