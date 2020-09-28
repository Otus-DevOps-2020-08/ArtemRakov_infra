#!/bin/bash

cd ~

apt-get install -y git

git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

systemctl start reddit
systemctl enable reddit
