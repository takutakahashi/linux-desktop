#!/bin/bash -e

wget https://github.com/itamae-kitchen/mitamae/releases/download/v1.11.7/mitamae-x86_64-linux -O mitamae
chmod +x mitamae
sudo ./mitamae local recipe/root/*.rb
./mitamae local recipe/user/*.rb
