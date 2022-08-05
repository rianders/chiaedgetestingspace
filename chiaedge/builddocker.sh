#!/bin/bash

docker build --platform linux/arm64 -t ecy14mhfh/tfnb:first -f Dockerfile .
docker push ecy14mhfh/tfnb:first
echo $hash