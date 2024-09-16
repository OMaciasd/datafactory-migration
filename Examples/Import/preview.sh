#!/bin/bash
az group deployment what-if --resource-group myResourceGroup --template-file arm-template.json --parameters arm-parameters.json
