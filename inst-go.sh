#!/usr/bin/env bash

wget https://golang.org/dl/go1.17.3.linux-amd64.tar.gz

$SUDO rm -rf /usr/local/go 
$SUDO tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz
rm go1.17.3.linux-amd64.tar.gz

echo 'export GOROOT=/usr/local/go' >> ~/.bashrc 
echo 'export GOPATH=$HOME/go' >> ~/.bashrc 
echo 'exprt PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc 
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bashrc 



