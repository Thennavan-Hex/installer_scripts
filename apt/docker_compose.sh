#!/bin/bash

set -e

# Install Docker Compose
DOCKER_COMPOSE_VERSION="v2.20.3"
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Create Docker command shortcuts
{
    echo ""
    echo "# Docker Command Shortcuts"
    echo "alias dc='docker container'"
    echo "alias di='docker image'"
    echo "alias d='docker'"
} >> ~/.bashrc

# Reload .bashrc to apply changes
source ~/.bashrc
