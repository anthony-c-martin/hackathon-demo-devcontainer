#!/bin/bash

usage="Usage: ./deploy.sh <github_access_token>"
githubAccessToken=${1:?"Missing access token. ${usage}"}

az account set -n "Blueprint Assignment Test 4"
az deployment group create \
  --resource-group "ant-test" \
  --template-file $(dirname -- "$0")/main.bicep \
  --parameters \
    githubAccessToken=$githubAccessToken