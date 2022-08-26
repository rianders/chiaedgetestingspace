FROM balenalib/raspberrypi4-64-debian-python:3.9-bullseye-build

# RUN pip3 install --upgrade \
#     picamera2

COPY . .

RUN apt-get -y update
RUN apt-get -y upgrade
# RUN apt full-upgrade

RUN pip install --upgrade pip

# RUN pip3 install --upgrade pip setuptools wheel

RUN apt-get update && apt-get install -y \
    python3-libcamera \
    python3-kms++


RUN apt-get update && apt-get install -y \
    python3-prctl \
    libatlas-base-dev \
    ffmpeg \
    libopenjp2-7

RUN pip3 install --upgrade \
    numpy

RUN apt-get install python3-picamera2

RUN apt-get install python3-picamera
RUN apt-get python3 -c "import picamera"
RUN pip install picamera
RUN pip install "picamera[array]"
RUN pip install -U picamera
RUN install_packages \
    python3-picamera

#ENV UDEV=on

#RUN pip install opencv-python


COPY . .
#RUN echo "./python_sOne_run.sh"

#CMD ["python3", "stream_camera.py"]
#EXPOSE 8000
#CMD ["./python_sTwo_run.sh"]

CMD ["/bin/bash"]
#/bin/bash
#RUN ls
#CMD ["python3", "stream_camera.py"]