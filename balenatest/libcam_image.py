#!/usr/bin/python3

import os
import subprocess

# Get date and separate day and time
date = subprocess.getoutput("date +%F")
time = subprocess.getoutput("date +%H:%M")

print("Start libcamera")
# Take picture
#cmd = "libcamera-jpeg -o test.jpg"

# cmd = os.system("cd app/balena")

# cmd = "ls"
# out = os.system(cmd)
# cmd = "libcamera-jpeg -o test.jpg"
# out = os.system(cmd)
#out = os.system("libcamera-jpeg -o test.jpg")
out = os.system("libcamera-still -o "+date+time+".jpg -n")
print("End libcamera")