ECHO OFF
CLS
SET PATH=C:\Users\sanchez\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;%PATH%;
cd C:\Users\sanchez\AppData\Local\Google\Cloud SDK
ECHO Delete Kubernetes Cluster
set REGION=us-central1
gcloud container clusters delete icai-jupyter
ECHO ---
ECHO ON
