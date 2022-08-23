FROM balenalib/raspberrypi3-debian-python:3.9-buster-build
RUN install_packages \
    libcamera-dev \
    libcamera-apps-lite \
    python3 \
    v4l-utils

WORKDIR /usr/src/app

COPY start.sh ./

RUN chmod +x start.sh

# RUN usermod -a -G video root

ENV UDEV=on

CMD ["sh","./start.sh"]