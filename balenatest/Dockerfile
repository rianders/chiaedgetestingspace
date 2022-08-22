FROM balenalib/raspberrypi3-debian-python:3.8-buster-build
#FROM balenalib/raspberrypi4-64-python:3.9
#FROM balenalib/raspberrypi4-64:latest

# Install dependencies
RUN apt-get -y update
RUN apt-get -y upgrade
#RUN apt-get -y install git cmake libjpeg8-dev
# libj peg8-dev might be outdated
RUN apt-get install python3-picamera
#RUN apt-get python3 -c "import picamera"
RUN pip install picamera
RUN pip install "picamera[array]"
RUN pip install -U picamera


#FROM balenalib/raspberrypi3-debian-python:3.7-buster
RUN install_packages \
    python3-picamera

COPY stream_camera.py .

COPY . .
#RUN echo "./python_sOne_run.sh"

CMD ["python3", "stream_camera.py"]
EXPOSE 8000
#CMD ["libcamera-still", "-o", "image.jpg"]
#CMD ["python3", "python_script_1.py"]
#CMD ["./python_sOne_run.sh"]
#CMD ["/bin/bash"]




# RUN apt-get -y install git cmake  libjpeg62-turbo-dev

# RUN apt-get install build-essential

# #RUN apt-get -y install libraspberrypi-dev
# # https://github.com/jacksonliam/mjpg-streamer/issues/203

# RUN apt-get -y install gcc g++
# RUN apt-get -y install pkg-config
# RUN apt-get -y install libraspberrypi0 libraspberrypi-dev libraspberrypi-doc libraspberrypi-bin

# # Clone and build mjpg-streamer
# RUN git clone https://github.com/jacksonliam/mjpg-streamer.git
# WORKDIR /mjpg-streamer/mjpg-streamer-experimental
# RUN make
# RUN make install
# ENV LD_LIBRARY_PATH /mjpg-streamer/mjpg-streamer-experimental

# RUN ls
# # Set up simple stream website
# RUN mkdir /var/www
# RUN cp ./www/stream_simple.html /var/www/index.html

# Run the streamer
#ENTRYPOINT mjpg_streamer -o "output_http.so -w /var/www" -i "input_raspicam.so"
#ENTRYPOINT mjpg_streamer -o "./output_http.so -w /var/www" -i "./input_raspicam.so"
#ENTRYPOINT ["mjpg_streamer" ,"-i ", "./input_raspicam.so"]
#ENTRYPOINT ["mjpg_streamer" ,"-i",  "./input_uvc.so"]
#ENTRYPOINT ["mjpg_streamer", "-o", "./output_http.so -w /var/www" ,"-i",  "./input_uvc.so"]
#CMD ["sleep",'1000']
