FROM jupyter/minimal-notebook:aarch64-latest AS base

RUN apt-get update && apt-get install -y \
    zip\
    unzip

RUN python3 -m pip install tensorflow

COPY . .



RUN echo "./nbook_tf_run.sh"
