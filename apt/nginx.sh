#!/bin/bash

set -e

sudo apt update

sudo apt install -y nginx

sudo systemctl start nginx
sudo systemctl enable nginx

nginx -v
