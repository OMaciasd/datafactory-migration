#!/bin/bash
az deployment group create --resource-group MyResourceGroup --template-file datafactory-template.json --parameters parameters.json
