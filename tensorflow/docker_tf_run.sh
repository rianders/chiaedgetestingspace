#!/bin/bash

hash=$(git rev-parse --short HEAD)

echo "docker run ecy14mhfh/tensorflownb:$hash"
#docker run -it --rm -v $(realpath ~/notebooks):/tf/notebooks -p 8888:8888 ecy14mhfh/tensorflownb:$hash
docker run -it --rm -v $(realpath ~/notebooks) -p 8888:8888 ecy14mhfh/tensorflownb:$hash
