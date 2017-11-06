#!/bin/bash

apt-get update
apt-get install -y build-essential

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs

# Install Redis
wget http://download.redis.io/redis-stable.tar.gz && \
    tar xvzf redis-stable.tar.gz && \
    cd redis-stable && \
    make &&
    make install

# Run redis
redis-server --daemonize yes

# Requirements to run app as non-root

## Add user to run app
adduser --system --group --no-create-home node-runtime
## Allow inbound access to 80 port without root
setcap 'cap_net_bind_service=+ep' $(readlink -f $(which node))

# Install app

## Clone app
git clone https://github.com/m-murygin/node-chat.git /opt/chat
cd /opt/chat
sudo npm install
chown -R node-runtime /opt/chat

## Configure node service
wget https://raw.githubusercontent.com/m-murygin/it-city-2017/master/manual/chat.service -P /etc/systemd/system
systemctl daemon-reload

## Run app
systemctl start chat
