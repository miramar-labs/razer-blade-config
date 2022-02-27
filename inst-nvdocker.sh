#!/usr/bin/env bash

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | $SUDO apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | $SUDO tee /etc/apt/sources.list.d/nvidia-docker.list

$SUDO apt-get update
$SUDO apt-get install -y nvidia-docker2

$SUDO systemctl restart docker

#$SUDO docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi