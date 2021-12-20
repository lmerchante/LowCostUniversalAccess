ECHO OFF
CLS
SET PATH=C:\Users\sanchez\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;%PATH%;
cd C:\Users\sanchez\AppData\Local\Google\Cloud SDK
ECHO Remove nodes cluster Kubernetes
gcloud container clusters resize icai-jupyter-1 --node-pool default-pool --num-nodes 3 --quiet
ECHO ---
ECHO ON
