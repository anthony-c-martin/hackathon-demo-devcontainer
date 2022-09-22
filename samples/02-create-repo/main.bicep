@secure()
param githubAccessToken string

import 'github@v1' as github {
  accessToken: githubAccessToken
}

resource repo 'repositories@v1' = {
  name: 'anttestrepo'
  visibility: 'public'
  description: 'Demo repo created with Bicep extensibility!'
}

output repo object = repo
