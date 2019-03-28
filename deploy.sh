#!/bin/bash

echo "clone app code"
git clone -b monolith https://github.com/express42/reddit.git
echo "Cd Raddit dir  and install bundle..."
cd reddit/ 
bundle install
puma -d

