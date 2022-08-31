FROM balenalib/raspberrypi4-64-python:3.9-bullseye-build-20220803
# Refer to https://www.balena.io/docs/reference/base-images/base-images/
COPY  . .

RUN install_packages \
    python3-libcamera \
    libcamera-apps \
    python3-kms++ \
    python3-pyqt5 \
    python3-prctl \
    libatlas-base-dev \
    ffmpeg \
    udev

RUN pip3 install --upgrade numpy
RUN pip3 install --upgrade picamera2 

#RUN apt install -y python3-opencv
#RUN apt install -y opencv-data
#RUN pip3 install picamera2[gui]

RUN apt-get -y update
RUN apt-get -y upgrade

RUN mkdir -p /app/picamTwo_img
ENV UDEV=on

CMD ["./python_pct_run.sh"]