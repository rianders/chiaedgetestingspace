#!/usr/bin/env python
#3.1. Capturing to a file
from time import sleep
from picamera import PiCamera

camera = PiCamera()
camera.resolution = (1024, 768)
camera.start_preview()
# Camera warm-up time
print("About to take image")
sleep(2)
camera.capture('/Images/foo.jpg')
print("Image taken")