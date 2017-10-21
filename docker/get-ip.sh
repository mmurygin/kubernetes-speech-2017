#!/bin/bash

gcloud compute instances describe --format json vm-docker | \
    jq .networkInterfaces[0].accessConfigs[0].natIP
