#!/bin/bash
hash_ts=$(git rev-parse --short HEAD)

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

docker run $DEVICES -p 8888:8889 ecy14mhfh/testserialnb:$hash_tsnb

#if ports devices = a string of properly formatted devices


#docker run --device=/dev/ttyACM0 --device=/dev/ttyACM1 --device=/dev/ttyUSB0 --device=/dev/ttyUSB1 ecy14mhfh/testserial:$hash
