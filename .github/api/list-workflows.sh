#!/bin/bash
# bash .github/api/list-workflows.sh

set -a
source .env
set +a

curl -s -H "Authorization: Bearer $GITHUB_ACCESS_TOKEN" \
  "https://api.github.com/repos/$OWNER/$REPO/actions/workflows" | jq
