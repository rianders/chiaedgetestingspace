FROM balenalib/raspberrypi4-64-debian-python:3.9-bullseye-build


COPY . .

RUN apt-get -y update
RUN apt-get -y upgrade
# RUN apt full-upgrade

RUN pip install --upgrade pip
#apt-get -y install udev
#RUN pip3 install picamera2 --upgrade
#RUN pip3 install picamera2 --upgrade
# RUN pip3 install --upgrade pip setuptools wheel

RUN apt-get update && apt-get upgrade && apt-get install -y \
    python3-libcamera \
    python3-libcamera-dbgsym \
    libcamera-apps \
    libcamera-apps-dbgsym \
    #libcamera-apps-lite \
    libcamera-dev \ 
    libcamera-doc \
    libcamera-tools \ 
    libcamera-tools-dbgsym \
    libcamera0 \
    libcamera0-dbgsym \
    python3-kms++ \
    v4l-utils \
    udev


RUN apt-get update && apt-get install -y \
    python3-prctl \
    libatlas-base-dev \
    ffmpeg \
    libopenjp2-7

RUN pip3 install --upgrade \
    numpy

# RUN apt-get install python3-picamera2

# RUN apt-get install python3-picamera
# RUN apt-get python3 -c "import picamera"
# RUN pip install picamera
# RUN pip install "picamera[array]"
# RUN pip install -U picamera
# RUN install_packages \
#     python3-picamera
COPY . .
#WORKDIR /usr/src/app
RUN mkdir -p /app/balenaimage
ENV UDEV=on

#RUN pip install opencv-python



#RUN echo "./python_sTwo_run.sh"

#CMD ["libcamera-still", "-o", "test.jpeg"]
#EXPOSE 8000

#CMD ["LIBCAMERA_LOG_LEVELS=*:0", "libcamera-hello", "--list-cameras"]

#LIBCAMERA_LOG_LEVELS=*:0 libcamera-hello --list-cameras
CMD ["./python_sTwo_run.sh"]

#CMD ["/bin/bash"]
#/bin/bash
#RUN ls
#CMD ["python3", "stream_camera.py"]