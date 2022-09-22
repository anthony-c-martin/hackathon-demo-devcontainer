@secure()
param githubAccessToken string

import 'github@v1' as github {
  accessToken: githubAccessToken
}

resource repo 'repositories@v1' existing = {
  name: 'hackathon-demo-devcontainer'
}

output repo object = repo
