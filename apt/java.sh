#!/bin/bash

set -e

sudo apt update

sudo apt install -y openjdk-11-jdk

java -version
javac -version
