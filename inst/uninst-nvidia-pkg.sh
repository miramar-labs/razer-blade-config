#!/usr/bin/env bash

sudo dpkg -P $(dpkg -l | grep nvidia-driver | awk '{print $2}')
sudo apt autoremove
sudo apt install xserver-xorg-video-nouveau
sudo reboot