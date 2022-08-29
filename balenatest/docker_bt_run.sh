#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)

echo $hash_tsnb

DEVICES=""

ports=$(python3 -m serial.tools.list_ports)
echo "Port Results: $ports"
if [[ "$ports" == *"no ports found" ]]; then
  devices = ""
  echo "No devices: $devices"
else
    for device in $ports
    do
        echo "--device=$device "
        DEVICES+="--device=$device "
    done
fi
echo  "$DEVICES"


docker run $DEVICES  --privileged -it ecy14mhfh/balenatest:$hash_tsnb /bin/bash
#docker run -p 8888:8888 --privileged -it ecy14mhfh/balenatest:$hash_tsnb /bin/bash