#!/bin/bash
MITAMAE=$PWD/mitamae
cd $1
cd root
sudo $MITAMAE local ./*.rb
cd ../user
$MITAMAE local ./*.rb
