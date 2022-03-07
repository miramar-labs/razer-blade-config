#!/usr/bin/env bash

# Helm3
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# Helm2
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash
sudo mv /usr/local/bin/helm /usr/local/bin/helm2
kubectl --namespace kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm2 init --service-account tiller
