#!/bin/bash -e

./install_mitamae.sh
sudo ./mitamae local recipe/misc/install_deps.rb
make `./detect_param.sh`
