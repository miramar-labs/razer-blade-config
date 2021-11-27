#!/usr/bin/env bash

pip3 install fastai==2.5.3 nbdev -c constraints.txt

pushd ~
git clone git@github.com:fastai/fastai.git
#pip3 install -e "fastai[dev]" -c constraints.txt

git clone git@github.com:fastai/fastbook.git

#git clone git@github.com:fastai/nbdev.git
#pip3 install -e nbdev
popd