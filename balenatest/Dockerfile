FROM balenalib/raspberrypi4-64-debian-python:3.9-bullseye-build

# RUN pip3 install --upgrade \
#     picamera2

COPY . .

# RUN apt-get -y update
# RUN apt-get -y upgrade
# RUN apt full-upgrade

# RUN pip install --upgrade pip

# RUN pip3 install --upgrade pip setuptools wheel

# RUN pip install opencv-python

RUN apt-get update && apt-get install -y \
    python3-libcamera \
    python3-kms++


# RUN apt-get update && apt-get install -y \
#     python3-prctl \
#     libatlas-base-dev \
#     ffmpeg \
#     libopenjp2-7

# RUN pip3 install --upgrade \
#     numpy

#ENV UDEV=on

COPY . .
#RUN echo "./python_sOne_run.sh"

#CMD ["python3", "stream_camera.py"]
#EXPOSE 8000
CMD ["python3", "libcam_image.py"]

#RUN ls
#CMD ["python3", "stream_camera.py"]