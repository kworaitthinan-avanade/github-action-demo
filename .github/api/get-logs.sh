#!/bin/bash
# bash .github/api/get-logs.sh 14553968737
# https://github.com/kworaitthinan-avanade/github-action-demo/actions/runs/14553968737
set -a
source .env
set +a

if [ -z "$1" ]; then
  echo "Usage: $0 <run_id>"
  exit 1
fi

RUN_ID="$1"

echo "Downloading logs for run ID: $RUN_ID"

curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_ACCESS_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/$OWNER/$REPO/actions/runs/$RUN_ID/logs" \
  -o "logs-$RUN_ID.zip"

echo "Logs saved to logs-$RUN_ID.zip"
