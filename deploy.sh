#!/usr/bin/env bash

if [[ "$#" -ne 1 ]]; then
    echo "must supply local sudo password as arg";exit 1
fi

UZERID=`whoami`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# deploy
ansible-playbook ./deploy-blade.yml \
  --extra-vars ansible_become_password=$1 \
  --extra-vars _hosts=blade

