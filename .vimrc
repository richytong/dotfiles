" Vim run commands

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
call plug#end()

" Set the leader key here
" A leader key gives you really fast shortcuts like ,w to write ,qq quit
let mapleader = ","

" My mappings
nmap <leader>es :call fzf#run({ 'sink': 'edit' })<CR>
nmap <leader>vs :call fzf#run({ 'sink': 'vsplit' })<CR>
nmap <leader>b  :Buffers<CR>

let mapleader = ","

let g:user_emmet_leader_key=','

let $FZF_DEFAULT_COMMAND = 'es_find -t f'

" nvim terminal bufferes
nmap <leader>te :terminal<CR>i
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>qq <C-\><C-n><C-o> :qa!<CR>
tnoremap <leader>q. <C-\><C-n><C-o> :bw! term://<C-a><CR>

" No backwards compatibility with vi
set nocompatible

" How many lines of history vim can remember
set history=500

" Enable loading of plugin files for detecting filetypes
filetype plugin on

" Enable loading of indent files for detecting proper indentation of specific filetypes
filetype indent on

" Automatically read a file again if it is changed from the outside
set autoread

" Menus - I use these mostly for autocompleting from within vim
" For example, when you want to edit a new file with :e,
" you can press tab to see all the choices of files to edit
" and then tab again to start cycling through the choices

" turns on wildmenu -> enhanced command-line completion
set wildmenu

" when more than one match, list all matches and complete till longest common string
" next press completes the next full match, subsequent tab presses cycle through
set wildmode=list:longest,full

" wildchar-macro - I use this so I can simulate a tab press for my vim key mappings and for triggering completion menus
set wildcharm=<C-Z>

" Ignore compiled files when autocompleting or expanding wildcards (*)
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" path is a list of directories that will be searched when using commands like
" gf, [f, ]f, ^Wf, :find, :sfind, :tabfind, etc
set path=.,,**

" Automatically change to the buffer's directory when entering that buffer
set autochdir

" Set 1000 lines to the cursor - when moving vertically using j/k
" This essentially fixes the cursor to always be in the middle so I don't have to deal with
" moving the screen up and down
set scrolloff=1000

" Language setting
set langmenu=$LANG

" Show the cursor position line and column number in the status line
set ruler

" Hide line numbers in favor of the status bar cursor position
set nonumber

" Show the relative line numbers to cursor instead of the default absolute line numbers.
" This is useful for doing numbered movements, for example 5dj
" set relativenumber

" Height of the command bar
set cmdheight=1

" Do not warn when leaving a buffer with unsaved changes
set hidden

" Ignore case when searching
set ignorecase

" However, if you search with any case, search will account for case
set smartcase

" Highlight search results
set hlsearch

" While typing a search command, jump to next matching pattern
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" When a bracket is inserted, briefly jump to the matching one.
" The jump is only done if the match can be seen on the screen
set showmatch

" Turn off annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set number of colors supported by your terminal. Can be 8, 16, or 256.
set t_Co=256

" Disable sound on errors on MacVim
if has("gui_macvim")
  autocmd GUIEnter * set vb t_vb=
endif

" Enable syntax highlighting
syntax enable

" Specify the color scheme
try
  colorscheme vim
catch
  colorscheme default
endtry

" Background - this should match your terminal background
" set background=light
set background=dark

" The character encoding displayed
set encoding=utf-8

" The character encoding written
set fileencoding=utf-8

" EOL formats that will be tried by Vim to detect the <EOL> character
set fileformats=unix,dos,mac

" Turn backup off in favor of version control like git
set nobackup
set nowritebackup
set noswapfile

" In insert mode, inserts spaces instead of tabs when you press the Tab key
set expandtab

" <Tab> inserts blanks according to shiftwidth, tabstop, or softtabstop
" shiftwidth is how many spaces that text is indented with operations like << and >>
" tabstop is the width of a tab character in columns
" softtabstop is how many spaces are inserted with tab or removed with backspace
" <BS> (backspace) will delete a 'shiftwidth' worth of space at the start of the line
set smarttab

" default 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen
set linebreak

" No automatic linebreak on a number of characters
set textwidth=0

" Copy indent from current line when starting a new line
set autoindent

" Automatically indent after a line ending in '{' and before a line starting with '}'
set smartindent

" Wrap lines longer than width of the window. Display only
set wrap

" No automatic formatting
set formatoptions=

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Show the status line
set laststatus=2

" Format the status line
set statusline=
set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ Line\ %l,\ Col\ %c

hi StatusLine     ctermfg=NONE   ctermbg=NONE cterm=bold
hi StatusLineTerm     ctermfg=NONE   ctermbg=NONE cterm=bold
hi StatusLineNC     ctermfg=NONE   ctermbg=NONE cterm=bold
hi StatusLineTermNC ctermfg=NONE   ctermbg=NONE cterm=bold

" Split vnew windows to right
set splitright

" Specify the behavior when switching between buffers
" Jump to the first open window that contains the specified buffer if exists
" Also consider windows in other tab pages
" Split the current window before loading a buffer for a quickfix command
set switchbuf=useopen,usetab,split

" Always show the tabline
set showtabline=2

" Set the leader key here
" A leader key gives you really fast shortcuts like ,w to write ,qq quit
let mapleader = ","

" My mappings
nmap <leader>w  :w!<CR>
nmap <leader>qq :qa!<CR>
nmap <leader>q. :bw!<CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><ESC> :noh<cr>

" Terminal mode mappings
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>qq <C-\><C-n><C-o> :qa!<CR>
tnoremap <leader>q. <C-\><C-n><C-o> :bw! term://<C-a><CR>

" Window movement
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-j> <C-W>j
map <C-k> <C-W>k

" Always use very magic mode when searching
nnoremap / /\v

" Make <CR> start commands
nnoremap <CR> :

" Copy n paste to global registers
vnoremap y "*y :let @+=@*<CR>

" Auto expanding brackets
inoremap (<CR> (<CR>)<ESC>O
inoremap (; (<CR>);<ESC>O
inoremap (, (<CR>),<ESC>O
inoremap ({<CR> ({<CR>})<ESC>O
inoremap ([<CR> ([<CR>])<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap {; {<CR>};<ESC>O
inoremap {, {<CR>},<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap [; [<CR>];<ESC>O
inoremap [, [<CR>],<ESC>O
inoremap [{<CR> [{<CR>}]<ESC>O

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
