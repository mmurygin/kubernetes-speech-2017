#!/bin/bash

gcloud compute instances describe --format json vm-manual | \
    jq .networkInterfaces[0].accessConfigs[0].natIP
