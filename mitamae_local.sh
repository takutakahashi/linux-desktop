#!/bin/bash
MITAMAE=$PWD/mitamae
DIRPATH=$PWD/$1
cd $DIRPATH/root && sudo $MITAMAE local ./*.rb
cd $DIRPATH/user && $MITAMAE local ./*.rb
