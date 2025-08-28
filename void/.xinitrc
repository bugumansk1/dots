#!/bin/sh

picom --config ~/.config/picom/picom.conf &
feh --bg-scale ~/Downloads/curvy-narrow-muddy-road-dark-forest-surrounded-by-greenery-little-light-coming-from.jpg &
export TZ=Europe/Berlin
dwm-status ~/.config/dwm-status/dwm-status.json &
setxkbmap de &
pywalfox start &
exec dwm
