#!/bin/bash
sleep 1
DISPLAY=":0"
export DISPLAY
xset r rate 210 40
setxkbmap
xmodmap /opt/.Xmodmap
