#!/bin/bash

hash=$(git rev-parse --short HEAD)

echo "docker run ecy14mhfh/tensorflownb:$hash"
docker run  ecy14mhfh/tensorflownb:$hash
