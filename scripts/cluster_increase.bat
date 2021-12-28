ECHO OFF
CLS
SET PATH=C:\Users\sanchez\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;%PATH%;
cd C:\Users\sanchez\AppData\Local\Google\Cloud SDK
ECHO Add nodes cluster Kubernetes
gcloud container clusters resize icai-jupyter --node-pool default-pool --num-nodes 9 --quiet
ECHO Done
ECHO ON
