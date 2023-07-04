#!/bin/bash

source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc

alias k=kubectl
complete -o default -F __start_kubectl k

export now="--force --grace-period 0"
export do="--dry-run=client -o yaml" 
export kns="kubectl config set-context --current --namespace"
export kgs="kubectl config get-contexts"