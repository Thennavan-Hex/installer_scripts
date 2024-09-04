#!/bin/bash

set -e

sudo apt update

sudo apt install -y mysql-server

sudo systemctl start mysql
sudo systemctl enable mysql

sudo mysql_secure_installation

mysql --version
