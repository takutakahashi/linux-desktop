#!/bin/bash

uname -a |grep -i manjaro >/dev/null && DISTRO=manjaro
which sway >/dev/null && DESKTOP=sway

echo $DISTRO $DESKTOP