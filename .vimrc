" Vim run commands
" Maintainer: Richard Tong (richytong@gmail.com) - @richytong
" Note: This vimrc is really for NeoVim, else you'll get a subset of the features

" Do not try to be backwards compatible with vi, let's get all the features of vim
set nocompatible

" Install plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'junegunn/fzf.vim' " fuzzy finda fuzzy finda fuzzy finda
Plug 'vim-airline/vim-airline' " better statusline
Plug 'vim-airline/vim-airline-themes' " better statusline
Plug 'tpope/vim-surround' " surround - extension to vim language, counterpart to i
Plug 'tpope/vim-repeat' " allow repeat with surround
call plug#end()

" Airline Configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tabs = 0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_mode_map = {
    \ '__' : '--',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V-L',
    \ '' : 'V-B',
    \ 's'  : 'S',
    \ 'S'  : 'S-L',
    \ '' : 'S-B',
    \ 't'  : 'T',
    \ }
let g:airline_symbols.paste = 'Ξ'
let g:airline_symbols.spell = 'S'
let g:airline_section_z = airline#section#create(['--%1p%%-- ', '%#__accent_bold#%l%#__restore__#', ':%c'])
let g:airline_theme = 'dark'

" How many lines of history vim has to remember
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

" wildchar-macro - I use this so I can simulate a tab press inside my vim key mappings
set wildcharm=<C-Z>

" Ignore compiled files when autocompleting or expanding wildcards (*)
set wildignore=*.o,*~,*.pyc

" Ignore more stuff if we're on windows vs mac
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" path is a list of directories that will be searched when using commands like
" gf, [f, ]f, ^Wf, :find, :sfind, :tabfind, etc

" I use this setting for path mostly for the find command
" when I want to edit a file relative to my active buffer
set path=.,,**

" Automatically change directory to the buffer's directory when entering that buffer
set autochdir

" Set 1000 lines to the cursor - when moving vertically using j/k
" This essentially fixes the cursor to always be in the middle so I don't have to deal with
" moving the screen up and down
set scrolloff=1000

" Speak english
set langmenu=$LANG

" Show the current line and column number
set ruler

" Show the line numbers
set number

" Show the relative line numbers to cursor instead of the default absolute line numbers.
" This is useful for doing any numbered movements, for example 5dj
set relativenumber

" Height of the command bar
set cmdheight=1

" Do not warn when leaving a buffer with unsaved changes
set hidden

" Sane backspace
set backspace=eol,start,indent

" Sane movement - pressing l past the end of the line will move to the next line
set whichwrap+=<,>,h,l

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

" If you don't search with \v, this is the next most sane option 
set magic

" When a bracket is inserted, briefly jump to the matching one.
" The jump is only done if the match can be seen on the screen
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

" No margins - this is for folds, like folding a block of code
set foldcolumn=0

" Enable syntax highlighting
syntax enable
" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Specify the default color scheme
try
    colorscheme beeg
catch
endtry

" Background - this should match your terminal background
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" The character encoding displayed
set encoding=utf-8

" The character encoding written
set fileencoding=utf-8

" Give the <EOL> formats that will be tried when starting to edit a new buffer
" or reading a file into an existing buffer
set fileformats=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git etc anyway...
set nobackup
set nowritebackup
set noswapfile

" In Insert mode, use the appropriate number of spaces to insert a <Tab>
set expandtab

" <Tab> inserts blanks according to 'shiftwidth', 'tabstop', or 'softtabstop'
" <BS> (backspace) will delete a 'shiftwidth' worth of space at the start of the line
set smarttab

" default 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen
set linebreak

" Linebreak on 500 characters
set textwidth=500

" Copy indent from current line when starting a new line
set autoindent

" Automatically indent after a line ending in '{' and before a line starting with '}'
set smartindent

" Wrap lines longer than width of the window. Display only
set wrap

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Show the status line
set laststatus=2

" Format the status line
set statusline=
set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ Line\ %l,\ Col\ %c

" Fzf default command
let $FZF_DEFAULT_COMMAND = 'es_find -t f'

" Set the leader key here
" A leader key gives you really fast shortcuts like ,wq to write and quit real quick 
let mapleader = ","

" Rag
command! -bang -nargs=+ -complete=dir Rag call fzf#vim#ag_raw(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" My mappings - you can change them but consider these
nmap <leader>w :w!<CR>
nmap <leader>qq :qa!<CR>
nmap <leader>q. :bw!<CR>
nmap <leader>qa :argdo<Space>bw!<CR>
nmap <leader>ee :e<Space><C-Z>
nmap <leader>f. :find<Space>.**/<C-Z>
nmap <leader>es :call fzf#run({ 'sink': 'edit' })<CR>
nmap <leader>bb :b<Space><C-Z>
nmap <leader>bs :Buffers<CR>
nmap <leader>bw :bw!<Space>
nmap <leader>vv :vnew<Space><C-Z>
nmap <leader>vh :vert help<Space>
nmap <leader>vs :call fzf#run({ 'sink': 'vsplit' })<CR>
nmap <leader>ad :argdo<Space>

" Disable highlight when <leader><CR> is pressed
map <silent> <leader><ESC> :noh<CR>

" Open terminal at directory containing current buffer
" nmap <leader>te :cd %:p:h<CR> :terminal<CR>
nmap <leader>te :terminal<CR>i

" Terminal mode mappings
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>qq <C-\><C-n><C-o> :qa!<CR>
tnoremap <leader>q. <C-\><C-n><C-o> :bw! term://<C-a><CR>

" Window movement
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-j> <C-W>j
map <C-k> <C-W>k

" Split vnew windows to right
set splitright

" Specify the behavior when switching between buffers
" Jump to the first open window that contains the specified buffer if exists
" Also consider windows in other tab pages
" Split the current window before loading a buffer for a quickfix command
set switchbuf=useopen,usetab,split

" Always show the tabline
set showtabline=2

" Always use very magic mode when searching
nnoremap / /\v

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

" Quick buffer movement
nnoremap <M-n> :bn<CR>
nnoremap <M-p> :bp<CR>
tnoremap <M-n> <C-\><C-n>:bn<CR>
tnoremap <M-p> <C-\><C-n>:bp<CR>

" Some readline bindings
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^

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

" Clean extra whitespaces at the ends of these extensions
if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif
