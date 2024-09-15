#!/bin/bash
curl -u :<PAT> \
  -X POST \
  -H "Content-Type: application/json" \
  -d @pipeline-config.json \
  "https://dev.azure.com/{organization}/{project}/_apis/build/pipelines?api-version=6.0"
