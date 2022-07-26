#!/bin/bash

hash_pht=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t ecy14mhfh/pihattest:$hash_pht -f Dockerfile .
docker push ecy14mhfh/pihattest:$hash_pht
echo $hash_pht