#!/usr/bin/env bash

pvcreate /dev/nvme1n1

vgextend vgubuntu /dev/nvme1n1

lvextend -l +100%FREE /dev/vgubuntu/root

resize2fs -p /dev/mapper/vgubuntu-root

