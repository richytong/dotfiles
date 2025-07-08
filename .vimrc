" TODO
" create shortcut to edit dotfiles/.vimrc
" consider jj -> <esc>
" consider ; -> :
" abbreviations with :iabbrev
" invetigate sneak
" vii v-inner-indent;everything at inner indentation level object
" :norm ; inserts something at beginning of lines
" g/pattern/norm
" quickfixlist buffer
" oeu <c-x><c-l>
"
" Resources
" Vimcasts / Practical Vim
" VimTricks
" Learn Vimscript the Hard Way

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'terryma/vim-expand-region'
call plug#end()

let mapleader = ","

let g:user_emmet_leader_key=','

let $FZF_DEFAULT_COMMAND = 'es_find -t f'

" buffers
nmap <leader>w  :w!<CR>
nmap <leader>qq :qa!<CR>
nmap <leader>q. :bw!<CR>
nmap <leader>qa :argdo<Space>bw!<CR>
nmap <leader>ee :e<Space><C-Z>
nmap <leader>es :call fzf#run({ 'sink': 'edit' })<CR>
nmap <leader>vs :call fzf#run({ 'sink': 'vsplit' })<CR>
nmap <leader>b  :Buffers<CR>

" nvim terminal bufferes
nmap <leader>te :terminal<CR>i
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>qq <C-\><C-n><C-o> :qa!<CR>
tnoremap <leader>q. <C-\><C-n><C-o> :bw! term://<C-a><CR>

" TODO
" Quick multiline comments

" move between windows
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-j> <C-W>j
map <C-k> <C-W>k

" clears search highlight
map <silent> <leader><ESC> :noh<CR>

" very magic mode
nnoremap / /\v

" jump to previous opening bracket
nnoremap [{ ?{<CR>
nnoremap [( ?(<CR>
nnoremap [[ ?[<CR>

" jump to previous closing bracket
nnoremap [} ?}<CR>
nnoremap [) ?)<CR>
nnoremap [] ?]<CR>

" jump to next closing bracket
nnoremap ]} /}<CR>
nnoremap ]) /)<CR>
nnoremap ]] /]<CR>

" jump to next opening bracket
nnoremap ]{ /{<CR>
nnoremap ]( /(<CR>
nnoremap ][ /[<CR>

" Moving lines and selections (mac alt)
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Moving lines and selections (urxvt hack)
nnoremap <M-lt>RAlt-j> :m .+1<CR>==
nnoremap <M-lt>RAlt-k> :m .-2<CR>==
inoremap <M-lt>RAlt-j> <Esc>:m .+1<CR>==gi
inoremap <M-lt>RAlt-k> <Esc>:m .-2<CR>==gi
vnoremap <M-lt>RAlt-j> :m '>+1<CR>gv=gv
vnoremap <M-lt>RAlt-k> :m '<-2<CR>gv=gv

" Moving lines and selections (kitty)
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Quick buffer movement
nnoremap <M-n> :bn<CR>
nnoremap <M-p> :bp<CR>
tnoremap <M-n> <C-\><C-n>:bn<CR>
tnoremap <M-p> <C-\><C-n>:bp<CR>

" Some readline bindings
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^

" Copy n paste to global registers from visual mode
vnoremap y "*y :let @+=@*<CR>

" Make <CR> start commands
nnoremap <CR> :

" Copy n paste to and from clipboard register
noremap <leader>y "+y
noremap <leader>p "+p

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set nocompatible

syntax enable

colorscheme vim

set scrolloff=1000

set laststatus=2
set statusline=
set statusline+=%3*<<%*\ %1*%l%*%3*,%*%1*%c%*\ %3*>>%*
set statusline+=\ %2*%F%*
set statusline+=\ %m

set history=500

filetype plugin on
filetype indent on

set autoread

set wildmenu
set wildmode=list:longest
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set wildcharm=<C-Z>

set path=.,,**

set autochdir

set langmenu=$LANG

set ruler

set cmdheight=1

set hidden

set backspace=eol,start,indent

set hlsearch incsearch ignorecase smartcase magic

set lazyredraw

set showmatch

set mat=2

set noerrorbells novisualbell

set tm=500

set t_vb=

set t_Co=256

set foldcolumn=0

set background=dark

set encoding=utf-8

set fileencoding=utf-8

set fileformats=unix,dos,mac

set nobackup nowritebackup noswapfile

set expandtab smarttab

set shiftwidth=2

set tabstop=2

set wrap linebreak nolist

set textwidth=500

set autoindent smartindent

set splitright
