" Vim run commands
" Maintainer: Richard Tong (richytong@gmail.com) - @richytong
" Note: This vimrc is really for NeoVim, else you'll get a subset of the features

" No compatible
set nocompatible

" Install plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" Airline Configs
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Menus
set wildmenu
set wildmode=list:longest,full
set wildcharm=<C-Z>

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Tab completion for file related tasks
set path+=**

" Relative line numbers to cursor
set relativenumber

" Automatically change directory when entering a buffer
set autochdir

" Set 1000 lines to the cursor - when moving vertically using j/k (fixes cursor)
set so=1000

" Speak english
set langmenu=$LANG

"Always show current position
set ruler

" Show line numbers
set number

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Add a bit extra margin to the left
set foldcolumn=0

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Set colorscheme
try
    colorscheme beeg
catch
endtry

" Set background
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Show the status line
set laststatus=2

" Format the status line
set statusline=
set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ Line\ %l,\ Col\ %c

" Turn off tabline
set showtabline=0

" Fzf default command
let $FZF_DEFAULT_COMMAND = 'es_find'

" Muh glorious leader
let mapleader = ","

" Muh leader maps
nmap <leader>ww :w!<cr>
nmap <leader>qq :q!<cr>
nmap <leader>q. :bw<CR>
nmap <leader>ee :e<Space><C-Z>
nmap <leader>es :call fzf#run({ 'dir': '~/dev', 'sink': 'edit' })<CR>
nmap <leader>bb :b<Space><C-Z>
nmap <leader>bd :bw<Space><C-Z>
nmap <leader>vv :vnew<Space><C-Z>
nmap <leader>vh :vert help<Space>
nmap <leader>vs :call fzf#run({ 'dir': '~/dev', 'sink': 'vsplit' })<CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><ESC> :noh<cr>

" Open terminal at directory containing current buffer
" nmap <leader>te :cd %:p:h<cr> :terminal<cr>
nmap <leader>te :terminal<cr>i

" Terminal mode mappings
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>qq <C-\><C-n><C-o> :bw! term://<C-a><CR>

" Ctrl n and p for window movement
map <C-p> <C-W>h
map <C-n> <C-W>l

" Split vnew windows to right
set splitright

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" V magic mode
nnoremap / /\v

" Auto expanding brackets
inoremap (; (<CR>);<ESC>O
inoremap (, (<CR>),<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap {; {<CR>};<ESC>O
inoremap {, {<CR>},<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap [; [<CR>];<ESC>O
inoremap [, [<CR>],<ESC>O
inoremap [<CR> [<CR>]<ESC>O

" Moving lines and selections (mac)
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Moving lines and selections (urxvt)
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

" Jumping in insert mode
inoremap <C-e> <C-o>$

" Copy n paste to global registers
vnoremap y "*y :let @+=@*<CR>

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif
