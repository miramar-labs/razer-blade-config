#!/usr/bin/env bash

TAG=blade

if [[ "$#" -eq 1 ]]; then
    TAG=$1
fi

bash inst-py3.8.sh $TAG

source $HOME/venv/py3.8.0_$TAG/bin/activate

bash inst-ai-stack.sh

echo 'py3.8.0_blade' >> ~/.bashrc

