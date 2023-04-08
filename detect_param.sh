#!/bin/bash

uname -a |grep -i manjaro >/dev/null && DISTRO=manjaro

echo $DISTRO
