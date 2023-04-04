FROM python:3.10
USER root

RUN apt-get update

RUN mkdir -p /root/src
COPY requirements.txt /root/src
WORKDIR /root/src

RUN pip install --upgrade pip
RUN pip install setuptools
RUN pip install -r requirements.txt