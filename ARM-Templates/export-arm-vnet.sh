#!/bin/bash
az network vnet show \
  --resource-group myResourceGroup \
  --name myVnet \
  --output json > vnet-config.json
