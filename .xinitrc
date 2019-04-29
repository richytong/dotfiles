#!/bin/sh

xset r rate 200 60
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xmodmap -e "remove Mod1 = Alt_R" -e "add Mod3 = Alt_R"

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

exec i3
