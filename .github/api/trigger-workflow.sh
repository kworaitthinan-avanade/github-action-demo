#!/bin/bash
# bash .github/api/trigger-workflow.sh

set -a
source .env
set +a

# Define workflow ID directly here
WORKFLOW_ID=157122973

# Optional: Accept branch as argument (defaults to main)
REF="${1:-main}"

echo "Triggering workflow ID: $WORKFLOW_ID on branch: $REF"

curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_ACCESS_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/$OWNER/$REPO/actions/workflows/$WORKFLOW_ID/dispatches" \
  -d "{\"ref\":\"$REF\"}"
