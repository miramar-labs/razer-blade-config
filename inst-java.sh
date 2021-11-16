#!/usr/bin/env bash

sudo apt install default-jdk

echo 'export JAVA_HOME=/usr/lib/jvm/openjdk-11' >> ~/.bashrc 
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc 




