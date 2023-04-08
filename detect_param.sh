#!/bin/bash

uname -a |grep -i manjaro >/dev/null && DISTRO=manjaro
ls ~/.config/sway >/dev/null && DESKTOP=sway

echo $DISTRO $DESKTOP
