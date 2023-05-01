#!/bin/bash

hash_pht=$(git rev-parse --short HEAD)

echo $hash_pht
echo "docker run -it --device /dev/mem --device /dev/gpiomem -v /sys/class/gpio:/sys/class/gpio ecy14mhfh/carrunner:$hash_pht"
docker run -it --device /dev/mem --device /dev/gpiomem -v /sys/class/gpio:/sys/class/gpio ecy14mhfh/carrunner:$hash_pht