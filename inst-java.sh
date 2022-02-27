#!/usr/bin/env bash

$SUDO apt install default-jdk

echo 'export JAVA_HOME=/usr/lib/jvm/openjdk-11' >> ~/.bashrc 
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc 

# Also Java 8 for legacy apps
$SUDO apt install -y openjdk-8-jdk



