FROM --platform=linux/arm64/v8 kumatea/tensorflow:latest AS base

# RUN apt-get update && apt-get install -y \
#     zip\
#     unzip
RUN pip install notebook
RUN python3 -m pip install tensorflow

COPY . .



RUN echo "./nbook_tf_run.sh"
