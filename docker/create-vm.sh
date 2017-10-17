#!/bin/bash

gcloud compute instances create "vm-docker" \
    --zone "europe-west1-d" \
    --machine-type "n1-standard-1" \
    --tags "http-server" \
    --image "debian-8-jessie-v20170918" \
    --image-project "debian-cloud" \
    --boot-disk-size "10" \
    --boot-disk-type "pd-ssd" \
    --boot-disk-device-name "vm-docker"
