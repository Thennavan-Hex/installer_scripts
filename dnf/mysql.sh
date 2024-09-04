#!/bin/bash

set -e

sudo dnf install -y https://dev.mysql.com/get/mysql80-community-release-fc$(rpm -q --qf "%{VERSION}" fedora).noarch.rpm

sudo dnf check-update

sudo dnf install -y mysql-server

sudo systemctl start mysqld
sudo systemctl enable mysqld

sudo mysql_secure_installation

mysql --version
