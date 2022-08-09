#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t ecy14mhfh/testserialnb:$hash_tsnb -f Dockerfile .
docker push ecy14mhfh/testserialnb:$hash_tsnb
echo $hash_tsnb