#!/bin/bash

set -e

sudo dnf check-update

sudo dnf install -y nginx

sudo systemctl start nginx
sudo systemctl enable nginx

nginx -v
