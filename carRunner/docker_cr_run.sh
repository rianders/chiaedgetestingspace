#!/bin/bash

echo "docker run -it --device /dev/mem --device /dev/gpiomem -v /sys/class/gpio:/sys/class/gpio ecy14mhfh/carrunner:$hash_pht"
docker run -it --device /dev/mem --device /dev/gpiomem -v /sys/class/gpio:/sys/class/gpio ecy14mhfh/carrunner:$hash_pht