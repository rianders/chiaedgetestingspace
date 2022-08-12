FROM balenalib/raspberrypi4-64-python:3.9 As base

RUN apt-get update -y && apt-get install -y \
     gcc libhdf5-dev vim linux-libc-dev python3-dev

#FROM balenalib/aarch64-ubuntu-python:3.9.10-hirsute As base


#RUN install_packages wget git notebook

#RUN [ "cross-build-start" ]


# RUN echo "upgrade pip"
#RUN pip install --upgrade pip
# RUN echo "upgrade done"

RUN pip install notebook
RUN pip install pandas numpy matplotlib plotly

RUN echo "install tensorflow"
RUN pip3 install tensorflow-aarch64 -f https://tf.kmtea.eu/whl/stable.html
RUN echo "install done"


#RUN [ "cross-build-end" ]

COPY testserial.ipynb .

RUN echo "Running testseiral.ipynb"


# FROM  python:3.9.2 As base

# RUN pip install notebook

# RUN echo "install tensorflow"
# RUN pip install tensorflow-aarch64 -f https://tf.kmtea.eu/whl/stable.html
# RUN echo "install done"

# FROM base AS serial

# RUN echo "installing pandas, numpy, matplotlib, plotly, RPi.GPIO, pyserial , and python"

# RUN pip install pandas numpy matplotlib plotly RPi.GPIO pyserial

# COPY . .

# RUN echo "Running testseiral.ipynb"

# CMD ["./nbook_tf_run.sh"]