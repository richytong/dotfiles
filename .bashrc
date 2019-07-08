#!/bin/bash

# Various vars used by other programs
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="qutebrowser"
export READER="zathura"

# Bash Prompt
ps1_user="\[\e[36m\]\u\[\e[m\]"
ps1_host="\[\e[35m\]\h\[\e[m\]"
ps1_path="\[\e[34m\]⛏️\w\[\e[m\]"
ps1_git_branch="\[\e[32m\]\$(fmt_git_branch)\[\e[m\]"
ps1_sh="\[\e[37m\]🐚\s\V\[\e[m\]"
ps1_gun="/̵͇̿̿/'̿'̿̿̿"
ps1=""
ps1+="┌ » $ps1_user💕$ps1_host $ps1_path$ps1_git_branch $ps1_sh  \n"
#ps1+="            🐇🐇🍎\n"
#ps1+="\n"
ps1+="└ » $ps1_gun "
export PS1="$ps1"

# FZF
export FZF_DEFAULT_OPTS="--layout=reverse --bind=tab:toggle-down,btab:toggle-up,change:top+select-all"
read -d '' FZF_DEFAULT_OPTS << EOF
--layout=reverse
--bind=tab:toggle-down,btab:toggle-up,change:top+deselect-all,ctrl-a:select-all
EOF

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"

# go env
export GOPATH="$HOME/code/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

# nvm env
export NVM_DIR="$HOME/.nvm"
export NODE_VERSION="v10.14.1"
export NODE_DIR="$NVM_DIR/versions/node/$NODE_VERSION"
export NODE_PATH="$NODE_DIR/lib/node_modules"
export PATH="$NODE_DIR/bin:$PATH"

# pyenv env
export PATH="$HOME/.pyenv/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
# eval "$(pyenv init -)"

# dandy env
export DANDY_ENV="richard_local"
export DANDY_DEBUG="1"
export DANDY_PATH="$HOME/code/dandy"
export DANDY_CONFIG_PATH="$DANDY_PATH/dandy-config-files/lib"

# arimus env
export ARIMUS_PATH="$HOME/code/arimus"

# Aliases, Functions
for file in ~/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Shortcuts sourcing
source ~/.fs_shortcuts_alias

# Bash completion sourcing
for file in ~/.completion/*; do
  [ -f "$file" ] && . "$file"
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
