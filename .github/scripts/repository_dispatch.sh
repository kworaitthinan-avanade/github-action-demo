#!/bin/bash
# .github/scripts/repository_dispatch.sh
# This script sends a repository dispatch event to the GitHub API.

# Load environment variables from .env
set -a
source .env
set +a

echo "Using token: ${#GITHUB_ACCESS_TOKEN} characters long"

curl -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token $GITHUB_ACCESS_TOKEN" \
  https://api.github.com/repos/kworaitthinan-avanade/github-action-demo/dispatches \
  -d '{"event_type":"trigger-build"}'