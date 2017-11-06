#!/bin/bash

kubectl delete -f kubernet/spec

# wait until gcloud deletes load balancer
sleep 20

gcloud container clusters delete chat-cluster -q
