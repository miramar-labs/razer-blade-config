#!/usr/bin/env bash

pushd ~
git clone https://github.com/openai/gym
cd gym
pip3 install -e .
popd