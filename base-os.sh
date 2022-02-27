#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "NO_PASSWORDLESS" ]; then
  # Passwordless sudo:
  bash ./nopasswd.sh
fi

if [ -z "NO_NVTOP" ]; then
  # NVTop
  bash ./inst-nvtop.sh
fi

