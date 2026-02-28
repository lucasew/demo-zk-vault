#!/bin/bash

set -e

# Download Hugo
curl -L https://github.com/gohugoio/hugo/releases/download/v0.82.0/hugo_0.82.0_Linux-64bit.tar.gz -o hugo.tar.gz

# Extract Hugo
tar -xf hugo.tar.gz

# Make it executable and run it
chmod +x ./hugo
./hugo
