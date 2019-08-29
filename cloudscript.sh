export PROJECT_ID="319972083311"


export REGISTRY_NAME="iotcore-registry"
# Choose your region: https://cloud.google.com/compute/docs/regions-zones/
# Valid cloud regions are [asia-east1, europe-west1, us-central1]
export REGION_NAME="europe-west1"

export DEVICE_NAME="esp32"

# Generate an Eliptic Curve (EC) ES256 private / public key pair
openssl ecparam -genkey -name prime256v1 -noout -out ec_private.pem
openssl ec -in ec_private.pem -pubout -out ec_public.pem

# Create a new Cloud IoT device
gcloud iot devices create $DEVICE_NAME \
  --region=$REGION_NAME \
  --registry=$REGISTRY_NAME \
  --public-key="path=./ec_public.pem,type=es256"
