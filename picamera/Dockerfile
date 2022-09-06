FROM balenalib/raspberrypi4-64-python:3.9-bullseye-build-20220803
# Refer to https://www.balena.io/docs/reference/base-images/base-images/


# RUN mkdir -p /usr/src/app 
# WORKDIR /usr/src/app 

RUN apt-get -y update
RUN apt-get -y upgrade

COPY  . .

RUN install_packages \
    python3-libcamera \
    libcamera-apps \
    python3-kms++ \
    python3-pyqt5 \
    python3-prctl \
    libatlas-base-dev \
    python3-picamera2 \
    ffmpeg \
    udev

RUN apt-get update && apt-get install -y \
    libjpeg62-turbo-dev \
    imagemagick \
    libv4l-dev


RUN pip3 install --upgrade numpy
#RUN pip3 install picamera2==0.3.2
#RUN apt install python3-picamera2

#RUN apt install -y python3-opencv
#RUN apt install -y opencv-data
#RUN pip3 install picamera2[gui]



# COPY requirements.txt /usr/src/app/
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . /usr/src/app 

COPY . .
#RUN WORKDIR /usr/src/app
RUN mkdir -p /app/picamTwo_img
VOLUME /app/picamTwo_img
ENV UDEV=on

CMD ["./python_pct_run.sh"]