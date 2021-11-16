#!/usr/bin/env bash

pip3 install jupyterlab

echo "alias jlab='jupyter lab --ip=0.0.0.0 --port=8080 --allow-root'" >> ~/.bashrc