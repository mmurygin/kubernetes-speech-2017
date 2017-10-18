#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
    sudo apt-get install -y nodejs

# Allow inbound access to 80 port without root
sudo setcap 'cap_net_bind_service=+ep' $(readlink -f $(which node))

# Copy service config
cp manual/chat.service /etc/systemd/system

# Make unix afare of new service
systemctl daemon-reload

# Install Redis
cd "$HOME"
wget http://download.redis.io/redis-stable.tar.gz && \
    tar xvzf redis-stable.tar.gz && \
    cd redis-stable && \
    make &&
    sudo make install

# Run redis
redis-server --daemonize yes
