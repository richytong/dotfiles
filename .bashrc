#!/bin/bash

# Various vars used by other programs
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="qutebrowser"
export READER="zathura"

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"

# Manual sourcing
for file in ~/.{aliases,gorc,nvmrc,pyenvrc,dandyrc,sshagentrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Shortcuts sourcing
source ~/.fs_shortcuts_env
source ~/.fs_shortcuts_alias

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
