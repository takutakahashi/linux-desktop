#!/bin/bash
sleep 1
DISPLAY=":0"
HOME=/home/takutaka
XAUTHORITY=$HOME/.Xauthority
export DISPLAY HOME XAUTHORITY
xset r rate 210 40
setxkbmap
xmodmap /opt/.Xmodmap
