#!/bin/bash

set -e

sudo dnf check-update

sudo dnf install -y java-11-openjdk-devel

java -version
javac -version
