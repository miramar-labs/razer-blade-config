#!/usr/bin/env bash

# fast.ai 2.5.3 min deps:
pip3 install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.1 -f https://download.pytorch.org/whl/cu110/torch_stable.html

pip3 install tensorflow==2.4.1

pip3 install jupyterlab 

pip3 install fastai==2.5.3 nbdev -c constraints.txt

pushd ~
git clone git@github.com:fastai/fastai.git
#pip3 install -e "fastai[dev]" -c constraints.txt

git clone git@github.com:fastai/fastbook.git

#git clone git@github.com:fastai/nbdev.git
#pip3 install -e nbdev
popd





