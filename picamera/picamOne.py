from time import sleep
from picamera2 import PiCamera2

camera = PiCamera2()
camera.resolution = (1024, 768)
camera.start_preview()
# Camera warm-up time
sleep(2)
camera.capture('foo.jpg')