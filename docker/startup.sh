#!/bin/bash

echo alias docker-compose="'"'docker run \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:/rootfs/$PWD" \
    -w="/rootfs/$PWD" \
    docker/compose:1.16.1'"'" >> ~/.bashrc

mkdir deploy-utils
cd deploy-utils
wget https://raw.githubusercontent.com/m-murygin/node-chat/master/docker-compose.yml
wget https://raw.githubusercontent.com/m-murygin/node-chat/master/docker-compose.prod.yml

docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
