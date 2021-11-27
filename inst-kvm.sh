#!/usr/bin/env bash

sudo apt update

sudo apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

sudo adduser $USER libvirt

sudo adduser $USER kvm

virsh list --all

sudo systemctl enable --now libvirtd

sudo apt install -y virt-manager

cat <<EOT >> ~/.bashrc
set -a
vman() {
  sudo virt-manager  
}
set +a
EOT
