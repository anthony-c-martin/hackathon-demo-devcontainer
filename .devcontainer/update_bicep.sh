#!/bin/bash
# This script will update the binaries in the binaries directory with the latest binaries from the Bicep 'hackathon' branch

runId=$(gh run -R Azure/bicep list -b hackathon --limit 1 --json databaseId --jq ".[0].databaseId")

rm -Rf /tmp/bicep-bin
gh run -R Azure/bicep download $runId -n bicep-release-linux-x64 -D /tmp/bicep-bin
mv /tmp/bicep-bin/bicep $(dirname -- "$0")/binaries/bicep-release-linux-x64

rm -Rf /tmp/bicep-vsix
gh run -R Azure/bicep download $runId -n vscode-bicep.vsix -D /tmp/bicep-vsix
mv /tmp/bicep-vsix/vscode-bicep.vsix $(dirname -- "$0")/binaries/vscode-bicep.vsix
