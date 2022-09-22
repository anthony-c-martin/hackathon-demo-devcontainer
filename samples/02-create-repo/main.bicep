@secure()
param githubAccessToken string

import 'github@v1' as github {
  accessToken: githubAccessToken
}

resource repo 'repositories@v1' = {
  name: 'anttestrepo'
  visibility: 'public'
  description: 'Demo repo created with Bicep extensibility!'
  auto_init: true
}

var collaborators = [
  'shenglol'
  'jorgecotillo'
]

resource collab 'repositories/collaborators@v1' = [for collaborator in collaborators: {
  repo: 'anttestrepo'
  username: collaborator
  permission: 'push'
}]

output repo object = repo
