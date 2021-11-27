#!/usr/bin/env bash

sudo apt update
sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common

curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"

sudo apt install -y sublime-text




