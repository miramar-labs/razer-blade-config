#!/usr/bin/env bash

# https://developer.nvidia.com/cuda-toolkit-archive

CUDAVER=11.0.3
CUDAVERFULL=${CUDAVER}_450.51.06

wget "https://developer.download.nvidia.com/compute/cuda/$CUDAVER/local_installers/cuda_${CUDAVERFULL}_linux-002.run" -P ~/Downloads

sh ~/Downloads/cuda_${CUDAVERFULL}_linux-002.run --silent --toolkit --samples --no-opengl-libs 

echo 'export PATH=/usr/local/cuda-11.0/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc

# Profiler
echo "alias nvvp='nvvp -vm /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java'" >> ~/.bashrc

 
