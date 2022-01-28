#!/bin/bash -e
ARCH=`uname -m`
OS=`uname |tr '[A-Z]' '[a-z]'`
if [[ "$ARCH" = "arm64" ]]; then
  ARCH="aarch64"
fi
wget https://github.com/itamae-kitchen/mitamae/releases/download/v1.12.8/mitamae-${ARCH}-${OS} -O mitamae
chmod +x mitamae
sudo ./mitamae local recipe/core/root/*.rb
./mitamae local recipe/core/user/*.rb
# for wsl
#if [[ "$WSL_DISTRO_NAME" != "" ]]; then
#fi

# for Linux Desktop

if [[ "$OS" = "linux" ]]; then
  sudo ./mitamae local recipe/linux/core/root/*.rb
  ./mitamae local recipe/linux/core/user/*.rb
  if [[ "$XDG_CURRENT_DESKTOP" != "" ]]; then
    sudo ./mitamae local recipe/linux/desktop/root/*.rb
    ./mitamae local recipe/linux/desktop/user/*.rb
  fi
fi
