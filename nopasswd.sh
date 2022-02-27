#!/usr/bin/env bash

$SUDO tee -a /etc/sudoers.d/$USER >/dev/null <<EOF
$USER ALL=(ALL) NOPASSWD:ALL
EOF