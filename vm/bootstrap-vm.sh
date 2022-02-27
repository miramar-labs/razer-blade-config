#!/usr/bin/env bash

$SUDO apt update

$SUDO apt install -y git

pip3 install virtualenvwrapper gdown

gdown 1PIYeDQCtTLUEit6CeltV_RB4Tc1u2dH8 /tmp

tar -xvf keys.tar.xz --strip-components=1 -C $HOME

git clone git@github.com:miramar-labs/razer-blade-config.git

pushd razer-blade-config

bash base-os.sh

bash packages.sh

popd


