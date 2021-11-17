#!/usr/bin/env bash

pushd ~
git clone https://github.com/openai/gym
cd gym
pip install -e .
popd