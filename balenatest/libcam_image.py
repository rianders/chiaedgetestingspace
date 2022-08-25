#!/usr/bin/python3

import os
import subprocess

# Get date and separate day and time
date = subprocess.getoutput("date +%F")
time = subprocess.getoutput("date +%H:%M")

out = os.system("libcamera-jpeg -o test.jpg")
os.system("echo '" + str(out) + "' >> test.txt")