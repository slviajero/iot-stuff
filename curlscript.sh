#!/bin/sh

. token.sh

curl -X POST \
  -H "authorization: Bearer $TOKEN" \
  -H 'content-type: application/json' \
  -H 'cache-control: no-cache' \
  --data '{"binary_data": "aGVsbG8K"}' \
  'https://cloudiotdevice.googleapis.com/v1/projects/319972083311/locations/europe-west1/registries/iotcore-registry/devices/esp32:publishEvent'
