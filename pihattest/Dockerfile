#FROM python:3.10
#FROM jupyter/base-notebook
#FROM jupyter/base-notebook
#FROM  arm64v8/python:3.10 As base
FROM  python:3.10 As base

RUN apt-get update

RUN apt install strace

RUN pip install pandas numpy matplotlib plotly RPi.GPIO 


    # RUN conda install --quiet --yes \
    #     'matplotlib-base' \
    #     'pandas'\
    #     'numpy'\
    #     'plotly'&& \
    #     conda clean --all -f -y

#RUN pip install matplotlib pandas numpy plotly

ADD pihattest.py .

#ADD pihattest.ipynb .

COPY . .



#CMD ["python","./pihattest.ipynb"]
#CMD ["jupyter notebook","./pihattest.ipynb"]
CMD ["./python_pht_run.sh"]