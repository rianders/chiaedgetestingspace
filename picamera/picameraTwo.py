from time import sleep
from picamera import PiCamera

camera = PiCamera()
camera.resolution = (1024, 768)

# Camera warm-up time
print("start camera")
sleep(2)
for i in range(5):
    camera.capture('foo-{timestamp:%H-%M-%S-%f}.jpg')
    print(f"photo: {i}")
    sleep(0.5)
print("stop camera")


