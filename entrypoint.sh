#!/bin/bash -e

./install_mitamae.sh
sudo ./mitamae local recipe/misc/install_deps.rb
if [[ "$1" = "" ]]; then
  make `./detect_param.sh`
else
  echo make $@
fi
