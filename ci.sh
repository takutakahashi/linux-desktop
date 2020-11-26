#!/bin/bash

apt update
apt install -y git wget sudo
cd /src
sudo ./provision.sh
