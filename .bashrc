#!/bin/sh

# XDG
export XDG_CONFIG_HOME=$HOME

# Manual sourcing
for file in ~/.{aliases,gorc,nvmrc,pyenvrc,dandyrc,sshagentrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
