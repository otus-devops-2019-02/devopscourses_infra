#!/bin/bash

echo "Add key"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "Add repo"
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
echo "Update system..."
sudo apt update -y
echo "Install Mongo..."
sudo apt install mongodb-org -y
echo "Start Mongo..."
sudo systemctl start mongod
echo "Enable Mongo to autostart..."
sudo systemctl enable mongod
echo "Check Mongo..."
sudo systemctl status mongod
echo "Install Ryby and Ruby Bundler...."
sudo apt install -y ruby-full ruby-bundler build-essential
dir=~/
echo "clone app code"
git clone -b monolith https://github.com/express42/reddit.git
echo "Cd Raddit dir  and install bundle..."
cd reddit && bundle install
puma -d
echo "Complete, app start!"

