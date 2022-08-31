# Refer to https://www.balena.io/docs/reference/base-images/base-images/
FROM balenalib/raspberrypi4-64-python:3.9-bullseye-build-20220803
RUN install_packages \
    python3-libcamera \
    python3-kms++ \
    python3-pyqt5 \
    python3-prctl \
    libatlas-base-dev \
    ffmpeg

RUN pip3 install --upgrade numpy
RUN pip3 install picamera2

COPY  . .

RUN mkdir -p /app/picamTwo_img
ENV UDEV=on

CMD ["./python_pct_run.sh"]