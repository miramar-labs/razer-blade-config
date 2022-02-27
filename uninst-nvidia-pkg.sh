#!/usr/bin/env bash

$SUDO dpkg -P $(dpkg -l | grep nvidia-driver | awk '{print $2}')
$SUDO apt autoremove
$SUDO apt install xserver-xorg-video-nouveau
$SUDO reboot