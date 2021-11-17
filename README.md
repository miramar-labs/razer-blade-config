# Razer Blade 15 AI Workstation Configuration

This is how I turn my Razer Blade 15 Laptop (with NVidia GPU) into an AI workstation. Specs:
   - 64 GB RAM
   - 1TB SSD
   - NVidia GeForce RTX 2070 Max-Q GPU

![AI Workstation](./scrnshot.png)

## Install Ubunti 20.04
 - Use a USB stick to install Ubuntu
   - remember to select LVM when configuring disks
 - Fix the'suspend on lid closed' bug by editing GRUB:
   - NOTE: this is an issue with my particular laptop hardware/BIOS and may be optional
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
## Installed Software
  - vscode
  - sublime text
  - c++/java/go/python
  - nomachine
  - mathematica
  - NVidia driver
  - CUDA Toolikt/cuDNN/nvvpp/nvtop
  - jupyterlab
  - PyTorch
  - Tensorflow2 (GPU build)
  - ML stack: numpy/scipy/pandas/matplotlib ...
  - fast.ai
  - OpenAI Gym

