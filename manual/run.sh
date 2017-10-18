#!/bin/bash

git clone https://github.com/m-murygin/redispubsub.git ${HOME}/redispubsub
sudo mv ${HOME}/redispubsub /opt/redispubsub

cd /opt/redispubsub
npm install

sudo systemctl start chat
