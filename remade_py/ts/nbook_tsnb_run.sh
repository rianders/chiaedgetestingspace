#!/bin/bash

echo "check for connected serial devices"
pio device list
echo "run the test serial script"
ipython testserial.ipynb

