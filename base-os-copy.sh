#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "NO_PASSWORDLESS" ]; then
  # Passwordless sudo:
  bash ./nopasswd.sh
fi

if [ -z "NO_SSH" ]; then
  # SSH Keys (known to GitHub):
  bash ./inst-keys.sh
fi

# Common System packages:
$SUDO apt update

$SUDO apt install -y linux-headers-$(uname -r)

$SUDO apt install -y apt-utils build-essential git-core autoconf automake cmake libtool 

$SUDO apt install -y libcurl4-openssl-dev libxml2-dev libfuse-dev libffi-dev libssl-dev libbz2-dev lzma liblzma-dev

$SUDO apt install -y libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libreadline-dev 

$SUDO apt install -y python3-pip tree git curl wget terminator baobab htop cpu-checker gnome-tweaks chrome-gnome-shell ufw

cat <<EOT >> ~/.bashrc
set -a
renv() {
  source $HOME/.bashrc  
}
gget() {
  echo "gdown  https://drive.google.com/uc?id=$1 -O $2"
  gdown  https://drive.google.com/uc?id=$1 -O $2
}
ggetf() {
  echo "gdown https://drive.google.com/drive/folders/$1 -O $2 --folder"
  gdown https://drive.google.com/drive/folders/$1 -O $2 --folder
}
set +a
EOT

pip3 install virtualenvwrapper gdown

echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc 

git config --global url."git@github.com:".insteadOf "https://github.com/"
git config --global user.email "aaron@aaroncody.com"
git config --global user.name "Aaron Cody"
git config --global push.default simple

if [ -z "NO_NVIDIA_DRIVER" ]; then
  # NVidia driver
  bash ./inst-nvidia-pkg.sh
fi

if [ -z "NO_NVIDIA_CUDA" ]; then
  # CUDA Toolkit
  bash ./inst-cuda-11.0.3.sh

  # cuDNN
  bash ./inst-cudnn-11.0.3.sh
fi

if [ -z "NO_DOCKER" ]; then
  # Docker
  bash ./inst-docker-ce.sh

  # NVidia docker
  bash ./inst-nvdocker.sh
fi

if [ -z "NO_MATHEMATICA" ]; then
  # Mathematica
  bash ./inst-mathematica.sh
fi

if [ -z "NO_VM" ]; then
  # VM Software
  bash ./inst-vkm.sh
  bash ./inst-vbox.sh
fi

if [ -z "NO_SUBLIME" ]; then
  # Sublime Text
  bash ./inst-sublime.sh
fi

if [ -z "NO_VSCODE" ]; then
  # VSCode
  bash ./inst-vscode.sh
fi

if [ -z "NO_BREW" ]; then
  # Brew
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ -z "NO_NVTOP" ]; then
  # NVTop
  bash ./inst-nvtop.sh
fi

if [ -z "NO_NOMACHINE" ]; then
  # NoMachine
  bash ./inst-nomachine.sh
fi

