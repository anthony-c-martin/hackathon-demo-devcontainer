# hackathon-demo-devcontainer

This repo provides a quick Codespaces / Remote Dev Containers environment to play around with the 3rd party extensibility features enabled for the Microsoft Hackathon.

## Running Samples
To run these samples, you will need to launch this repo using Codespaces. This will ensure you have the correct version of Bicep CLI & VSCode extension installed to access the 3rd party extensibility features.

Each sample consists of a `deploy.sh` script to run it, as well as a `main.bicep` file. You can edit the `.bicep` files before running if desired.

### 01: Get Repo
Fetches information about a repo and outputs it as a template output.

```sh
bash ./samples/01-get-repo/deploy.sh <github_access_token>
```

### 02: Create Repo
Creates a new repo under your GitHub account.

Run:
```sh
bash ./samples/02-create-repo/deploy.sh <github_access_token>
```

### 03: HTTP Request
Submits an HTTP GET request to https://httpstat.us/418, and returns the status string.

Run:
```sh
bash ./samples/03-create-repo/deploy.sh
```