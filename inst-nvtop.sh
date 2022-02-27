#!/usr/bin/env bash

cd ~
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake ..
make
$SUDO make install