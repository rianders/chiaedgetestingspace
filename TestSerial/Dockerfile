
#FROM jupyter/minimal-notebook:aarch64-latest AS base
# Todo set up tensorflow for arm
#FROM BASE as TENSORFLOW
#get tensorflow set up for arm host platform (linux/arm64/v8)
FROM  arm64v8/python:3.9.2 As base

FROM base AS serial

#todo
RUN apt-get update && apt-get install -y \
    python3

RUN echo "installing pandas, numpy, matplotlib, plotly, RPi.GPIO, and pyserial"
RUN pip install pandas numpy matplotlib plotly RPi.GPIO pyserial
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