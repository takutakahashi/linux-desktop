#!/bin/bash

uname -a |grep -i manjaro >/dev/null && DISTRO=manjaro
which sway >/dev/null 2>&1 && DESKTOP="$DESKTOP sway"
which gnome-shell >/dev/null 2>&1 && DESKTOP="$DESKTOP gnome"
echo $DISTRO $DESKTOP
