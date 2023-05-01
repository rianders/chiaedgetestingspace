
#FROM jupyter/minimal-notebook:aarch64-latest AS base
# Todo set up tensorflow for arm
#FROM BASE as TENSORFLOW
#get tensorflow set up for arm host platform (linux/arm64/v8)
FROM python:3.9.16-slim-buster AS base

FROM base AS serial

RUN echo "installing pandas, numpy, matplotlib, plotly, RPi.GPIO, and pyserial"
RUN pip install pandas 
RUN pip install numpy 
RUN pip install matplotlib
RUN pip install 
RUN pip install
RUN pip install 
RUN pip installplotly 
RUN pip install RPi.GPIO 
RUN pip install pyserial
RUN echo "installation done"

# RUN echo "installing requests"
# RUN pip install requests
# RUN echo "installation done"

# RUN echo "installing pio"
# RUN pip3 install pio
# RUN echo "installation done"

#todo: consider copying only what you need
COPY . .
RUN echo "./python_ts_run.sh"

#CMD ["python", "-u", "TestSerial.py"]
#CMD ["/bin/bash"]
#CMD ["./nbook_tsnb_run.sh"]
CMD ["./python_ts_run.sh"] 
