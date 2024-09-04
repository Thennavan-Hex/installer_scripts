#!/bin/bash

set -e

sudo apt update

sudo apt install -y git curl xz-utils zip unzip

FLUTTER_DIR="$HOME/flutter"
git clone https://github.com/flutter/flutter.git $FLUTTER_DIR -b stable

echo "export PATH=\"$FLUTTER_DIR/bin:\$PATH\"" >> ~/.bashrc
source ~/.bashrc

flutter doctor

flutter --version
