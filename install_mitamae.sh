#!/bin/bash -e
ls ./mitamae && exit 0
ARCH=`uname -m`
OS=`uname |tr '[A-Z]' '[a-z]'`
if [[ "$ARCH" = "arm64" ]]; then
  ARCH="aarch64"
fi
DISTRO=$1
curl -L https://github.com/itamae-kitchen/mitamae/releases/download/v1.12.8/mitamae-${ARCH}-${OS} > mitamae
chmod +x mitamae
