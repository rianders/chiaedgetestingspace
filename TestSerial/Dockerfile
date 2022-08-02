#FROM  arm64v8/python As base
#FROM  arm64v8/python:3.10 As base
FROM  python:3.10 As base

ENV PYTHONUNBUFFERED=1


 
RUN pip install platformio
RUN echo "pio check for serial ports"

FROM pio as serial

RUN pip install pyserial
ADD TestSerial.py .
COPY . .
RUN echo "Running TestSeiral.py"

#CMD ["python", "-u", "TestSerial.py"]
#CMD ["/bin/bash"]
CMD ["./python_ts_run.sh"]
#CMD ["./run_docker.sh"]a