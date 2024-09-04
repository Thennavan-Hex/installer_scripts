#!/bin/bash

set -e

sudo dnf check-update

sudo dnf install -y python3 python3-pip

python3 --version
pip3 --version
