ECHO OFF
CLS
SET PATH=C:\Users\sanchez\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;%PATH%;
cd C:\Users\sanchez\AppData\Local\Google\Cloud SDK
ECHO Starting Virtual Machine
gcloud compute instances start jupyter-ldap
ECHO ---
ECHO ON
