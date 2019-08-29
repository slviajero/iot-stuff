export PROJECT_ID="319972083311"

export PUBSUB_TOPIC="iotcore-topic"
export PUBSUB_SUBSCRIPTION="iotcore-subscription"

gcloud pubsub topics create $PUBSUB_TOPIC
gcloud pubsub subscriptions create $PUBSUB_SUBSCRIPTION --topic $PUBSUB_TOPIC
