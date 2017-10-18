#!/bin/bash

git clone https://github.com/m-murygin/redispubsub.git /opt/redispubsub

cd /opt/redispubsub
npm install
systemctl start chat
