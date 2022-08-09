#!/bin/bash

hash=$(git rev-parse --short HEAD)
docker build --platform linux/arm64/v8 -t ecy14mhfh/trainingcontainer:$hash -f Dockerfile .
docker push ecy14mhfh/trainingcontainer:$hash
echo $hash