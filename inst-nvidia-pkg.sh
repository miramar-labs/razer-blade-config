#!/usr/bin/env bash

VER=ubuntu-drivers devices | grep recommended | grep -o -E '[0-9]+'

$SUDO apt install -y nvidia-driver-$VER

echo "alias smi='watch -n1 nvidia-smi'" >> ~/.bashrc 