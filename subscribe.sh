#!/bin/sh

. token.sh

mosquitto_sub \
--host mqtt.googleapis.com \
--port 8883 \
--id projects/319972083311/locations/europe-west1/registries/iotcore-registry/devices/esp32 \
--username unused \
--pw "$TOKEN" \
--cafile ./roots.pem \
--tls-version tlsv1.2 \
--protocol-version mqttv311 \
--debug \
--qos 1 \
--topic /devices/esp32/events \
