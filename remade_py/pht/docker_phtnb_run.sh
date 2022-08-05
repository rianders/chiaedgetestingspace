#!/bin/bash

hash_pht=$(git rev-parse --short HEAD)

echo $hash_pht

# this might need to be run privileged
echo "docker run ecy14mhfh/pihattestnb:$hash_pht"

docker run -it --rm -v $(realpath ~/notebooks) -p 8888:8888 --device /dev/mem --device /dev/gpiomem -v /sys/class/gpio:/sys/class/gpio ecy14mhfh/pihattestnb:$hash_pht
#docker run -it --privileged ecy14mhfh/pihattestnb:$hash_pht