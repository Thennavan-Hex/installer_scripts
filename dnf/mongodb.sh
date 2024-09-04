#!/bin/bash

set -e

sudo tee /etc/yum.repos.d/mongodb-org-6.0.repo <<EOL
[mongodb-org-6.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/fedora/$(rpm -E %fedora)/mongodb-org/6.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-6.0.asc
EOL

sudo dnf install -y mongodb-org

sudo systemctl start mongod
sudo systemctl enable mongod

mongod --version
