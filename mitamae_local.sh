#!/bin/bash
MITAMAE=$PWD/mitamae
cd $1
sudo $MITAMAE local root/*.rb
$MITAMAE local user/*.rb
