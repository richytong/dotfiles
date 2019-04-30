#!/bin/sh

# Where is the config
export XDG_CONFIG_HOME="$HOME/.config"

# Cursor
xset r rate 200 60

# Hide cursor
unclutter --fork

# Wallpaper
feh --bg-scale ~/media/orth.png

# Remappings
xmodmap ~/.Xmodmap
xmodmap -e "remove Mod1 = Alt_R" -e "add Mod3 = Alt_R"

# Uxrvt
xrdb ~/.Xresources

# wm
exec i3
