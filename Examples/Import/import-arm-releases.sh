#!/bin/bash
curl -u :<PAT> \
  -X POST \
  -H "Content-Type: application/json" \
  -d @release-config.json \
  "https://dev.azure.com/{organization}/{project}/_apis/release/releases?api-version=6.0"
