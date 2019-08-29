#!/bin/sh
TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiJ9.eyJpYXQiOjE1NjcwMTg2NDcsImV4cCI6MTU2NzAyMjI0NywiYXVkIjoiMzE5OTcyMDgzMzExIn0.2cPAWLEaXNSwpx5crHNkNhtikds4LRNs5kQSTGW8gP3ipg_1gdWzNf9dNoPdy0wEtq1Gqam6Tem2SQzMFXo2Eg
curl -X POST \
  -H "authorization: Bearer $TOKEN" \
  -H 'content-type: application/json' \
  -H 'cache-control: no-cache' \
  --data '{"binary_data": "aGVsbG8K"}' \
  'https://cloudiotdevice.googleapis.com/v1/projects/319972083311/locations/europe-west1/registries/iotcore-registry/devices/esp32:publishEvent'
