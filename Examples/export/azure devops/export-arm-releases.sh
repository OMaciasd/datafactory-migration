#!/bin/bash
curl -u :<PAT> \
  "https://dev.azure.com/{organization}/{project}/_apis/release/releases/{releaseId}?api-version=6.0"
