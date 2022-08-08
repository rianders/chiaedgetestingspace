FROM --platform=linux/arm64/v8 python:3.7-buster AS python3
RUN pip3 install tensorflow-2.4.0-cp37-none-linux_armv7l.whl
COPY . .
RUN echo "./nbook_tf_run.sh"
