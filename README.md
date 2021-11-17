# Razer Blade 15 AI Workstation Config

This is how I turn my Razer Blade 15 Laptop (with NVidia GPU) into an AI workstation.

## Install Ubunti 20.04
 - Use a USB stick to install Ubuntu
   - remember to select LVM when configuring disks
 - Fix the'suspend on lid closed' bug by editing GRUB:
   - edit /etc/default/grub:
          add `button.lid_init_state=open`:

          GRUB_CMDLINE_LINUX_DEFAULT="quiet splash button.lid_init_state=open"
          GRUB_CMDLINE_LINUX="button.lid_init_state=open"
   - rebuild grub:

	      update-grub
  - Generate SSH keys:

        ssh-keygen

  - Add your SSH public key to Github

  - Clone this repo and run:

        bash all.sh
# Notes
  - brew
  
  	    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  - vscode
  - sublime
  - mathematica
  - java
  - go
  - k8s tools
  - nvtop
  - nomachine

# Installing NVidia Driver & CUDA Toolkit 

- Install Recommended NVidia drive via API:

        VER=ubuntu-drivers devices | grep recommended | grep -o -E '[0-9]+'

        sudo apt install -y nvidia-driver-$VER

- Pick a CUDA version that is compatible with both Torch and TF2:

  - CUDA [tested versions](https://developer.nvidia.com/cuda-toolkit-archive)

  - Tensorflow [tested versions](https://www.tensorflow.org/install/source#gpu)

  - PyTorch [tested versions](https://download.pytorch.org/whl/torch_stable.html)
  
- Let's go with CUDA 11.0.3 (as of Nov 14 2021):
  
        CUDAVER=11.0.3
        CUDAVERFULL=${CUDAVER}_450.51.06

        CUDAVER=11.0.3
        CUDAVERFULL=${CUDAVER}_450.51.06

        wget "https://developer.download.nvidia.com/compute/cuda/$CUDAVER/local_installers/cuda_${CUDAVERFULL}_linux-002.run" -P ~/Downloads

        sh ~/Downloads/cuda_${CUDAVERFULL}_linux-002.run --silent --toolkit --samples --no-opengl-libs 

        echo 'export PATH=/usr/local/cuda-11.0/bin:$PATH' >> ~/.bashrc
        echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc

- Install cuDNN

  - [Download](https://developer.nvidia.com/cudnn)

  - [Archive](https://developer.nvidia.com/rdp/cudnn-archive)
    - look for latest versions supporting [CUDA 11.0](https://developer.nvidia.com/rdp/cudnn-archive#a-collapse811-111) and add them to GDrive. Then Install:

                CUDNNVER=8.0.5.39-1+cuda11.0

                ggetf 102CNdYQMpRUAedpKzgpX48rpjgFW00Mt ~/Downloads/cuDNN

                sudo dpkg -i ~/Downloads/cuDNN/{CUDNNVER}/libcudnn8_${CUDNNVER}_amd64.deb
                sudo dpkg -i ~/Downloads/cuDNN/{CUDNNVER}/libcudnn8-dev_${CUDNNVER}_amd64.deb
                sudo dpkg -i ~/Downloads/cuDNN/{CUDNNVER}/libcudnn8-samples_${CUDNNVER}_amd64.deb

- Install Torch, Tensorflow and JupyterLab:

  - NOTE: check Torch for compatible Python versions (3.8 in this example)

                pip3 install tensorflow==2.4.1

                pip3 install torch==1.7.0+cu110 torchvision==0.8.1+cu110 torchaudio==0.7.0 -f https://download.pytorch.org/whl/cu110/torch_stable.html

