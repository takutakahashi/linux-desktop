#!/bin/bash

apt update
apt install -y git wget sudo
cd /src
./provision.sh
