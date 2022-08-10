#!/bin/bash
echo "docker build --platform linux/arm64 -t ecy14mhfh/carrunner:$hash_pht -f Dockerfile ."
hash_pht=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t ecy14mhfh/carrunner:$hash_pht -f Dockerfile .
echo "docker push ecy14mhfh/carrunner:$hash_pht"
docker push ecy14mhfh/carrunner:$hash_pht
echo $hash_pht