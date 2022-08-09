FROM jupyter/minimal-notebook:aarch64-latest AS base
# Todo set up tensorflow for arm
#FROM BASE as TENSORFLOW
#get tensorflow set up for arm host platform (linux/arm64/v8)

FROM base AS serial

#install serial support
RUN echo "installing pandas, numpy, matplotlib, plotly, RPi.GPIO, pyserial , and python"
# RUN apt-get update && apt-get install -y \
#     python3

RUN pip install pandas numpy matplotlib plotly RPi.GPIO pyserial
RUN echo "installation done"
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
CMD ["./nbook_tsnb_run.sh"]