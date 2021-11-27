#!/usr/bin/env bash

gget 1STPUSVikNOIRev-U83EFjUCnMqBbWsQC /tmp/

sudo mkdir -p /var/lib/libvirt/images/Ubuntu-20-04/

sudo virt-install \
--name=ubu2004 \
--description='Ubuntu 20.04' \
--ram=1536 \
--vcpus=1 \
--disk=/var/lib/libvirt/images/Ubuntu-20-04/Ubu2004.qcow,size=15 \
--cdrom=/tmp/ubuntu-20.04.3-desktop-amd64.iso \
--graphics=vnc