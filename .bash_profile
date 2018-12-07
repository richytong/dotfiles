# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Manual sourcing
for file in ~/.{aliases,gorc,nvmrc,pyenvrc,dandyrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
