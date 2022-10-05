#!/bin/bash

az account set -n "Blueprint Assignment Test 4"
az deployment group create \
  --resource-group "ant-test" \
  --template-file $(dirname -- "$0")/main.bicep \
  --parameters \
    lattitude=47.6740 \
    longitude=-122.1215 \
  --query "properties.outputs"