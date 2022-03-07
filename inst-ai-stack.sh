#!/usr/bin/env bash

TAG=blade

if [[ "$#" -eq 1 ]]; then
    TAG=$1
fi

bash ./inst-py3.8.sh $TAG

source $HOME/venv/py3.8.0_$TAG/bin/activate

bash ./inst-torch.sh

bash ./inst-tf2.sh

bash ./inst-jlab.sh

#bash ./inst-fastai.sh

#bash ./inst-openai-gym.sh

bash ./inst-ansible.sh


