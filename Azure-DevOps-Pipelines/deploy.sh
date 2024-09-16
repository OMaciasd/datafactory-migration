#!/bin/bash
RESOURCE_GROUP=$1
TEMPLATE_FILE=$2
PARAMETERS_FILE=$3

az deployment group create \
  --resource-group $RESOURCE_GROUP \
  --template-file $TEMPLATE_FILE \
  --parameters @$PARAMETERS_FILE
