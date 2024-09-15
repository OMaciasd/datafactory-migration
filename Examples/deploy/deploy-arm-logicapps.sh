#!/bin/bash
az logic workflow create \
  --resource-group myResourceGroup \
  --name myLogicApp \
  --definition @logicapp-definition.json
