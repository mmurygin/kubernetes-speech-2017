#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential

# Install Redis
cd "$HOME"
wget http://download.redis.io/redis-stable.tar.gz && \
    tar xvzf redis-stable.tar.gz && \
    cd redis-stable && \
    make &&
    sudo make install

# Run redis
redis-server --daemonize yes

# Install NodeJS
cd "$HOME"

wget https://nodejs.org/dist/v8.7.0/node-v8.7.0-linux-x64.tar.xz && \
    tar -xvJf node-v8.7.0-linux-x64.tar.xz && \
    ln -s "${HOME}/node-v8.7.0-linux-x64/bin/node" /usr/local/bin/node && \
    ln -s "${HOME}/node-v8.7.0-linux-x64/bin/npm" /usr/local/bin/npm && \
