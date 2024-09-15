#!/bin/bash
az network vnet create \
  --resource-group myResourceGroup \
  --name myVnet \
  --address-prefix 10.0.0.0/16

az network vnet subnet create \
  --resource-group myResourceGroup \
  --vnet-name myVnet \
  --name mySubnet \
  --address-prefix 10.0.1.0/24
