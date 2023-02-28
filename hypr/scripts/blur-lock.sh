#!/usr/bin/bash
#thanks to: https://www.reddit.com/r/swaywm/comments/g5g2n8/swaylock_script_to_blur_the_screen_and_add_a_lock/
image="/tmp/swaylockscreen.jpeg"

grim -t jpeg -q 1 $image && ffmpeg -i $image -filter_complex boxblur=lr=20:lp=2 -y $image
convert $image /usr/share/wlogout/icons/lock.png  -geometry +1464+350 -composite -matte $image
swaylock -f -i "$image"

echo piss off
