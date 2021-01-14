#!/usr/bin/env bash

set -euxo pipefail

if ! kubectl get ns cert-manager; then
  kubectl create ns cert-manager
fi

# This is for kubernetes v1.16+
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.1.0/cert-manager.crds.yaml
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.1.0/cert-manager.yaml
