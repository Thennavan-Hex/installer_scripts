#!/bin/bash

set -e

sudo dnf check-update

sudo dnf install -y git

git --version
