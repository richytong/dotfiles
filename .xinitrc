#!/bin/sh

# Cursor
xset r rate 200 60

# Wallpaper
feh --bg-scale ~/media/orth.png

xmodmap ~/.Xmodmap
xmodmap -e "remove Mod1 = Alt_R" -e "add Mod3 = Alt_R"
xrdb ~/.Xresources

# Make meta key work with urxvt
read -r -d '' PyURxvtMeta8 <<-'EOF'
	#!/usr/bin/env python3
	import locale
	locale.setlocale(locale.LC_ALL, "")
	encoding = locale.getlocale()[1]
	# ASCII range
	for i in range(32, 128):
	    seq = "".join("\{:o}".format(j) for j in chr(i + (1<<7)).encode(encoding))
	    key = "{:#06X}".format(i)
	    print("urxvt*keysym.Meta-{}: {}".format(key, seq))
EOF

xrdb -merge <(python3 <<<"$PyURxvtMeta8")

# wm
exec i3-gaps
