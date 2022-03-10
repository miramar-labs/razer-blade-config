#!/usr/bin/env bash

cd ~
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
sudo apt-get update -y
sudo apt-get install -y cmake ncurses-dev
cmake .. -DNVML_RETRIEVE_HEADER_ONLINE=True
make
sudo make install