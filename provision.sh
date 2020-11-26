#!/bin/bash

git clone https://github.com/takutakahashi/linux-desktop.git /tmp/linux-desktop
cd /tmp/linux-desktop
./entrypoint.sh
popd
rm -rf /tmp/linux-desktop
