FROM balenalib/raspberrypi4-64-python:3.9-bullseye-build-20220803
# Refer to https://www.balena.io/docs/reference/base-images/base-images/

RUN mkdir -p /usr/src/app 
WORKDIR /usr/src/app 

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


COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app 

ENV UDEV=on

CMD ["./python_pct_run.sh"]