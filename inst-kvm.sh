#!/usr/bin/env bash

$SUDO apt update

$SUDO apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

$SUDO adduser $USER libvirt

$SUDO adduser $USER kvm

virsh list --all

$SUDO systemctl enable --now libvirtd

$SUDO apt install -y virt-manager

cat <<EOT >> ~/.bashrc
set -a
vman() {
  $SUDO virt-manager  
}
set +a
EOT
