#!/usr/bin/python3

import os
import subprocess

# Get date and separate day and time
date = subprocess.getoutput("date +%F")
time = subprocess.getoutput("date +%H:%M")

# Move directory
os.system('cd images')
# Take picture
out = os.system("libcamera-still -o ~/Pictures/ "+date+"/"+time+".jpg")
