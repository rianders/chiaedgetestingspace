FROM --platform=linux/arm64/v8 python:3.7-buster AS python3

RUN apt-get update && apt-get install -y \
    zip\
    unzip

COPY . .



RUN echo "./nbook_tf_run.sh"
