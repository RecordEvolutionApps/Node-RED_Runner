#!/bin/bash

if [ -z "$NODE_RED_FLOW" ]; then
  echo "Error: NODE_RED_FLOW is not set"
  exit 1
fi

echo "using env variable NODE_RED_FLOW"

echo "$NODE_RED_FLOW" | jq '.' > flows.json

echo "Starting node-red ..."

if [[ "$DEV_MODE" == "true" ]]; then
  ADMIN_ROOT="/"
  UI_ROOT="/ui"
else
  ADMIN_ROOT="/admin"
  UI_ROOT="/"
fi

echo The admin root: $ADMIN_ROOT

envsubst < custom-settings.json > custom-settings_run.json

./node_modules/.bin/node-red -D @./custom-settings_run.json flows.json

