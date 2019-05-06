" neovim, nvim configuration file

" migrate vimrc
set runtimepath^=~/.vim
set runtimepath+=~/.vim/after
"set runtimepath+=~/.vim/colors
"set runtimepath+=~/.vim/syntax
let &packpath = &runtimepath

" regular vim stuff
source ~/.vimrc

" Open terminal at directory containing current buffer
" nmap <leader>te :cd %:p:h<cr> :terminal<cr>
nmap <leader>te :terminal<cr>i

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
