#!/bin/bash

set -e

sudo dnf install -y dnf-plugins-core

sudo dnf config-manager --add-repo=https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io

sudo systemctl start docker
sudo systemctl enable docker

sudo usermod -aG docker $USER
