#!/bin/bash
az functionapp create \
  --resource-group myResourceGroup \
  --name myFunctionApp \
  --storage-account myStorageAccount \
  --plan myAppServicePlan \
  --runtime dotnet \
  --runtime-version 3.1 \
  --functions-version 3
