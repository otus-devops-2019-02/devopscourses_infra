#!/bin/bash

echo "Update system..."
sudo apt update -y
echo "Install Ryby and Ruby Bundler...."
sudo apt install -y ruby-full ruby-bundler build-essential
ruby -v
bundler -v



