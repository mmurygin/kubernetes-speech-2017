#!/bin/bash

gcloud compute instances create "vm-docker" \
    --zone "europe-west1-d" \
    --machine-type "n1-standard-1" \
    --tags "http-server" \
    --image "ubuntu-1604-xenial-v20171011" \
    --image-project "ubuntu-os-cloud" \
    --boot-disk-size "10" \
    --boot-disk-type "pd-ssd" \
    --boot-disk-device-name "vm-docker" \
    --metadata-from-file startup-script=docker/startup.sh
