Create VM image with Packer
    -  create packer template ubuntu16.json
    -  create settings template variables.json
    -  create images

Create base image reddit-base (ruby+mongo)

packer build --var-file variables.json ubuntu16.json

Create full image reddit-full (ruby+mongo+app)

packer build --var-file variables.json immutable.json

Autocreate instanse create-reddit-vm.sh

gcloud compute instances create reddit-full \
--image=reddit-full-1553653135 \
--tags puma-server \
--restart-on-failure \
--machine-type=f1-micro \