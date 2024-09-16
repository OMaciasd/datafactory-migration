#!/bin/bash
az deployment group validate --resource-group myRG --template-file myADFtemplate.json --parameters myADFparameters.json
