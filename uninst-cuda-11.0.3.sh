#!/usr/bin/env bash

# DO NOT install nvidia driver via APT
# https://developer.nvidia.com/cuda-toolkit-archive
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html

CUDAVER=11.0

sudo /usr/local/cuda-$CUDAVER/bin/cuda-uninstaller