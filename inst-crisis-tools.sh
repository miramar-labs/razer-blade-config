#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get install -y procps util-linux sysstat iproute2 numactl 
sudo apt install -y linux-tools-common
sudo apt install -y linux-tools-$(uname -r)
sudo apt install -y bpfcc-tools bpftrace perf-tools-unstable trace-cmd
sudo apt install -y nicstat ethtool tiptop msr-tools
sudo apt install -y msr-tools
#sudo apt install -y pmc-tools




