#!/bin/bash

# Install docker
curl -sSL https://get.docker.com/ | sh

# Install docker-compose
curl -sSL https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Run app
mkdir /opt/chat-deploy
cd /opt/chat-deploy
curl -sSL https://raw.githubusercontent.com/m-murygin/node-chat/master/docker-compose.yml > docker-compose.yml
curl -sSL https://raw.githubusercontent.com/m-murygin/node-chat/master/docker-compose.prod.yml > docker-compose.prod.yml

docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
