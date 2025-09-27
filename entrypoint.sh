#!/bin/bash

if [ -z "$NODE_RED_FLOW" ]; then
  echo "Error: NODE_RED_FLOW is not set"
  exit 1
fi

echo "using env variable NODE_RED_FLOW"

echo "$NODE_RED_FLOW" | jq '.' > flows.json

echo "Starting node-red ..."

if [[ "$DEV_MODE" == "true" ]]; then
  export ADMIN_ROOT="/"
  export UI_ROOT="/ui"
else
  export ADMIN_ROOT="/admin"
  export UI_ROOT="/"
fi

python3 -u register_device.py

echo The admin root: $ADMIN_ROOT

envsubst < custom-settings.json > custom-settings_run.json

cat custom-settings_run.json

./node_modules/.bin/node-red -D @./custom-settings_run.json flows.json

