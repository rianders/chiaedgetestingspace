#!/bin/sh

udevadm control --reload

echo "libcamera start"
libcamera-hello --list-cameras -n -v
echo "libcamera end"
sleep infinity