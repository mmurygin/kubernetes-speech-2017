#!/bin/bash

kubectl delete service frontend

# wait until gcloud deletes load balancer
sleep 20

gcloud container clusters delete chat-cluster -q
