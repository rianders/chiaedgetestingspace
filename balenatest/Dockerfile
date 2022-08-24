FROM balenalib/raspberrypi4-64-debian-python:3.9-bullseye-build

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

RUN pip3 install --upgrade \
    picamera2

COPY . .

# RUN apt-get -y update
# RUN apt-get -y upgrade
# RUN apt full-upgrade
# RUN pip install --upgrade pip
# RUN pip3 install --upgrade pip setuptools wheel

# #RUN cd libcamera_python
# RUN python3 -m pip install ./libcamera-1.0.1-cp39-cp39-linux_armv7l.whl

# RUN wget -O install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh
# # RUN apt-get install libcamera_dev
# # RUN apt-get install libcamera_apps

# RUN install_packages \
#     libcamera-dev \
#     libcamera-apps-lite \
#     python3 \
#     v4l-utils 


# RUN pip install "opencv-python-headless<4.3" 
# #RUN pip install "opencv-python-headless<4.3"
# #RUN pip install opencv-python
# #WORKDIR /usr/src/app

# #RUN chmod +x start.sh

# # RUN usermod -a -G video root

# ENV UDEV=on

# #CMD ["sh","./start.sh"]
CMD ["python3", "piCameraTwo_image.py"]