#!/bin/bash

# Various vars used by other programs
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="qutebrowser"
export READER="zathura"

# Bash emoji fmt_sh
sh_emoji_bash=""
sh_emoji_sh="🐚"
base_sh=$(ps -p $$ | tail -n 1 | awk '{print $4}')
fmt_sh="sh_emoji_$base_sh"
sh="${!fmt_sh}"
[ -z "$sh" ] && sh="$base_sh"

# Bash Prompt
ps1_user="\[\e[36m\]\u\[\e[m\]"
ps1_host="\[\e[35m\]\h\[\e[m\]"
ps1_path="\[\e[34m\]\w\[\e[m\]"
ps1_sh="\[\e[37m\]\s\V\[\e[m\]"
# export PS1="$ps1_user💕$ps1_host:$ps1_path 🐚$ps1_sh 🔪 "
export PS1="$ps1_user💕$ps1_host:$ps1_path 🐚$ps1_sh > "

# FZF
export FZF_DEFAULT_OPTS="--layout=reverse --bind=tab:toggle-down,btab:toggle-up"

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"

# Manual sourcing
for file in ~/.{aliases,gorc,nvmrc,pyenvrc,dandyrc,sshagentrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Shortcuts sourcing
source ~/.fs_shortcuts_alias

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
