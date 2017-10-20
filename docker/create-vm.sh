#!/bin/bash

gcloud compute instances create "vm-docker" \
    --zone "europe-west1-d" \
    --machine-type "n1-standard-1" \
    --tags "http-server" \
    --image "cos-stable-61-9765-79-0" \
    --image-project "cos-cloud" \
    --boot-disk-size "10" \
    --boot-disk-type "pd-ssd" \
    --boot-disk-device-name "vm-docker" \
    --metadata-from-file startup-script=docker/startup.sh
