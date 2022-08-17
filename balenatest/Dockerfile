FROM balenalib/raspberrypi4-64:latest
#FROM balenalib/raspberrypi4-64-python:3.9-sid doesn't work

#FROM balenalib/raspberrypi4-64-python:3.9
#^ different log message
# MJPG Streamer Version: git rev: 310b29f4a94c46652b20c4b7b6e5cf24e532af39
#  i: Using V4L2 device.: /dev/video0
#  i: Desired Resolution: 640 x 480
#  i: Frames Per Second.: -1
#  i: Format............: JPEG
#  i: TV-Norm...........: DEFAULT
# Unable to set format: 1196444237 res: 640x480
# Init v4L2 failed !! exit fatal
#  i: init_VideoIn failed


#FROM balenalib/raspberrypi4-64:latest

# Install dependencies

RUN apt-get -y update
RUN apt-get -y upgrade
#RUN apt-get -y install git cmake libjpeg8-dev
# libj peg8-dev might be outdated

RUN apt-get -y install git cmake  libjpeg62-turbo-dev

RUN apt-get install build-essential

#RUN apt-get -y install libraspberrypi-dev
# https://github.com/jacksonliam/mjpg-streamer/issues/203

RUN apt-get -y install gcc g++
RUN apt-get -y install pkg-config
RUN apt-get -y install libraspberrypi0 libraspberrypi-dev libraspberrypi-doc libraspberrypi-bin

# Clone and build mjpg-streamer
RUN git clone https://github.com/jacksonliam/mjpg-streamer.git
WORKDIR /mjpg-streamer/mjpg-streamer-experimental
RUN make
RUN make install
ENV LD_LIBRARY_PATH /mjpg-streamer/mjpg-streamer-experimental

RUN ls
# Set up simple stream website
RUN mkdir /var/www
RUN cp ./www/stream_simple.html /var/www/index.html

# Run the streamer
#ENTRYPOINT mjpg_streamer -o "output_http.so -w /var/www" -i "input_raspicam.so"
#ENTRYPOINT mjpg_streamer -o "./output_http.so -w /var/www" -i "./input_raspicam.so"
#ENTRYPOINT ["mjpg_streamer" ,"-i ", "./input_raspicam.so"]
#ENTRYPOINT ["mjpg_streamer" ,"-i",  "./input_uvc.so"]
ENTRYPOINT ["mjpg_streamer", "-o", "./output_http.so -w /var/www" ,"-i",  "./input_uvc.so"]

CMD ["/bin/bash"]