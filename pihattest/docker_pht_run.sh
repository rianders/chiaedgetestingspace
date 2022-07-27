#!/bin/bash

hash_pht=$(git rev-parse --short HEAD)

echo $hash_pht

# this might need to be run privileged
echo "docker run ecy14mhfh/pihattest:$hash_pht"

docker run -it --device /dev/mem --device /dev/gpiomem ecy14mhfh/pihattest:$hash_pht
#docker run -it --privileged ecy14mhfh/pihattest:$hash_pht