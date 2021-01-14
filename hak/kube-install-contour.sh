#!/usr/bin/env bash

set -euxo pipefail

# The service neds to have spec.loadBalancerIP: 20.72.216.129
# In Azure this is the "mibWikiIP" public IP in the "MC_mib-wiki_mib-wiki_westus2" resource group
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
