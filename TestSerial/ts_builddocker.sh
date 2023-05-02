#!/bin/bash

hash_ts=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t rianders/testserial:$hash_ts -f Dockerfile .
docker push rianders/testserial:$hash_ts
echo $hash_ts