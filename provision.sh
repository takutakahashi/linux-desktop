#!/bin/bash

rm -rf /tmp/linux-desktop
git clone https://github.com/takutakahashi/linux-desktop.git /tmp/linux-desktop
cd /tmp/linux-desktop
wget https://github.com/itamae-kitchen/mitamae/releases/download/v1.11.7/mitamae-x86_64-linux -O mitamae
chmod +x mitamae
./mitamae local recipe/*
