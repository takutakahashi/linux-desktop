#!/bin/bash -e
cd $HOME/.go/src/github.com/takutakahashi/linux-desktop || true
git pull origin master
./install_mitamae.sh
sudo ./mitamae local recipe/misc/install_deps.rb
if [[ "$1" = "" ]]; then
  make `./detect_param.sh`
else
  make $@
fi
