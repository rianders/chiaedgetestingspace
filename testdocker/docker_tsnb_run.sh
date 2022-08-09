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

echo "docker run $DEVICES -p 8888:8888 ecy14mhfh/testserialnb:$hash_tsnb"
#docker run $DEVICES -p 8888:8888 ecy14mhfh/testserialnb:$hash_tsnb
docker run $DEVICES -p 8888:8888 ecy14mhfh/testserialnb:$hash_tsnb


#-it --rm -v $(realpath ~/notebooks) -p 8888:8888
#if ports devices = a string of properly formatted devices


#docker run --device=/dev/ttyACM0 --device=/dev/ttyACM1 --device=/dev/ttyUSB0 --device=/dev/ttyUSB1 ecy14mhfh/testserial:$hash
