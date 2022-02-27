#!/usr/bin/env bash

$SUDO apt update
$SUDO apt install -y software-properties-common apt-transport-https wget

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | $SUDO apt-key add -

$SUDO add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

$SUDO apt install code




