#!/bin/bash

apt update
apt install -y git wget
cd /src
./provision.sh
