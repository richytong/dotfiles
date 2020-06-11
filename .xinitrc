#!/bin/sh

# Where is the config
export XDG_CONFIG_HOME="$HOME/.config"

# Cursor
xset r rate 200 60

# Hide cursor
unclutter --fork

# Wallpaper
# feh --bg-scale ~/.media/castle-in-the-sky.png
feh --bg-scale ~/.media/mountains-3.png

# Remappings
xmodmap ~/.Xmodmap
xmodmap -e "remove Mod1 = Alt_R" -e "add Mod3 = Alt_R"

# xserver xresources
xrdb ~/.Xresources

# notification daemon
dunst &

# compositor
picom --experimental-backends --backend glx &

# wm
exec i3
