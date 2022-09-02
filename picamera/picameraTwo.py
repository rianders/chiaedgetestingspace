#!/usr/bin/python3
import time
#import libcamera
from picamera2 import Picamera2

picam2 = Picamera2()
picam2.start()
time.sleep(2)

fname = (time.strftime("%y-%b-%d_%H:%M"))
variable = fname + ".jpg"
# picam2.capture_file(variable)
# #picam2.capture_file("test.jpg")
metadata = picam2.capture_file(variable)
print(metadata)

picam2.close()


# from picamera2 import Picamera2
# picam2 = Picamera2()
# picam2.start_and_capture_file("test.jpg")