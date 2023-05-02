#!/bin/bash

# Extract the GitHub username from the remote URL
GITHUB_USERNAME=$(git config --get remote.origin.url | sed -n 's/.*github.com[:/]\([^/]*\)\/.*/\1/p')

hash=$(git rev-parse --short HEAD)
# Use the variable in the docker build and push commands
docker build --platform linux/arm64/v8 -t ${GITHUB_USERNAME}/tensorflownb:$hash -f Dockerfile .
docker push ${GITHUB_USERNAME}/tensorflownb:$hash
echo $hash
