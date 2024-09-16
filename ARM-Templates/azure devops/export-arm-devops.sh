#!/bin/bash
curl -u :<PAT> \
  "https://dev.azure.com/{organization}/{project}/_apis/build/builds/{buildId}?api-version=6.0"
