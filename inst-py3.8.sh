#!/usr/bin/env bash

UZERID=`whoami`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

TAG=blade

if [[ "$#" -eq 1 ]]; then
    TAG=$1
fi

deactivate
rm -rf ~/venv/py3.8.0_$TAG
bash ./pyvenv.sh 3.8.0 $TAG

#echo 'source $HOME/venv/py3.8.0_$TAG/bin/activate' >> ~/.bashrc 




