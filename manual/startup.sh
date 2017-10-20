#!/bin/bash

apt-get update
apt-get install -y build-essential

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_8.x | \
    bash - && \
    apt-get install -y nodejs

## Allow inbound access to 80 port without root
setcap 'cap_net_bind_service=+ep' $(readlink -f $(which node))


# Install Redis
wget http://download.redis.io/redis-stable.tar.gz && \
    tar xvzf redis-stable.tar.gz && \
    cd redis-stable && \
    make &&
    make install

# Run redis
redis-server --daemonize yes


# Install app

## Configure node service
adduser --system --group --no-create-home node-runtime
wget https://raw.githubusercontent.com/m-murygin/it-city-2017/master/manual/chat.service -P /etc/systemd/system
systemctl daemon-reload

## Clone app
git clone https://github.com/m-murygin/node-chat.git /opt/chat
cd /opt/chat
npm install

## Run app
systemctl start chat
