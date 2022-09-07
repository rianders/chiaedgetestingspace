from picamera2 import Picamera2
picam2 = Picamera2()

fname = (time.strftime("%y-%b-%d_%H:%M"))
variable = fname + ".mp4"

picam2.start_and_record_video(variable, duration=5)