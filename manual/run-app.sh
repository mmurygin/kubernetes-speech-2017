#!/bin/bash

cd "$HOME"

git clone https://github.com/m-murygin/redispubsub.git

cd redispubsub
npm install
sudo PORT=80 DEBUG=redispubsub REDIS_HOST=localhost REDIS_PORT=6379 forever bin/www
