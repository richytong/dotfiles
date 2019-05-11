" neovim, nvim configuration file

" Autoload plug and autoinstall plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

" Migrate vimrc
set runtimepath^=~/.vim
set runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Regular vim stuff
source ~/.vimrc
