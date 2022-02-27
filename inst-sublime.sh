#!/usr/bin/env bash

$SUDO apt update
$SUDO apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common

curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | $SUDO apt-key add -

$SUDO add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"

$SUDO apt install -y sublime-text




