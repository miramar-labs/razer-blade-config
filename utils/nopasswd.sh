#!/usr/bin/env bash

sudo tee -a /etc/sudoers.d/$USER >/dev/null <<EOF
$USER ALL=(ALL) NOPASSWD:ALL
EOF