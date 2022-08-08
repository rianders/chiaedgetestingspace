FROM jupyter/minimal-notebook:python-3.9.2 as notebook
FROM notebook AS tflow

#RUN curl -LO https://github.com/KumaTea/tensorflow-aarch64/releases/download/v2.4/tensorflow-2.4.1-cp39-cp39-linux_aarch64.whl
#--platform=linux/arm64/v8 
#COPY tensorflow-2.4.1-cp39-cp39-linux_aarch64.whl .
#RUN pip install tensorflow-2.4.1-cp39-cp39-linux_aarch64.whl
RUN python3 -m pip install tensorflow



RUN echo "./nbook_tf_run.sh"
