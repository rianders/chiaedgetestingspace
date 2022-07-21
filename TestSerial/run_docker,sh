#!/bin/bash


hash=$(git rev-parse --short HEAD)

echo $hash

ports=$(python3 -m serial.tools.list_ports)
echo $ports

#docker run --device=/dev/ttyACM0 --device=/dev/ttyACM1 --device=/dev/ttyUSB0 --device=/dev/ttyUSB1 ecy14mhfh/testserial:$hasg
