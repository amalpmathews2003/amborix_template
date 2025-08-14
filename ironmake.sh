#!/bin/bash

# only for running in docker

export $(grep -v '^#' .env | grep -v '^\s*$$' | sed 's/^export //')


mkdir -p build
cd build
rm -rf *

cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr/ ..
make
sudo make install
