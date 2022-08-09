FROM jupyter/minimal-notebook:python-3.9.2 AS base
# Todo set up tensorflow for arm
#FROM BASE as TENSORFLOW
#get tensorflow set up for arm host platform (linux/arm64/v8)
COPY . .

FROM base AS tensor

RUN echo "tensorflow stage"
RUN echo "install tensorflow"
RUN pip install tensorflow-aarch64 -f https://tf.kmtea.eu/whl/stable.html
RUN echo "install done"

FROM tensor AS serial

RUN echo "serial stage"
RUN echo "installing platformio and pyserial"
RUN pip install platformio, pyserial
RUN echo "installation done"
#install serial support

FROM serial AS gpio
#todo
RUN echo "GPIO stage"
RUN echo "installing pandas, numpy, matplotlib, plotly, RPi.GPIO, pyserial , and python"
RUN apt-get update && apt-get install -y \
    python3

RUN pip install pandas numpy matplotlib plotly RPi.GPIO pyserial
RUN echo "installation done"
FROM gpio AS camera
#todo
RUN echo "camera Stage"

FROM camera AS notebook
RUN echo "Notebook stage"
#todo: consider copying only what you need
COPY . .

#CMD ["python", "-u", "TestSerial.py"]
#CMD ["/bin/bash"]
#CMD ["./nbook_tsnb_run.sh"]
CMD ["./nbook_phtnb_run.sh"]