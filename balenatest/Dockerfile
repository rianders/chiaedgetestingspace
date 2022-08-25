FROM balenalib/raspberrypi4-64-debian-python:3.9-bullseye-build

# RUN pip3 install --upgrade \
#     picamera2

COPY . .

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt full-upgrade
RUN pip install --upgrade pip
RUN pip3 install --upgrade pip setuptools wheel

# #RUN cd libcamera_python
RUN pip install opencv-python
#RUN python3 -m pip install ./libcamera-1.0.1-cp39-cp39-linux_armv7l.whl

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

# RUN wget -O install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh
# # RUN apt-get install libcamera_dev
# # RUN apt-get install libcamera_apps

RUN install_packages \
    libcamera-dev \
    libcamera-apps-lite \
    python3 \
    v4l-utils 

# Support multiarch builds to perform cross compilation
# https://wiki.debian.org/Multiarch/HOWTO
# RUN dpkg --add-architecture arm64

# # Expected system requirements
# RUN apt-get update && apt-get install -y \
# 	sudo \
# 	git \
# 	dpkg-dev

# Base libcamera image, with non-toolchain dependencies for building.
# Base libcamera always-host packages (compilation dependencies)
# RUN apt-get install -y \
# 	meson ninja-build pkg-config \
# 	python3-yaml python3-ply python3-jinja2 \
# 	openssl \
# 	python3-sphinx doxygen graphviz texlive-latex-extra \
# 	liblttng-ust-dev python3-jinja2 lttng-tools

# Base libcamera cross compiler and target architecture packages
# RUN apt-get install -y \
# 	gcc-aarch64-linux-gnu g++-aarch64-linux-gnu \
# 	libgnutls28-dev:arm64 \
# 	libboost-dev:arm64 \
# 	libudev-dev:arm64 \
# 	libgstreamer1.0-dev:arm64 libgstreamer-plugins-base1.0-dev:arm64 \
# 	libevent-dev:arm64 \
# 	qtbase5-dev:arm64 libqt5core5a:arm64 libqt5gui5:arm64 libqt5widgets5:arm64 \
# 	qttools5-dev-tools:arm64 libtiff-dev:arm64 \
# 	libexif-dev:arm64 libjpeg-dev:arm64 libyaml-dev:arm64


# #WORKDIR /usr/src/app

# #RUN chmod +x start.sh

# # RUN usermod -a -G video root

ENV UDEV=on

# #CMD ["sh","./start.sh"]
CMD ["python3", "libcam_image.py"]