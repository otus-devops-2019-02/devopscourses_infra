#!/bin/bash

gcloud compute instances create reddit-app \
--boot-disk-size=10GB \
--image-family ubuntu-1604-lts \
--image-project=ubuntu-os-cloud \
--machine-type=g1-small \
--tags puma-server \
--restart-on-failure \
--metadata startup-script-url=https://gist.githubusercontent.com/devopscourses/917f6175f65ed8dc42d96cf948db6d0f/raw/startup-script.sh


