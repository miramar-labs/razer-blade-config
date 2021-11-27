#!/usr/bin/env bash

# https://developer.nvidia.com/rdp/cudnn-archive

CUDNNVER=8.0.5.39-1+cuda11.0

ggetf 102CNdYQMpRUAedpKzgpX48rpjgFW00Mt ~/Downloads/cuDNN/${CUDNNVER}

sudo dpkg -i ~/Downloads/cuDNN/{CUDNNVER}/libcudnn8_${CUDNNVER}_amd64.deb
sudo dpkg -i ~/Downloads/cuDNN/{CUDNNVER}/libcudnn8-dev_${CUDNNVER}_amd64.deb
sudo dpkg -i ~/Downloads/cuDNN/{CUDNNVER}/libcudnn8-samples_${CUDNNVER}_amd64.deb

