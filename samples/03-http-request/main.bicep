import 'http@v1' as http {}

param lattitude string
param longitude string

resource pointsReq 'request@v1' = {
  uri: 'https://api.weather.gov/points/${lattitude},${longitude}'
  format: 'json'
}

var location = pointsReq.body.properties.relativeLocation.properties

resource forecastReq 'request@v1' = {
  uri: pointsReq.body.properties.forecast
  format: 'json'
}

var props = forecastReq.body.properties

output location string = '${location.city}, ${location.state}'
output periods array = map(props.periods, x => {
  name: x.name
  temperature: x.temperature
})
