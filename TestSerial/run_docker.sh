#!/bin/bash


hash=$(git rev-parse --short HEAD)

echo $hash

ports=$(python3 -m serial.tools.list_ports)
echo $ports
if [[ "$ports" == *"no ports found" ]]; then
  devices = ""
  echo "No devices: $devices"
else
    for device in $ports
    do
        echo $device
    done
fi


#if ports devices = a string of properly formatted devices


#docker run --device=/dev/ttyACM0 --device=/dev/ttyACM1 --device=/dev/ttyUSB0 --device=/dev/ttyUSB1 ecy14mhfh/testserial:$hasg
