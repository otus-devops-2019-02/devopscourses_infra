#!/bin/bash
gcloud compute instances create reddit-full \
  --image=reddit-full-1554908240 \
  --tags puma-server \
  --restart-on-failure \
  --machine-type=f1-micro \
 
