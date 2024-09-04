#!/bin/bash

set -e

sudo apt update

sudo apt install -y curl gnupg

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

sudo apt install -y nodejs

node --version
npm --version
