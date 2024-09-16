#!/bin/bash
curl -u :<PAT> \
  "https://dev.azure.com/{organization}/{project}/_apis/serviceendpoint/endpoints?api-version=6.0"

curl -u :<PAT> \
  "https://dev.azure.com/{organization}/{project}/_apis/serviceendpoint/endpoints/{endpointId}?api-version=6.0"
