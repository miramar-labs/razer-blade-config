#!/usr/bin/env bash

DISTRO=`lsb_release -a | grep 'Codename' | awk '{print $2}'`

echo $DISTRO

sudo tee -a /etc/apt/sources.list >/dev/null <<EOF
  deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $DISTRO contrib
EOF

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get update

sudo apt-get install -y virtualbox-6.1
