FROM --platform=linux/arm64/v8 kumatea/tensorflow:2.4.1-py39 AS tflow

#FROM tflow AS python3.9

#RUN  python3 -m pip install python-dev-tools --user --upgrade

FROM --platform=linux/arm64/v8 jupyter/minimal-notebook:python-3.9.13 AS notebook

#RUN pip3 install notebook

FROM notebook AS base 



# RUN apt-get install -y libhdf5-dev libc-ares-dev ;ibeigen3-dev
# RUN pip3 install keras_applications==1.0.8 --no-deps
# RUN python3 -m pip install keras_preprocessing==1.1.0 --no-deps
# RUN python3 -m pip install h5py==2.9.0
# RUN apt-get install -y openmpi-bin libopenmpi-dev
# RUN apt-get install -y libatlas-base-dev
# RUN python3 -m pip install -U six wheel mock
# RUN wget -O tensorflow.zip https://github.com/tensorflow/tensorflow/archive/v2.8.0.zip

#
#RUN python3 -m pip install tensorflow

COPY . .



RUN echo "./nbook_tf_run.sh"
