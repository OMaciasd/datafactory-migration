#!/bin/bash
curl -u :<PAT> \
  -X POST \
  -H "Content-Type: application/json" \
  -d @service-connection-config.json \
  "https://dev.azure.com/{organization}/{project}/_apis/serviceendpoint/endpoints?api-version=6.0"
