FROM jupyter/minimal-notebook:aarch64-latest AS base
# Todo set up tensorflow for arm
#FROM BASE as TENSORFLOW
#get tensorflow set up for arm host platform (linux/arm64/v8)

FROM base AS serial

#install serial support
RUN pip install platformio
RUN pip install pyserial

FROM serial AS gpio
#todo
RUN echo "serial stage"
FROM gpio AS camera
#todo
RUN echo "GPIO Stage"
FROM camera AS notebook
RUN echo "Notebook stage"
#todo: consider copying only what you need
COPY . .
RUN echo "Running testseiral.ipynb"

#CMD ["python", "-u", "TestSerial.py"]
#CMD ["/bin/bash"]
#CMD ["./nbook_tsnb_run.sh"]