import 'http@v1' as http {}

resource req 'request@v1' = {
  requestUri: 'https://httpstat.us/418'
}

output status string = req.status
