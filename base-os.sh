#!/usr/bin/env bash

sudo apt update

sudo apt install -y linux-headers-$(uname -r)

sudo apt install -y python3-pip build-essential git-core libffi-dev libssl-dev autoconf automake libtool terminator libcurl4-openssl-dev libxml2-dev libfuse-dev

sudo apt install -y libsqlite3-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libnss3-dev libreadline-dev libffi-dev terminator

sudo apt install -y python3-pip libbz2-dev gnome-tweaks cmake

sudo apt install -y lzma liblzma-dev tree baobab

cat <<EOT >> ~/.bashrc
set -a
renv() {
  source $HOME/.bashrc  
}
gget() {
  echo "gdown  https://drive.google.com/uc?id=$1"
  gdown  https://drive.google.com/uc?id=$1
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

# NVidia driver
bash inst-nvidia-pkg.sh

# CUDA Toolkit
bash inst-cuda-11.0.3.sh

# cuDNN
bash inst-cudnn-11.0.3.sh

# Sublime Text
bash inst-sublime.sh

# VSCode
bash inst-vscode.sh

# Brew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

