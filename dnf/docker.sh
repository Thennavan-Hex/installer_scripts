#!/bin/bash

set -e

# Install required packages
sudo dnf install -y dnf-plugins-core

# Add Docker repository and install Docker
sudo dnf config-manager --add-repo=https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add user to Docker group
sudo usermod -aG docker $USER
