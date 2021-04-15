#!/bin/bash -e

wget https://github.com/itamae-kitchen/mitamae/releases/download/v1.11.7/mitamae-x86_64-linux -O mitamae
chmod +x mitamae
sudo ./mitamae local recipe/core/root/*.rb
./mitamae local recipe/core/user/*.rb
if [[ "$WSL_DISTRO_NAME" == "" ]]; then
  sudo ./mitamae local recipe/ubuntu-desktop/root/*.rb
  ./mitamae local recipe/ubuntu-desktop/user/*.rb
fi
