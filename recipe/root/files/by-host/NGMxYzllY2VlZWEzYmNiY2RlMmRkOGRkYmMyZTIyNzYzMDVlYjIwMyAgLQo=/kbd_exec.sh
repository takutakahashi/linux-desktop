#!/bin/bash
xhost +SI:localuser:root
nohup /usr/bin/kbd.sh >/dev/null 2>&1 &
