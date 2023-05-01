#!/usr/bin/python3
import time

from picamera2 import Picamera2
from picamera2.encoders import JpegEncoder

fname = (time.strftime("%y-%b-%d_%H:%M"))
variable = fname + ".mjpeg"

picam2 = Picamera2()
video_config = picam2.create_video_configuration(main={"size": (1920, 1080)})
picam2.configure(video_config)

picam2.start_preview()
encoder = JpegEncoder(q=70)

picam2.start_recording(encoder, variable)
print("start")
time.sleep(30)
picam2.stop_recording()
print("stop")






# #!/usr/bin/python3

# import socket
# import time

# from picamera2 import Picamera2
# from picamera2.encoders import H264Encoder
# from picamera2.outputs import FileOutput

# picam2 = Picamera2()
# video_config = picam2.create_video_configuration({"size": (1280, 720)})
# picam2.configure(video_config)
# encoder = H264Encoder(1000000)

# with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as sock:
#     sock.connect(("REMOTEIP", 10001))
#     stream = sock.makefile("wb")
#     picam2.start_recording(encoder, FileOutput(stream))
#     time.sleep(20)
#     picam2.stop_recording()