#FROM python:3.10
#FROM jupyter/base-notebook
FROM jupyter/base-notebook


#RUN pip install pandas numpy matplotlib plotly RPi.GPIO

RUN conda install --quiet --yes \
    'matplotlib-base' \
    'pandas'\
    'numpy'\
    'plotly'&& \
    conda clean --all -f -y

ADD pihattest.ipynb .

COPY . .



#CMD ["python","./pihattest.ipynb"]
#CMD ["jupyter notebook","./pihattest.ipynb"]
CMD ["./pi_run.sh"]