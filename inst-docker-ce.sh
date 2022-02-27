#!/usr/bin/env bash

$SUDO apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | $SUDO apt-key add -

$SUDO add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-cache policy docker-ce

$SUDO apt install -y docker-ce

$SUDO usermod -aG docker ${USER}

su - ${USER}
