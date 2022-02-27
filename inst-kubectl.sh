#!/usr/bin/env bash
VERSION=

if [[ $VERSION -eq "" ]]; then
    VERSION=`curl -L -s https://dl.k8s.io/release/stable.txt`
fi

echo $VERSION

curl -LO "https://dl.k8s.io/release/$VERSION/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

mkdir $HOME/.kube

rsync -av -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --rsync-path="sudo rsync" "aaron"@"192.168.0.51":/etc/kubernetes/admin.conf admin.conf
mv admin.conf ~/.kube/config
echo 'source <(kubectl completion bash)' >>~/.bashrc
echo 'alias k=kubectl' >>~/.bashrc
echo 'complete -F __start_kubectl k' >>~/.bashrc

