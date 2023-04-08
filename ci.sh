#!/bin/bash -e
which sudo || (apt update && apt install -y sudo)
sudo apt update
sudo apt install -y git wget
cd /src
sudo ./setup.sh
