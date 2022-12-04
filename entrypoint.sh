#!/bin/bash -e

DISTRO=$1
./install_mitamae.sh
./${DISTRO}.sh
