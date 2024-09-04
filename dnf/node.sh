#!/bin/bash

set -e

sudo dnf install -y curl

curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -

sudo dnf install -y nodejs

node --version
npm --version
