#!/bin/bash

hash=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t ecy14mhfh/tensorflownb:$hash -f Dockerfile .
docker push ecy14mhfh/tensorflownb:$hash
echo $hash