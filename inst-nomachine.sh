#!/usr/bin/env bash

VERSHORT=7.7
VER=$VERSHORT.4_1

wget https://download.nomachine.com/download/${VERSHORT}/Linux/nomachine_${VER}_amd64.deb -P ~/Downloads

sudo dpkg -i ~/Downloads/nomachine_${VER}_amd64.deb

sudo ufw allow 4000/tcp
sudo ufw allow 4011:4999/udp

