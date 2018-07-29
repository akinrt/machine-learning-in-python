FROM python:3.7

MAINTAINER akinrt

ENV PACKAGES \
    vim \
    libfreetype6-dev \
    libatlas-base-dev \
    liblapack-dev \
    gfortran

RUN apt-get update && apt-get install -y $PACKAGES

ENV PIP_PACKAGES \
    numpy \
    scipy \
    matplotlib \
    scikit-learn

RUN pip install $PIP_PACKAGES

RUN apt-get clean