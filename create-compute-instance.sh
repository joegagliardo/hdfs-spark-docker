#! /bin/sh
export CLOUD_STORAGE_URL=gs://joey-shared-bucket/install-docker.sh && \
export PROJECTID=qwiklabs-gcp-01-4f371d55024e && \
gcloud compute instances create hadoop --project=$PROJECTID --zone=us-central1-a \
--machine-type=e2-standard-4 --network-interface=network-tier=PREMIUM,subnet=default \
--metadata=enable-oslogin=true,startup-script-url=$CLOUD_STORAGE_URL \
--create-disk=auto-delete=yes,boot=yes,device-name=hadoop,image=projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20220924,mode=rw,size=50,type=projects/$PROJECTID/zones/us-central1-a/diskTypes/pd-balanced && \ 
gcloud compute --project=$PROJECTID firewall-rules create jupyter --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=all --source-ranges=0.0.0.0/0
