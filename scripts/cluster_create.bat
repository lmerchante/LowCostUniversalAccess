ECHO OFF
CLS
SET PATH=C:\Users\sanchez\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;%PATH%;
cd C:\Users\sanchez\AppData\Local\Google\Cloud SDK
ECHO Create Kubernetes Cluster
set REGION=us-central1
gcloud container clusters create icai-jupyter ^
  --region %REGION%^
  --num-nodes=20^
  --machine-type=n1-standard-4^
  --enable-autorepair^
  --enable-autoupgrade^
  --enable-autoscaling^
  --max-nodes=60^
  --min-nodes=10

ECHO ---
ECHO ON
